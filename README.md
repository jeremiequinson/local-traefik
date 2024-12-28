# local-traefik

## Get started

1) Copy .env.dist file to .env file
```bash
$ cp .env.dist .env
```

2) Fill .env environment vars.

3) Edit your /etc/hosts and add a line for the domain used in "BASE_DOMAIN" env

Exemple for .env 
``` 
...
BASE_DOMAIN=mydomain.localhost
```

File /etc/hosts
``` 
...
127.0.0.1    mydomain.localhost
```

4) Run setup.sh

```bash
$ make setup
```

## Run project
Start project by running
```bash
$ make start
```

To check that everything is running, check https://traefik.${BASE_DOMAIN}/dashboard/

## Debug

In case of running issue, use 
```bash
make debug
```

