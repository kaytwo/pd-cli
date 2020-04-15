# pd-cli

A `Dockerfile` to run the pipedream CLI. I wrote this so that I could use it from Windows using Docker for Windows.

If you store your config in a named volume, it will persist there and you won't need to reauthenticate each time you use the cli. To perform authentication, you need to publish `http://localhost:11337`, e.g.

```
docker run -v apikey:/root/.config/pipedream -it -p 11337:11337 kaytwo/pipedream list
```

You shouldn't need to expose the port again after authenticating. You can probably alias `docker run -v apikey:/root/.config/pipedream -it -p 11337:11337 kaytwo/pipedream` to `pd`, and everything will work as per the [cli docs](https://docs.pipedream.com/cli/reference/).