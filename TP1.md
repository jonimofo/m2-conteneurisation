- Créez un container docker basé sur l'image Alpine officiel en mode interactif

```
root@dockermachine:/home/gcp_poc_m2_gmail_com/TP2# docker container run -it alpine /bin/sh
```

- Sortez du shell du container pour revenir sur le shell de la machine hôte
```
root@dockermachine:/home/gcp_poc_m2_gmail_com/TP2# docker container run -it alpine /bin/sh
/ # exit

root@dockermachine:/home/gcp_poc_m2_gmail_com/TP2#
```

- Affichez la liste des containers présents sur la machine hôte (en trouvant la commande qui - fera en sorte que le container lancé pendant l'étape 1 soit présent dans la liste
```
root@dockermachine:/home/gcp_poc_m2_gmail_com/TP2# docker ps -a
CONTAINER ID   IMAGE     COMMAND           CREATED              STATUS                      PORTS     NAMES
4895f0ebeb01   alpine    "/bin/sh"         56 seconds ago       Exited (0) 31 seconds ago             sleepy_clarke
e384057aaf84   alpine    "/bin/bash"       About a minute ago   Created                               crazy_fermi
763d53d6a549   alpine    "exec -it bash"   2 minutes ago        Created                               naughty_snyder
15b2a5806602   alpine    "bash"            3 minutes ago        Created                               goofy_gould
b58e4d4c58c1   imgtest   "cat hello.txt"   13 minutes ago       Exited (0) 13 minutes ago             bold_spence
```

- Redémarrez le container que vous venez de quitter sans s'attacher au shell
```
root@dockermachine:/home/gcp_poc_m2_gmail_com/TP2# docker restart sleepy_clarke
sleepy_clarke
```

- Effectuez la commande "ls" sur le container
```
root@dockermachine:/home/gcp_poc_m2_gmail_com/TP2# docker ps
CONTAINER ID   IMAGE     COMMAND     CREATED         STATUS          PORTS     NAMES
4895f0ebeb01   alpine    "/bin/sh"   2 minutes ago   Up 49 seconds             sleepy_clarke

root@dockermachine:/home/gcp_poc_m2_gmail_com/TP2# docker exec sleepy_clarke ls
bin
dev
etc
home
lib
media
mnt
opt
proc
root
run
sbin
srv
sys
tmp
usr
var
```

- Arrêtez le container
```
root@dockermachine:/home/gcp_poc_m2_gmail_com/TP2# docker stop sleepy_clarke
sleepy_clarke
```

- Supprimez le container
```
root@dockermachine:/home/gcp_poc_m2_gmail_com/TP2# docker rm sleepy_clarke
sleepy_clarke
```

- Supprimez l'image alpine de votre ordinateur
```
root@dockermachine:/home/gcp_poc_m2_gmail_com/TP2# docker images
REPOSITORY   TAG       IMAGE ID       CREATED          SIZE
imgtest      latest    c0ed5c626b1a   21 minutes ago   5.61MB
alpine       3.13.2    28f6e2705743   37 hours ago     5.61MB

root@dockermachine:/home/gcp_poc_m2_gmail_com/TP2# docker rmi -f c0ed5c626b1a
Untagged: imgtest:latest
Deleted: sha256:c0ed5c626b1a846d2100eb47b820ff4aa5e851b16ae049a202124f043db8acf8
Deleted: sha256:4dd5df2f28df5d21a4fa2b43eef46697bd93579d08242f41eb6fa325509e90b7
Deleted: sha256:01be3c406e6e6869e0aa1964e045376dd36a7b291951aba586df8d7e9931acda
Deleted: sha256:0aad1956bcf068eb9b1abb19111cb279bc50cf7894d0b98f5c4d85fadd19d09e
```