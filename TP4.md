## Benjamin Giralt - M2 Cloud & Infra

- docker-compose.yml
```
root@dockermachine:/home/gcp_poc_m2_gmail_com/TP2# cat docker-compose.yml

version: "3.7"
services:
  test:
    image: alpine:3.13.2
    volumes:
      - $PWD/sharing:/sharing
    working_dir: /sharing
    entrypoint: sh -c 'echo Hello again  >> ./hello.txt && cat ./hello.txt'
```

- Fichier de base
```
root@dockermachine:/home/gcp_poc_m2_gmail_com/TP2# cat sharing/hello.txt

Hello world
```

- Lancement et constat du fichier modifié
```
root@dockermachine:/home/gcp_poc_m2_gmail_com/TP2# docker-compose up

Building with native build. Learn about native build in Compose here: https://docs.docker.com/go/compose-native-build/
Starting tp2_test_1 ... done
Attaching to tp2_test_1
test_1  | Hello world
test_1  | Hello again
tp2_test_1 exited with code 0
```