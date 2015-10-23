Pending posts
=============

Creating a Scala project with Maven
-----------------------------------

Configuring nginx as a SSL proxy
--------------------------------

Keeping Arch Linux up-to-date with Kalu
---------------------------------------

Redirecting stdout and stderr
-----------------------------

```sh
exec 10>&1 20>&2
exec 1> >(tr '[[:lower:]]' '[[:upper:]]') 2>&1

# do something
date

exec 1>&10 2>&20
```

My i3 session configuration
---------------------------

Describe some files:

- `~/.i3/*`
- `~/.bash_profile`
- `~/.xinitrc`

Python 2 and Python 3
---------------------

Describe imports that minimize differences between both versions.

Listing files that have been changed with pacman
------------------------------------------------

$ pacman -Qii | awk '/^MODIFIED/ {print $2}'

Protecting SSH with fail2ban
----------------------------

Ref. https://wiki.archlinux.org/index.php/Fail2ban

 - Hardening

/etc/fail2ban/action.d/autobot.conf
/etc/fail2ban/action.d/ufw-all.conf
/etc/fail2ban/jail.d/sshd-ufw.conf
/etc/fail2ban/fail2ban.conf

