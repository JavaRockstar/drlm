# file with help functions to implement.

function modclienthelp() {
	printf "\n"
	printf "\n"
	printf "$(tput bold)Usage:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "drlm modclient [OPTARGS]" "Change Client properties"
	printf "\n"
	printf "$(tput bold)Required Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-c|--client <CLI_NAME>" "Select Client to change by NAME"
	printf '%-25s %-45s\n' "-I|--id <CLI_ID>" "Select Client to change by ID"
	printf "\n"
	printf "$(tput bold)Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-i|--ipaddr <IP>" "Set new IP address to client"
	printf '%-25s %-45s\n' "-M|--macaddr <MAC>" "Set new MAC address to client"
	printf '%-25s %-45s\n' "-n|--netname <NET>" "Assign new NETWORK to client"
	printf '%-25s %-45s\n' "-h|--help" "Show this help"
	printf "\n"
	printf "$(tput bold)Examples:\n$(tput sgr0)"
	printf "drlm modclient -c|--client <cli_name> [ options ]\n"
	printf "	or\n"
	printf "drlm modclient -I|--id <cli_id> [ options ]\n"
	printf "\n"
}

function addclienthelp() {
	printf "\n"
	printf "\n"
	printf "$(tput bold)Usage:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "drlm addclient [OPTARGS]" "Add Client to database"
	printf "\n"
	printf "$(tput bold)Required Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-i|--ipaddr <IP>[/<CIDR>]" "Client IP address"
	printf "\n"
	printf "$(tput bold)Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-c|--client <CLI_NAME>" "Select Client name to add"
	printf '%-25s %-45s\n' "-M|--macaddr <MAC>" "Client MAC address"
	printf '%-25s %-45s\n' "-n|--netname <NET>" "Client NETWORK"
	printf "$(tput bold)InstallClient Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-I|--installclient" "Install ReaR and configure client to be managed by DRLM"
        printf '%-25s %-45s\n' "-u|--user <USER>" "User with admin privileges to install and configure software"
        printf '%-25s %-45s\n' "-U|--url_rear <URL_REAR>" "rpm or deb package for especific distro for example http://download.opensuse.org/repositories/Archiving:/Backup:/Rear/Debian_7.0/all/rear_1.17.2_all.deb"
	printf "\n"
	printf "$(tput bold)Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-h|--help" "Show this help"
	printf "\n"
	printf "$(tput bold)Examples:\n$(tput sgr0)"
	printf "drlm addclient -i|--ipaddr <cli_ip>/<cidr>\n"
	printf "	or\n"
	printf "drlm addclient -c|--client <cli_name> -i|--ipaddr <cli_ip> -M|--macaddr <cli_mac> -n|--netname <net_name>\n"
	printf "$(tput bold)Example with installClient:\n$(tput sgr0)"
	printf "drlm addclient -c|--client <cli_name> -i|--ipaddr <cli_ip> -M|--macaddr <cli_mac> -n|--netname <net_name> -I|--installclient -u|--user <user> -U|--url_rear <URL ReaR package>\n"
	printf "\n"
}

function addnetworkhelp() {
	printf "\n"
	printf "\n"
	printf "$(tput bold)Usage:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "drlm addnetwork [OPTARGS]" "Add Network to database"
	printf "\n"
	printf "$(tput bold)Required Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-n|--netname <NET_NAME>" "Select Network name to add"
	printf '%-25s %-45s\n' "-i|--ipaddr <IP>" "Network IP address"
	printf '%-25s %-45s\n' "-g|--gateway <GATEWAY>" "Network gateway address"
	printf '%-25s %-45s\n' "-m|--mask <MASK>" "Network mask"
	printf '%-25s %-45s\n' "-s|--server <SERVER>" "Network server address"
	printf "\n"
	printf "$(tput bold)Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-h|--help" "Show this help"
	printf "\n"
	printf "$(tput bold)Example:\n$(tput sgr0)"
	printf "drlm addnetwork -n|--netname <net_name> -i|--ipaddr <net_ip> -g|--gateway <net_gateway> -m|--mask <net_mask> -s|--server <net_server_ip>\n"
	printf "\n"
}

function bkpmgrhelp() {
	printf "\n"
	printf "\n"
	printf "$(tput bold)Usage:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "drlm bkpmgr [OPTARGS]" "Backup Manager"
	printf "\n"
	printf "$(tput bold)Required Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-c|--client <CLI_NAME>" "Select Client name to modify backup"
	printf '%-25s %-45s\n' "-I|--id <BKP_ID>" "Select Backup ID to modify"
	printf '%-25s %-45s\n' "-e|--enable" "Enable Backup"
	printf '%-25s %-45s\n' "-d|--disable" "Disable Backup"
	printf "\n"
	printf "$(tput bold)Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-P" "Set backup to persistent mode"
	printf '%-25s %-45s\n' "-h|--help" "Show this help"
	printf "\n"
	printf "$(tput bold)Examples:\n$(tput sgr0)"
	printf "drlm bkmgr -d -c|--client <cli_name> [ options ]\n"
	printf "	or\n"
	printf "drlm bkmgr -e -c|--client <cli_name> -I|--id <bkp_id> [ options ]\n"
	printf "\n"
}

function delclienthelp() {
	printf "\n"
	printf "\n"
	printf "$(tput bold)Usage:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "drlm delclient [OPTARGS]" "Delete Client fom Database"
	printf "\n"
	printf "$(tput bold)Required Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-c|--client <CLI_NAME>" "Select Client to delete by NAME"
	printf '%-25s %-45s\n' "-I|--id <CLI_ID>" "Select Client to delete by ID"
	printf "\n"
	printf "$(tput bold)Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-h|--help" "Show this help"
	printf "\n"
	printf "$(tput bold)Examples:\n$(tput sgr0)"
	printf "drlm delclient -c|--client <cli_name>\n"
	printf "	or\n"
	printf "drlm delclient -I|--id <cli_ID>\n"
	printf "\n"
}

function delnetworkhelp() {
	printf "\n"
	printf "\n"
	printf "$(tput bold)Usage:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "drlm delnetwork [OPTARGS]" "Delete Network fom Database"
	printf "\n"
	printf "$(tput bold)Required Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-n|--netname <NET_NAME>" "Select Network to delete by NAME"
	printf '%-25s %-45s\n' "-I|--id <NET_ID>" "Select Network to delete by ID"
	printf "\n"
	printf "$(tput bold)Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-h|--help" "Show this help"
	printf "\n"
	printf "$(tput bold)Examples:\n$(tput sgr0)"
	printf "drlm delnetwork -n|--netname <net_name>\n"
	printf "	or\n"
	printf "drlm delnetwork -I|--id <net_id>\n"
	printf "\n"
}

function instclienthelp() {
	printf "\n"
	printf "\n"
	printf "$(tput bold)Usage:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "drlm instclient [OPTARGS]" "Install REAR to a remote client"
	printf "\n"
	printf "$(tput bold)Required Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-c|--client <CLI_NAME>" "Select Client to install REAR by name"
	printf '%-25s %-45s\n' "-I|--id <CLI_ID>" "Select Client to intall REAR by ID"
	printf "\n"
	printf "$(tput bold)Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-u|--user <USER>" "User with admin privileges to install and configure software"
	printf '%-25s %-45s\n' "-U|--url_rear <URL_REAR>" "rpm or deb package for especific distro for example http://download.opensuse.org/repositories/Archiving:/Backup:/Rear/Debian_7.0/all/rear_1.17.2_all.deb"
	printf '%-25s %-45s\n' "-h|--help" "Show this help"
	printf "\n"
	printf "$(tput bold)Examples:\n$(tput sgr0)"
	printf "drlm instclient -c|--client <cli_name>\n"
	printf "	or\n"
	printf "drlm instclient -I|--id <cli_id> [ options ]\n"
	printf "\n"
}

function listbackuphelp() {
	printf "\n"
	printf "\n"
	printf "$(tput bold)Usage:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "drlm listbackup [OPTARGS]" "List DRLM database backups"
	printf "\n"
	printf "$(tput bold)Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-c|--client <CLI_NAME>" "Select Client to list its backups"
	printf '%-25s %-45s\n' "-A|--all" "List all backups"
	printf '%-25s %-45s\n' "-h|--help" "Show this help"
	printf "\n"
	printf "$(tput bold)Examples:\n$(tput sgr0)"
	printf "drlm listbackup -c|--client <cli_name>\n"
	printf "	or\n"
	printf "drlm listbackup -A|--all\n"
	printf "\n"
}

function listclienthelp() {
	printf "\n"
	printf "\n"
	printf "$(tput bold)Usage:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "drlm listclient [OPTARGS]" "List DRLM database clients"
	printf "\n"
	printf "$(tput bold)Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-c|--client <CLI_NAME>" "Select Client to list"
	printf '%-25s %-45s\n' "-A|--all" "List all clients"
	printf '%-25s %-45s\n' "-h|--help" "Show this help"
	printf "\n"
	printf "$(tput bold)Examples:\n$(tput sgr0)"
	printf "drlm listclient -c|--client <cli_name>\n"
	printf "	or\n"
	printf "drlm listclient -A|--all\n"
	printf "\n"
}

function listnetworkhelp() {
	printf "\n"
	printf "\n"
	printf "$(tput bold)Usage:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "drlm listnetwork [OPTARGS]" "List DRLM database networks"
	printf "\n"
	printf "$(tput bold)Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-n|--netname <NET_NAME>" "Select Network to list"
	printf '%-25s %-45s\n' "-A|--all" "List all networks"
	printf '%-25s %-45s\n' "-h|--help" "Show this help"
	printf "\n"
	printf "$(tput bold)Examples:\n$(tput sgr0)"
	printf "drlm listnetwork -n|--netname <net_name>\n"
	printf "	or\n"
	printf "drlm listnetwork -A|--all\n"
	printf "\n"
}

function modnetworkhelp() {
	printf "\n"
	printf "\n"
	printf "$(tput bold)Usage:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "drlm modnetwork [OPTARGS]" "Change Network properties"
	printf "\n"
	printf "$(tput bold)Required Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-n|--netname <NET_NAME>" "Select Network to change by NAME"
	printf '%-25s %-45s\n' "-I|--id <NET_ID>" "Select Network to change by ID"
	printf "\n"
	printf "$(tput bold)Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-i|--ipaddr <IP>" "Set new IP address to network"
	printf '%-25s %-45s\n' "-g|--gateway <GATEWAY>" "Set new GATEWAY address to network"
	printf '%-25s %-45s\n' "-m|--mask <MASK>" "Assign new MASK to network"
	printf '%-25s %-45s\n' "-s|--server <SERVER>" "Assign new SERVER to network"
	printf '%-25s %-45s\n' "-h|--help" "Show this help"
	printf "\n"
	printf "$(tput bold)Example:\n$(tput sgr0)"
	printf "drlm modnetwork -n|--netname <net_name> [ options ]\n"
	printf "	or\n"
	printf "drlm modnetwork -I|--id <net_id> [ options ]\n"
	printf "\n"
}

function delbackuphelp() {
	printf "\n"
	printf "\n"
	printf "$(tput bold)Usage:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "drlm delbackup [OPTARGS]" "Delete Backup(s) form DRLM"
	printf "\n"
	printf "$(tput bold)Required Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-c|--client <CLI_NAME>" "Select Client for backups deletion"
	printf '%-25s %-45s\n' "-I|--id <BKP_ID>" "Select Backup to delete by ID"
	printf '%-25s %-45s\n' "-A|--all" "Select all Backups for Client"
	printf "\n"
	printf "$(tput bold)Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-h|--help" "Show this help"
	printf "\n"
	printf "$(tput bold)Examples:\n$(tput sgr0)"
	printf "drlm delbackup -c|--client <CLI_NAME> -A|--all\n"
	printf "	or\n"
	printf "drlm delbackup -I|--id <BKP_ID>\n"
	printf "\n"
}

function runbackuphelp() {
	printf "\n"
	printf "\n"
	printf "$(tput bold)Usage:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "drlm runbackup [OPTARGS]" "Run remote client backup from DRLM"
	printf "\n"
	printf "$(tput bold)Required Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-c|--client <CLI_NAME>" "Select Client to run backup by name"
	printf '%-25s %-45s\n' "-I|--id <CLI_ID>" "Select Client to run backup by ID"
	printf "\n"
	printf "$(tput bold)Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-h|--help" "Show this help"
	printf "\n"
	printf "$(tput bold)Examples:\n$(tput sgr0)"
	printf "drlm runbackup -c|--client <cli_name>\n"
	printf "        or\n"
	printf "drlm runbackup -I|--id <cli_id>\n"
	printf "\n"
}

function deljobhelp() {
	printf "\n"
	printf "\n"
	printf "$(tput bold)Usage:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "drlm deljob [OPTARGS]" "Delete Jobs fom Database"
	printf "\n"
	printf "$(tput bold)Required Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-c|--client <CLI_NAME>" "Select Client to delete all it's jobs"
	printf '%-25s %-45s\n' "-J|--job_id <JOB_ID>" "Select Job to delete by ID"
	printf "\n"
	printf "$(tput bold)Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-h|--help" "Show this help"
	printf "\n"
	printf "$(tput bold)Examples:\n$(tput sgr0)"
	printf "drlm deljob -c|--client <cli_name>\n"
	printf "       	or\n"
	printf "drlm deljob -J|--job_id <job_ID>\n"
	printf "\n"
}

function addjobhelp() {
	printf "\n"
	printf "\n"
	printf "$(tput bold)Usage:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "drlm addjob [OPTARGS]" "Add Job to Database"
	printf "\n"
	printf "$(tput bold)Required Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-c|--client <CLI_NAME>" "Select Client name of this job"
	printf '%-25s %-45s\n' "-s|--start_date <DATE>" "Start date of the job"
	printf "\n"
	printf "$(tput bold)Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-e|--end_date <DATE>" "End date of the job"
	printf '%-25s %-45s\n' "-r|--repeat <REPEAT>" "Repeat schedule of the job"
	printf '%-25s %-45s\n' "-h|--help" "Show this help"
	printf "\n"
	printf "$(tput bold)Examples:\n$(tput sgr0)"
	printf "drlm addjob -c|--client <cli_name> -s|--start_date <s_date>\n"
	printf "             or\n"
	printf "drlm addjob -c|--client <cli_name> -s|--start_date <s_date> -e|--end_date <e_date> -r|--repeat <repeats>\n"
	printf "\n"
}

function listjobhelp() {
	printf "\n"
	printf "\n"
	printf "$(tput bold)Usage:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "drlm listjob [OPTARGS]" "List DRLM database jobs"
	printf "\n"
	printf "$(tput bold)Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-J|--job_id <JOB_ID>" "Select Job to list"
	printf '%-25s %-45s\n' "-c|--client <CLI_NAME>" "Select Client to list their jobs"
	printf '%-25s %-45s\n' "-A|--all" "List all jobs"
	printf '%-25s %-45s\n' "-h|--help" "Show this help"
	printf "\n"
	printf "$(tput bold)Examples:\n$(tput sgr0)"
	printf "drlm listjob -J|--job_id <job_id>\n"
	printf "             or\n"
	printf "drlm listjob -c|--client <cli_name>\n"
	printf "             or\n"
	printf "drlm listjob -A|--all\n"
	printf "\n"
}

function schedjobhelp() {
	printf "\n"
	printf "\n"
	printf "$(tput bold)Usage:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "drlm sched [OPTARGS]" "Control DRLM job scheduler"
	printf "\n"
	printf "$(tput bold)Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-e|--enable" "Enable DRLM job scheduler"
	printf '%-25s %-45s\n' "-d|--disable" "Disable DRLM job scheduler"
	printf '%-25s %-45s\n' "-r|--run" "Run planned jobs by date"
	printf '%-25s %-45s\n' "-h|--help" "Show this help"
	printf "\n"
	printf "$(tput bold)Examples:\n$(tput sgr0)"
	printf "drlm sched -e|--enable\n"
	printf "             or\n"
	printf "drlm sched -d|--disable\n"
	printf "             or\n"
	printf "drlm sched -r|--run\n"
	printf "\n"
}

function expbackuphelp() {
	printf "\n"
	printf "\n"
	printf "$(tput bold)Usage:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "drlm expbackup [OPTARGS]" "Export DRLM DR file"
	printf "\n"
	printf "$(tput bold)Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-I|--id <BKP_ID>" "Select Backup to export by ID"
	printf '%-25s %-45s\n' "-f|--file <FILE_NAME>" "Exportation filename"
	printf '%-25s %-45s\n' "-h|--help" "Show this help"
	printf "\n"
	printf "$(tput bold)Examples:\n$(tput sgr0)"
	printf "drlm expbackup -I|--id <BKP_ID> -f|--file <DESTINATION_FILE>\n"
	printf "\n"
}

function impbackuphelp() {
	printf "\n"
	printf "\n"
	printf "$(tput bold)Usage:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "drlm impbackup [OPTARGS]" "Export DRLM DR file"
	printf "\n"
	printf "$(tput bold)Options:\n$(tput sgr0)"
	printf '%-25s %-45s\n' "-c|--client <CLI_NAME>" "Select Client to import backup"
	printf '%-25s %-45s\n' "-f|--file <FILE_NAME>" "Importation filename"
	printf '%-25s %-45s\n' "-h|--help" "Show this help"
	printf "\n"
	printf "$(tput bold)Examples:\n$(tput sgr0)"
	printf "drlm impbackup -c|--client <CLI_NAME> -f|--file <FILE_NAME>\n"
	printf "\n"
}
