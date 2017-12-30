Dotfiles
========

Dotfiles and shell scripts to set up my macOS laptop for development.

Install
-------

Download the script:

```sh
curl --remote-name https://raw.githubusercontent.com/AlessioRocco/dotfiles/master/bin/setup
```

Review the script (avoid running scripts you haven't read!):

```sh
less mac
```

Execute the downloaded script:

```sh
sh mac 2>&1 | tee ~/laptop.log
```

Optionally, review the log:

```sh
less ~/laptop.log
```

License
-------

Dotfiles is © 2011-2018 Alessio Rocco
It is free software,
and may be redistributed under the terms specified in the [LICENSE] file.

[LICENSE]: LICENSE
