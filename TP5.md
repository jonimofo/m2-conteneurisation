## Benjamin Giralt - M2 Cloud & Infra

- docker-compose.yml
```
version: "3.7"
services:
  test:
    image: jonimofo/imgtest:latest
    volumes:
      - $PWD/project:/project
    command: >
         sh -c 'echo Deuxieme ligne >> ./hello.txt && cat ./hello.txt'
```

- Lancement et constat du fichier modifié
```
root@dockermachine:/home/gcp_poc_m2_gmail_com/TP2# docker-compose up

Building with native build. Learn about native build in Compose here: https://docs.docker.com/go/compose-native-build/
Starting tp2_test_1 ... done
Attaching to tp2_test_1
test_1  | Hello world
test_1  | Deuxieme ligne
tp2_test_1 exited with code 0
```