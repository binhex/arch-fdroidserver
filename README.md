**Application**

[F-Droid Server](https://f-droid.org/en/)

**Description**

F-Droid is an installable catalogue of FOSS (Free and Open Source Software) applications for the Android platform. The client makes it easy to browse, install, and keep track of updates on your device.

**Build notes**

Latest stable F-Droid Server release from Arch Linux AUR.

**Usage**
```
docker run -d \
    --name=<container name> \
    -v <path for config files>:/config \
    -v <path for data files>:/data \
    -v /etc/localtime:/etc/localtime:ro \
    -e UMASK=<umask for created files> \
    -e PUID=<uid for user> \
    -e PGID=<gid for user> \
    binhex/arch-fdroidserver
```

Please replace all user variables in the above command defined by <> with the correct values.

**Access application**

CLI only

**Example**
```
docker run -d \
    --name=fdroidserver \
    -v /apps/docker/fdroidserver:/config \
    -v /apps/docker/fdroidserver:/data \
    -v /etc/localtime:/etc/localtime:ro \
    -e UMASK=000 \
    -e PUID=0 \
    -e PGID=0 \
    binhex/arch-fdroidserver
```

**Notes**

User ID (PUID) and Group ID (PGID) can be found by issuing the following command for the user you want to run the container as:-

```
id <username>
```
___
If you appreciate my work, then please consider buying me a beer  :D

[![PayPal donation](https://www.paypal.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=MM5E27UX6AUU4)

[Documentation](https://github.com/binhex/documentation) | [Support forum](https://forums.lime-technology.com/topic/61433-support-binhex-jackett/)