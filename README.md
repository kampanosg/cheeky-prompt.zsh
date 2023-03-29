# zsh-cheeky-prompt
A simple yet effective ~theme~ prompt for your PERiTerm. Developed specifically for my day-to-day use within Nando's as I couldn't find one covering all my needs. Hopefully, it can spice up your terminal as well 🌶️

The prompt features:
1. Chicken emoji (there isn't a Barci one yet)
1. Current working directory: Useful since most of the work is focused within the monorepo
1. Git information
1. Current Active GCP Cluster / GCP Project
1. Command input in new line

<p align="center">
    <img src="./screenshot.png" />
</p>

## Installation

### zsh / oh-my-zsh
1. Download the theme in your Downloads folder
```sh
$ git clone --quiet git@github.com:kampanosg/zsh-cheeky-prompt.git ~/Downloads

```
1. Move the theme in the `oh-my-zsh` custom themes directory
```sh
$ cp ~/Downloads/zsh-cheeky-prompt/cheekyprompt.zsh-theme ~/.oh-my-zsh/custom/themes
```

1. Activate the theme in your `.zhrc`
```sh
ZSH_THEME="cheekyprompt"
```

### Config (Optional)