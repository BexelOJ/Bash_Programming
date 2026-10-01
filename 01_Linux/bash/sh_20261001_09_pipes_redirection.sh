#!/bin/bash

# ---------------------------------------------------
# 09_pipes_redirection.sh
# Bash Pipes and Redirection
# ---------------------------------------------------

echo "=============================================="
echo "        BASH PIPES AND REDIRECTION"
echo "=============================================="


# ---------------------------------------------------
# 1. Output redirection
# ---------------------------------------------------
echo
echo "----------------------------------------------"
echo "1. Output Redirection"
echo "----------------------------"

echo "Hello Bexel" > output.txt

echo "Created output.txt"

cat output.txt


# ---------------------------------------------------
# 2. Append redirection
# ---------------------------------------------------
echo
echo "----------------------------------------------"
echo "2. Append Redirection"
echo "----------------------------"

echo "Second line" >> output.txt

cat output.txt


# ---------------------------------------------------
# 3. Input redirection
# ---------------------------------------------------
echo
echo "----------------------------------------------"
echo "3. Input Redirection"
echo "----------------------------"

wc -l < output.txt


# ---------------------------------------------------
# 4. Pipe
# ---------------------------------------------------
echo
echo "----------------------------------------------"
echo "4. Pipe"
echo "----------------------------"

ls /etc | head


# ---------------------------------------------------
# 5. Multiple pipes
# ---------------------------------------------------
echo
echo "----------------------------------------------"
echo "5. Multiple Pipes"
echo "----------------------------"

ls /etc | grep "conf" | head


# ---------------------------------------------------
# 6. Count lines
# ---------------------------------------------------
echo
echo "----------------------------------------------"
echo "6. Count Lines"
echo "----------------------------"

ls /etc | wc -l


# ---------------------------------------------------
# 7. Redirect standard error
# ---------------------------------------------------
echo
echo "----------------------------------------------"
echo "7. Standard Error Redirection"
echo "----------------------------"

ls /directory_that_does_not_exist 2> error.txt

echo "Error saved to error.txt"

cat error.txt


# ---------------------------------------------------
# 8. Redirect output and error
# ---------------------------------------------------
echo
echo "----------------------------------------------"
echo "8. Output and Error Redirection"
echo "----------------------------"

ls /tmp /directory_that_does_not_exist > result.txt 2> error.txt

echo "Standard output:"
cat result.txt

echo
echo "Standard error:"
cat error.txt


# ---------------------------------------------------
# 9. Redirect output and error together
# ---------------------------------------------------
echo
echo "----------------------------------------------"
echo "9. Redirect Output and Error Together"
echo "----------------------------"

ls /tmp /directory_that_does_not_exist > combined.txt 2>&1

cat combined.txt


# ---------------------------------------------------
# 10. /dev/null
# ---------------------------------------------------
echo
echo "----------------------------------------------"
echo "10. /dev/null"
echo "----------------------------"

ls /directory_that_does_not_exist > /dev/null 2>&1

echo "Error was discarded"


# ---------------------------------------------------
# 11. tee command
# ---------------------------------------------------
echo
echo "----------------------------------------------"
echo "11. tee Command"
echo "----------------------------"

echo "Hello from tee" | tee tee_output.txt

echo
echo "Contents of tee_output.txt:"
cat tee_output.txt


# ---------------------------------------------------
# 12. Command substitution
# ---------------------------------------------------
echo
echo "----------------------------------------------"
echo "12. Command Substitution"
echo "----------------------------"

files=$(ls /etc | head -5)

echo "$files"


# ---------------------------------------------------
# Cleanup
# ---------------------------------------------------

rm -f output.txt
rm -f error.txt
rm -f result.txt
rm -f combined.txt
rm -f tee_output.txt


# ---------------------------------------------------
# End
# ---------------------------------------------------
echo
echo
echo "=============================================="
echo "     PIPES AND REDIRECTION DEMO COMPLETED"
echo "=============================================="



