# Poor man's rc manager for Mac

## How it works

### Setup

In `.zshr` file, paste the following message

```sh
export DOTFILE_PATH=/Users/maxsoukharev/github/dotfile
# ...
source $DOTFILE_PATH/index.sh
```

`index.sh` will source all the plugins and private files.

### About Plugins

Plugins are modules of shell configuration files. E.g. lscolors will set file colors depending on their type when in `ls` command.

To include a plugin for sourcing, list the plugins by names and assign them to `plugins` variable.

```sh
export DOTFILE_PATH=/Users/maxsoukharev/github/dotfile
plugins=(prompt lscolors)
# ...
source $DOTFILE_PATH/index.sh
```

### About Private

All files inside private are sourced by default just as if they were plugins. The content of private is gitignored.

## Plugins

Stored in `./plugins` directory.

### prompt

`prompt` plugin allows you to compose custom prompt tokens by using a combination of standard prompt plugins and custom private prompt plugins.

Standard prompt plugins can be specified with `prompt_plugins` variable. Standard prompt plugins are stored in `./plugins/prompts`.

Custom prompt plugins can be specified with `custom_prompt_plugins` variable. Custom prompt plugins must be stored in `./private/prompts`.

```sh
export DOTFILE_PATH=/Users/maxsoukharev/github/dotfile
# ...
prompt_plugins=(git_branch virtualenv_py)
private_prompt_plugins=()

source $DOTFILE_PATH/index.sh
```
