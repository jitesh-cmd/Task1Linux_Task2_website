# Task1Linux
This is task 1 for xenonstack assignment

xample 1: Get CPU Information
./internsctl cpu

Example 2: Get Memory Information
./internsctl memory

Example 3: Create a New User
./internsctl user create john_doe
Example 4: List All Users
./internsctl user list

Example 5: List Users with Sudo Permissions
./internsctl user list --sudo-only

Example 6: Get File Information (All Details)
./internsctl file getinfo somefile.txt

Example 7: Get File Size Only
./internsctl file getinfo --size somefile.txt

Example 8: Get File Permissions Only
./internsctl file getinfo --permissions somefile.txt

Example 9: Get File Owner Only
./internsctl file getinfo --owner somefile.txt

Example 10: Get Last Modified Time Only
./internsctl file getinfo --last-modified somefile.txt

Example 11: Display Version
./internsctl --version

Example 12: Display Help
./internsctl --help
