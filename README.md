# Dotfiles
Here is one of my first hacks at creating a proper bash dotfile. 
Included are several small optimizations for frequently used commands.
Additionaly, there are commands to help optimize your workflow for checking how often you run commands 
- thus allowing further optimization.

1. Enter `vi ~/.inputrc`, this will open the input controller file
2. Paste the following into the file:
    - ```bash
        "\e[A": history-search-backward
        "\e[B": history-search-forward
      ```
      This will allow you scroll through previous commands using the arrowkeys
    - If you prefer to use `Page Up/Page Down`, replace `\e[A` and `\e[B` with `\e[5~` and `\e[6~` respectively.