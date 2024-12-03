# Chef WordStation installation guide and Commands

## **System Update and Software Installation**

1. **`sudo apt update`**  
   - **Purpose**: Updates the package list of the system to ensure it knows about the latest versions available for software.

2. **`sudo apt upgrade -y`**  
   - **Purpose**: Installs the updated versions of the software packages.  
   - **`-y` Flag**: Automatically confirms "yes" for all prompts.

3. **`wget` (Multiple instances used)**  
   - **Purpose**: Downloads files directly from a given URL. Used here to download Chef Workstation and Server packages.  
   - **Example**:  
     ```bash
     wget https://packages.chef.io/files/stable/chef-workstation/24.4.1064/ubuntu/20.04/chef-workstation_24.4.1064-1_amd64.deb
     ```

---

## **Chef Workstation Installation and Verification**

4. **`sudo dpkg -i chef-workstation_24.4.1064-1_amd64.deb`**  
   - **Purpose**: Installs the `.deb` file for Chef Workstation.

5. **`which chef`**  
   - **Purpose**: Verifies if the `chef` command is available in the system's PATH.

6. **`chef -v`**  
   - **Purpose**: Displays the installed version of Chef Workstation.

---

## **Cookbooks and Recipes Creation**

7. **`mkdir cookbooks`**  
   - **Purpose**: Creates a directory named `cookbooks` to organize your Chef cookbooks.

8. **`chef generate cookbook test-cookbook`**  
   - **Purpose**: Generates a new cookbook named `test-cookbook` with the default folder structure and boilerplate files.

9. **`chef generate recipe test-recipe`**  
   - **Purpose**: Creates a new recipe called `test-recipe` inside a specified cookbook.

10. **`vi test-cookbook/recipes/test-recipe.rb`**  
    - **Purpose**: Opens the recipe file for editing where you can add your configuration or commands.

11. **`chef exec ruby -c test-cookbook/recipes/test-recipe.rb`**  
    - **Purpose**: Checks the recipe file for any syntax errors.

---

## **Recipe Execution**

12. **`chef-client -zr "recipe[test-cookbook::test-recipe]"`**  
    - **Purpose**: Executes the specified recipe and applies its configurations.  
    - **`-zr`**: Runs Chef in zero-run mode, using only local files.

---

## **Apache Cookbook and Recipe**

13. **`chef generate cookbook apache-cookbook`**  
    - **Purpose**: Generates a new cookbook for Apache-related configurations.

14. **`chef generate recipe apache-recipe`**  
    - **Purpose**: Creates a recipe for managing the Apache server.

15. **`sudo systemctl stop nginx`**  
    - **Purpose**: Stops the Nginx service to avoid port conflicts with Apache.

16. **`sudo systemctl start apache2`**  
    - **Purpose**: Starts the Apache server.

17. **`sudo systemctl status apache2`**  
    - **Purpose**: Checks the current status of the Apache service.

---

## **Linux Cookbook**

18. **`chef generate cookbook linux-cookbook`**  
    - **Purpose**: Creates a new cookbook for Linux-specific automation tasks.

19. **`chef generate recipe new-recipe`**  
    - **Purpose**: Creates a new recipe for Linux configurations.

---

## **Ohai Commands**

20. **`ohai`**  
    - **Purpose**: Displays system information like hostname, IP address, CPU details, and more.

21. **`ohai memory/total`**  
    - **Purpose**: Displays the total memory of the system.

22. **`ohai cpu/0/mhz`**  
    - **Purpose**: Shows the clock speed of the first CPU.

---

## **Debugging and Syntax Checking**

23. **`chef exec ruby -c linux-cookbook/recipes/new-recipe.rb`**  
    - **Purpose**: Checks the syntax of a recipe file for errors.

24. **`cat /etc/group` and `cat /etc/passwd`**  
    - **Purpose**: Displays details about system users and groups.

---

## **Additional Commands**

25. **`tree`**  
    - **Purpose**: Displays the directory structure in a tree-like format.

26. **`clear`**  
    - **Purpose**: Clears the terminal screen.

27. **`pwd`**  
    - **Purpose**: Displays the current working directory.

---

# Runlist Commands Explained in Detail

