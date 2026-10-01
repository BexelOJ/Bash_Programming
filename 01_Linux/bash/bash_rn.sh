for file in 01_variables.sh 02_arguments.sh 03_read_input.sh \
            04_conditions.sh 05_loops.sh 06_functions.sh \
            07_arrays.sh 08_exit_codes.sh 09_pipes_redirection.sh \
            10_system_info.sh
do
    number="${file%%_*}"
    mv "$file" "sh_20261001_${number}_${file#*_}"
done