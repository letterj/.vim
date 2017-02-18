
## Harden vm

```
apt-get update
apt-get upgrade

apt-get install fail2ban

vim /etc/ssh/sshd_config
    PasswordAuthentication no
service ssh restart

apt-get install unattended-upgrades
vim /etc/apt/apt.conf.d/10periodic
    APT::Periodic::Update-Package-Lists "1";
    APT::Periodic::Download-Upgradeable-Packages "1";
    APT::Periodic::AutocleanInterval "7";
    APT::Periodic::Unattended-Upgrade "1";
vim /etc/apt/apt.conf.d/50unattended-upgrades
    Unattended-Upgrade::Allowed-Origins {
            "Ubuntu trusty-security";
    //      "Ubuntu trusty-updates";
    };

apt-get install logwatch
vim /etc/cron.daily/00logwatch
    /usr/sbin/logwatch --output mail --mailto letterj+logwatch@gmail.com --detail high
```


## Bash Function
```
HideBashComments() {
    egrep -v "^#"
}
