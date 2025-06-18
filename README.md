A fork of https://github.com/stefanheule/zsh-llm-suggestions, specifically for [oh-my-zsh](http://github.com/ohmyzsh/ohmyzsh). Adds support for multiple models by wrapping [llm](https://github.com/simonw/llm).

# LLM-based command suggestions for oh-my-zsh

![Demo of zsh-llm-suggestions](https://github.com/stefanheule/zsh-llm-suggestions/blob/master/zsh-llm-suggestions.gif?raw=true)

`zsh` commands can be difficult to remember, but LLMs are great at turning
human descriptions of what to do into a command. Enter `zsh-llm-suggestions`:
You describe what you would like to do directly in your prompt, you hit a
keyboard shortcut of your choosing, and the LLM replaces your request with
the command.

Similarly, if you have a command that you don't understand, `zsh-llm-suggestions`
can query an LLM for you to explain that command. You can combine these, by
first generating a command from a human description, and then asking the LLM
to explain the command.

## Installation

Clone the repository:

```
git clone https://github.com/laszlovandenhoek/zsh-llm-suggestions.git ~/.oh-my-zsh/custom/plugins/zsh-llm-suggestions
```

Enable the plugin in `.zshrc` (add it to the list if you already have any):
```
plugins=(zsh-llm-suggestions)
```

Configure the hotkey in `.zshrc`:

```
bindkey '^o' zsh_llm_suggestions_llm # Ctrl + O to have llm suggest a command given a English description
bindkey '^p' zsh_llm_suggestions_llm_explain # Ctrl + P to have llm explain a command
```

Set up the `llm` tool according to its instructions at https://github.com/simonw/llm

## Usage

### LLM suggested commands

Type out what you'd like to do in English, then hit ctrl+P or ctrl+O (or whatever hotkey)
you configured. `zsh-llm-suggestions` will then query OpenAI or GitHub Copilot, and replace
the query with the command suggested.

If you don't like the suggestion and think the LLM can do better, just hit ctrl+P/O again,
and a new suggestion will be fetched.

### Explain commands using LLM

If you typed a command (or maybe the LLM generated one) that you don't understand, hit
ctrl+alt+O to have OpenAI explain the command in English, or hit ctrl+alt+P to have
GitHub Copilot explain it.

## Warning

There are some risks using `zsh-llm-suggestions`:
1. LLMs can suggest bad commands, it is up to you to make sure you
   are okay executing the commands.
2. The supported LLMs are not free, so you might incur a cost when using `zsh-llm-suggestions`.

