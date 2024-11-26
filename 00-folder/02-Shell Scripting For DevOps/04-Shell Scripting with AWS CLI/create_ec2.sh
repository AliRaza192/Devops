#!/bin/bash

#ye error handling ko sahi tarah dekhata hau 
# set -euo pipefail

# ye function check karay ga k AWS CLI hai ya nai agr nai hai to exit ho jay gaa
check_awscli() {
	if ! command -v aws &> /dev/null; then
		echo "AWS CLI is not installed. Please install it first. " > &2
		return 1
	fi
}


# foolback hai means agr AWS CLI nai hai to yahan se install karay gaa
install_awscli(){
	echo "Installing AWS CLI v2 on Linx...."

	# Download and install AWS CLI v2
	curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

	sudo apt-get install -y unzip &> /dev/null
	unzip -q awscliv2.zip
	sudo ./aws/install
	
	# Verify installation
	aws --version

	# Clean Up
	rm -rf awscliv2.zip ./aws
}

# EC2 instance bannay k bad uski state check karay gaa
waiting_for_instance(){
	local instance_id="$1"
	echo "Waiting for instance $instance_id to be in running state.."	
	
	while true; do 
		state=$(aws ec2 describe-instances --instance-ids "$instance_id" --query 'Reservations[0].Instance[0].State.Name' --output text )
	if [[ "$state" == "runnig" ]]; then
		echo "Instance $instance_id is now running."
		break
	fi
	sleep 10 
	
    done
}


# AWS CLI install honay k bad aik EC2 instance banaye ga
create_ec2_instance(){
	local ami_id="$1"
	local instance_type="$2"
	local key_name="$3"
	local subnet_id="$4"
	local security_group_ids="$5"
	local instance_name="$6"

	# Run AWS CLI command to create ES2 instance
	instance_id=$(aws ec2 run-instances \
		--image-id "$ami_id" \
		--instance-type "$instance_type" \
		--key-name "$key_name" \
		--subnet-id "$subnet_id" \
		--security-group-ids "$security_group_ids" \
		--tag-specifications "ResourceType=instance, Tags=[{Key=Name, Value=$instance_name}]" \
		
		--query 'Instance[0].InstanceId' \
		--output text
	)

	if [[ -z "$instance_id"]]; then
		echo "Failed to create EC2 instance." >&2
		exit 1

	fi

	echo "Instance $instace_id created successfully."

	# wait for the instance to be in runnig state
	wait_for_instance "$instance_id"
}


main(){
	
	if ! check_awscli ; then
	install_awscli || exit
	echo "Creating ES2 instance..."

	#Specify the parameters for creating thr ES2 instance
	AMI_ID=""
	INSTANCE_TYPE="t2.micro"
	KEY_NAME=""
	SUBNET_ID=""
	SECURITY_GROUP_IDS="" # add your security group IDs separeted by space
	INSTANCE_NAME=""

	# Call the function to create the EC2 instance
	create_ec2_instance "AMI_ID" "INSTANCE_TYPE" "KEY_NAME" "SUBNET_ID"
	"SECURITY_GROUP_IDS" "INSTANCE_NAME"
	
	echo "EC2 instance creation completed."
}

# $@ ka matlab hai k main function main kitnay b arguments pass kar sakty hai
main "$@"




