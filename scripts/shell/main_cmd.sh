#!/bin/sh

opt=0

while [ "$opt" -ne 8 ]
do

	printf "%b\n\n" "Main Menu:"

	printf "%b\n" "Select an option below."

	printf "%b\n" "1. MAC Address Changer"
	printf "%b\n" "2. Network Scanner"
	printf "%b\n" "3. Packet Sniffer"
	printf "%b\n" "4. File Interceptor"
	printf "%b\n" "5. Vulnerability Scanner"
	printf "%b\n" "6. Update Net-mon"
	printf "%b\n" "7. Help / Docs"
	printf "%b\n" "8. Exit"

	read opt

	case "$opt" in
		"1") printf "%s\n" "You chose MAC Address Changer"
		;;
		"2") printf "%s\n" "Network Scanner"
		;;
		"6") git fetch; git config pull.rebase false
		;;
		8) break
		;;
		*) printf "%s\n" "[-] ERROR: Unknown command"
		;;
	esac
  
done
