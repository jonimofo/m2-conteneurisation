## Benjamin Giralt - M2 Cloud & Infra

## Lien de rendu
[Mon image dans le Docker Hub](https://hub.docker.com/repository/docker/jonimofo/imgtest)

## Etapes réalisées
- Login au Docker Hub
```
root@dockermachine:/home/gcp_poc_m2_gmail_com/TP2# docker login --username=jonimofo

Password:
WARNING! Your password will be stored unencrypted in /root/.docker/config.json.
Configure a credential helper to remove this warning. See
https://docs.docker.com/engine/reference/commandline/login/#credentials-store

```

- Build de l'image avec les bons tags
```
root@dockermachine:/home/gcp_poc_m2_gmail_com/TP2# docker build -t jonimofo/imgtest .

Sending build context to Docker daemon  15.87kB
Step 1/5 : FROM alpine:3.13.2
 ---> 28f6e2705743
Step 2/5 : ENV WORK_DIR=/project
 ---> Using cache
 ---> 22b4b2a126cd
Step 3/5 : WORKDIR ${WORK_DIR}
 ---> Using cache
 ---> 23e0a534d742
Step 4/5 : COPY hello.txt .
 ---> Using cache
 ---> 60ed8747fe37
Step 5/5 : CMD ["cat", "hello.txt"]
 ---> Using cache
 ---> ff2097e4cde6
Successfully built ff2097e4cde6
Successfully tagged jonimofo/imgtest:latest

root@dockermachine:/home/gcp_poc_m2_gmail_com/TP2# docker run jonimofo/imgtest
hello world
```


```
root@dockermachine:/home/gcp_poc_m2_gmail_com/TP2# docker push jonimofo/imgtest

Using default tag: latest
The push refers to repository [docker.io/jonimofo/imgtest]
927da31ea28c: Pushed
4d242e708681: Pushed
cb381a32b229: Mounted from library/alpine
latest: digest: sha256:0dc3c7f3f96f8e29783a5ac1527e4ae8f1e3d48e30f29c55e8621447252b446d size: 942
```



