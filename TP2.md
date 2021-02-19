- Dockerfile
```
FROM alpine:3.13.2
ENV WORK_DIR=/project
WORKDIR ${WORK_DIR}
COPY hello.txt .
CMD ["cat", "hello.txt"]
```

- Contenu du fichier hello.txt
```
root@dockermachine:/home/gcp_poc_m2_gmail_com/TP2# cat hello.txt

hello world
```

- Build de l'image
```
root@dockermachine:/home/gcp_poc_m2_gmail_com/TP2# docker build . -t imgtest

Sending build context to Docker daemon  3.072kB
Step 1/5 : FROM alpine:3.13.2
 ---> 28f6e2705743
Step 2/5 : ENV WORK_DIR=/project
 ---> Using cache
 ---> 0aad1956bcf0
Step 3/5 : WORKDIR ${WORK_DIR}
 ---> Using cache
 ---> 01be3c406e6e
Step 4/5 : COPY hello.txt .
 ---> Using cache
 ---> 4dd5df2f28df
Step 5/5 : CMD ["cat", "hello.txt"]
 ---> Using cache
 ---> c0ed5c626b1a
Successfully built c0ed5c626b1a
Successfully tagged imgtest:latest
```

- Vérification
```
root@dockermachine:/home/gcp_poc_m2_gmail_com/TP2# docker images

REPOSITORY   TAG       IMAGE ID       CREATED          SIZE
imgtest      latest    c0ed5c626b1a   17 seconds ago   5.61MB
alpine       3.13.2    28f6e2705743   37 hours ago     5.61MB
```

- Lancement de l'image
```
root@dockermachine:/home/gcp_poc_m2_gmail_com/TP2# docker run imgtest

hello world
```