# Small container to prepare configuration volumes using file templates.

Execute this container with environment variables and two mounted volumes /source and /destination.

Source should be a directory with your templates. The directory structure and filenames should directly represent the expected configuration directory structure. Templates use the Jinja2 syntax and variable placeholders are replaced with environment values.

The destination directory will be populated using the pre-processed template files (using the exact paths and filenames from the source volume).

Destroy the container after executing to get rid of the environment variables cached in docker metadata.

```
$ docker volume create --name=my-config-volume
$ docker run -v $PATH\_TO\_MY\_CONFIG\_TEMPLATE\_DIR:/source -v my-config-volume:/destination -e MYVAR=myvalue -e MY\_OTHER\_VAR=myothervalue marsik/config-volume-creator
```

