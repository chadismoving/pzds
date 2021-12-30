Execute steamcmd.sh to install steamcmd and install the PZDS
To update the PZDS in the future, execute below:
steamcmd +login <username> +app_update 380870 +validate +quit

Server config location:
{userprofile}/Zomboid/Server
Update all 3 files in this folder

Server RAM config location:
{userprofile}/.steam/steamapps/common/Project Zomboid Dedicated Server/ProjectZomboid64.json
Find and update "-Xmx3g"

Launch PZ server:
{userprofile}/.steam/steamapps/common/Project Zomboid Dedicated Server/start-server.sh

(Optional)Install Linux GSM:
Make sure the dependencises below installed
sudo dpkg --add-architecture i386; sudo apt update; sudo apt install curl wget file tar bzip2 gzip unzip bsdmainutils python3 util-linux ca-certificates binutils bc jq tmux netcat lib32gcc1 lib32stdc++6 libsdl2-2.0-0:i386 steamcmd default-jre rng-tools

wget -O linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh pzserver
./pzserver install


Ref:
https://developer.valvesoftware.com/wiki/SteamCMD