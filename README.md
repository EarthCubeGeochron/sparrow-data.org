Minimal website configuration for sparrow-data.org.
Uses [staticfloat/nginx-certbot](https://github.com/staticfloat/docker-nginx-certbot)
to manage LetsEncrypt ssl.

Has a webhook watcher to keep the documentation up-to-date when
updates are pushed to GitHub.

Running `make` will start the application.
