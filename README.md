Minimal website configuration for sparrow-data.org.
Uses [staticfloat/nginx-certbot](https://github.com/staticfloat/docker-nginx-certbot)
to manage LetsEncrypt ssl.

Has a webhook watcher to keep the documentation up-to-date when
updates are pushed to GitHub.

## How to run

- `make`: start the application and begin listening for events from
GitHub.
- `make rebuild`: force a re-download of the most recent image from
  the GitHub Package Repository.

## Dependencies

The documentation website currently contains links to test instances
of Sparrow (e.g. [this one for OSL](https://sparrow-data.org/labs/osl-demo))
that are packaged as separate projects. Once these examples are streamlined,
they may be integrated here as submodules.
