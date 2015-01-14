

use ```boot2docker```

```
$ docker run -p :22 -d kazucocoa/docker_tdd /usr/sbin/sshd -D
```

```
$ export SUDO_PASSWORD="****"
```

- ~/.ssh/config
```
# for server spec test
Host 192.168.59.103
  HostName 192.168.59.103
  User kazucocoa
  Port 22
  UserKnownHostsFile /dev/null
  StrictHostKeyChecking no
  PasswordAuthentication no
  IdentityFile /Users/kazuaki/.ssh/id_rsa
  IdentitiesOnly yes
  LogLevel FATAL
```