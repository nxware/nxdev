# nxdev:ssh

Testcontainer für SSH

User: `root`

Passwort: `123456`


**Der Container ist nur für Testzwecke gedacht**

```
docker build . -t nxware/ssh
```

## Run

Portmapping

 - Host: 2222, Container 22 SSH
 - Host: 27070, Container 7070 NPY
 - Host: 28080, Container 8080  HTTP
 - Host: 20080, Container: 80  HTTP


```
docker run --rm -it -p 2222:22 -p 27070:7070 -p 28080:8080 -p 20080:80 nxware/ssh
```