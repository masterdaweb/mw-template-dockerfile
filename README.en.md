# Dockerfile on Master da Web

An app with its own Dockerfile: what it builds is what runs.

| Service | What it runs |
| --- | --- |
| `web` | what the `Dockerfile` builds (here, nginx serving a static page) |

No language detection: the platform sees the `Dockerfile` at the root and uses it as it is. Two rules for any Dockerfile here: listen on the port in `$PORT`, and on `0.0.0.0`.

nginx fills in `$PORT` from `default.conf.template` as it starts, and answers in Portuguese or English as the browser prefers.

## Make it yours

1. In the console, open the project and follow **Your code**: copy this
   template to your GitHub and connect the copy to the project.
2. Change the `Dockerfile`, then push: every push deploys, with no downtime.

## Run it on your machine

```bash
docker build -t meu-app .
docker run -e PORT=8080 -p 8080:8080 meu-app
```

## Good to know

- The container's disk starts empty on every deploy: write what must last to Object Storage or a database.

*[Português](README.md)*
