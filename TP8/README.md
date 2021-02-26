# Output TP8

```bash
root@dockermachine:/home/gcp_poc_m2_gmail_com/TP8# docker-compose run envtest env | grep MYSQL

Creating tp8_envtest_run ... done
MYSQL_ROOT_PASSWORD=value_dockerfile
MYSQL_PASSWORD=value_env_password
MYSQL_USER=value_env_user
MYSQL_DATABASE=value_dockercompose
```