# fish-zmx

[fish-shell](https://github.com/fish-shell/fish-shell) completion for [zmx](https://github.com/neurosnap/zmx).

## Features

- Completes subcommands
- Completes existing sessions for `attach` and `kill` commands

## Installation

Install using [fisher](https://github.com/jorgebucaran/fisher):

```sh
fisher install shoriminimoe/fish-zmx
```

Install using [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish):

```sh
omf install shoriminimoe/fish-zmx
```

Manual install:

```sh
mkdir -p ~/.config/fish/functions
curl https://raw.githubusercontent.com/shoriminimoe/fish-zmx/main/completions/zmx.fish >~/.config/fish/completions/zmx.fish
```

## Usage

```console
$ zmx <tab>
attach                                        (Create or attach to a session)
detach  (Detach all clients from current session (ctrl+\ for current client))
help                                                      (Show help message)
kill                                (Kill a session and all attached clients)
list                                                   (List active sessions)
```

Live sessions are completed too:

```console
$ zmx attach <tab>
session1  (pid=26435 clients=0)
session2  (pid=26018 clients=0)
```
