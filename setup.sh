cat < /dev/null > /dev/tcp/8.8.8.8/53
online=$?

if [ "$online" -ne 0 ]; then
  printf "%s\n" "[-] Make sure you're system is connected to the internet to complete the setup."
  break
  

printf "%s\n" "Please wait as the tools are setup on your system."

# download python scripts

git clone https://github.com/vinsdragonis/MAC-Address-Changer
git clone https://github.com/vinsdragonis/Network-Scanner.git

# setup the shell scripts and create executables

cd cripts/shell

chmod +x main_cmd.sh
