---
layout: page
title: To do
permalink: /todo/
---

That is a list of some topics that I want to cover:

- Linux containers (lxc)

- Postgres streaming replication

- How to create a Scala project with Maven

- Configuring nginx as a SSL proxy

- Keeping Arch Linux up-to-date with Kalu

- Redirecting stdout and stderr

    ```sh
    exec 10>&1 20>&2
    exec 1> >(tr '[[:lower:]]' '[[:upper:]]') 2>&1

    # do something
    date

    exec 1>&10 2>&20
    ```

- Listing files that have been changed with pacman

    ```
    $ pacman -Qii | awk '/^MODIFIED/ {print $2}'
    ```

- Protecting SSH with fail2ban

    https://wiki.archlinux.org/index.php/Fail2ban

