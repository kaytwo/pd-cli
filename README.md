# pd-cli

A `Dockerfile` to run the pipedream CLI. I wrote this so that I could use it from Windows using Docker for Windows.

Your config will be stored in a volume, thus it will persist. To perform authentication, you need to publish `http://localhost:11337`, e.g.

```
docker run -v apikey:/root/.config/pipedream -it -p 11337:11337 pipedream list
```

You shouldn't need to expose the port again after authenticating.