# LIST
#list data structure which can hold multiple values of mutiple types
list_of_cloud = ["aws", "gcp", "azure", "alibabacloud", "digital ocean"]
print(list_of_cloud)

# add new cloud in list 
# append to the end of list
list_of_cloud.append("oracle")
print(list_of_cloud)


# insert cloud at specific index
# insert(index, value)
list_of_cloud.insert(1, "IBM")
list_of_cloud.insert(2, "Heroku")
print(list_of_cloud)

#
print("length of list is: ", len(list_of_cloud))

# LOOPS
# for loop
# iteration of a list
# aik k bad aik line by line sari cheezo ko print karwaye gaa
for cloud in list_of_cloud:
    print(" ") # 4 speaces ko indentation kehtay hain
    print(cloud)


# range 
# range start se -1 tak print karwata hai , 1 se 10 print karwana hai to..
# 1, 11 likhna hoga 
for i in range(1,11):
    print(i)

#array data structure which can hold multiple values of same type