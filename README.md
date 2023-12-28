# Task1Linux
Thus is task 1 for xenonstack assignment
xample 1: Get CPU Information
bash
Copy code
./internsctl cpu
Example 2: Get Memory Information
bash
Copy code
./internsctl memory
Example 3: Create a New User
bash
Copy code
./internsctl user create john_doe
Example 4: List All Users
bash
Copy code
./internsctl user list
Example 5: List Users with Sudo Permissions
bash
Copy code
./internsctl user list --sudo-only
Example 6: Get File Information (All Details)
bash
Copy code
./internsctl file getinfo somefile.txt
Example 7: Get File Size Only
bash
Copy code
./internsctl file getinfo --size somefile.txt
Example 8: Get File Permissions Only
bash
Copy code
./internsctl file getinfo --permissions somefile.txt
Example 9: Get File Owner Only
bash
Copy code
./internsctl file getinfo --owner somefile.txt
Example 10: Get Last Modified Time Only
bash
Copy code
./internsctl file getinfo --last-modified somefile.txt
Example 11: Display Version
bash
Copy code
./internsctl --version
Example 12: Display Help
bash
Copy code
./internsctl --help
