# dotfiles  

# dotfiles task 1


# Vim Configuration

This folder contains the `.vimrc` file and setup script for configuring Vim with Vundle and various plugins.

## Plugins Included
- **jellybeans**: A color scheme for Vim.
- **vim-indent-guides**: Visualize indentation levels.
- **vim-fugitive**: A Git wrapper for Vim.
- **YouCompleteMe**: A code-completion engine.

## Setup Script
The `setup.sh` script performs the following actions:
- Copies the `.vimrc` file to the user's home directory.
- Installs Vundle if it is not already installed.
- Installs the plugins specified in the `.vimrc` file.

## Citations
- Vundle: [https://github.com/VundleVim/Vundle.vim](https://github.com/VundleVim/Vundle.vim)
- Plugins: Refer to the respective GitHub repositories for each plugin.
- Co-Pilot. The phrases that I used where to get help with finding different commands, and making sure I was doing the assignment correctly.





# dotfiles task 2 / homefiles

The Generative AI that was used was Copilot


I was curious and asked Co-pilot to list the aliases so I could copy and paste them into the .baschrc file. (It is pretty neat being able to shorten commands to make it easier to complete tasks. I did go thro>
I did have to ask Co-pilot for help getting the source new_bashrc to check for errors. When I tried to use the command (source ~/new_bashrc) it told me the file never existed. I asked co-pilot what needed to >
The last thing I did as I don't know all the commands i did ask co pilot how to copy files and it helped by spitting out the code to do so.


Prompts that were used in generative AI:

"What are some of the most useful aliases on these lists that would be most commanly used?" - (alias ll='ls -la') , (alias c='clear') - (30 more aliases)
(alias f='find . | grep') , (alias lt='ls --human-readable --size -1 -S --classify') - (70 More aliases)
(alias gs='git status') - (Awesome Bash Aliases)

After i did that i did go into the links to see if I could find them myself so i can be sure it wasn't just something AI was throwing at me.


For my script that prompt that was used was "symbolically link the .bashrc file in your dotfiles repository to the users home directory to remind the user to reload their environment (with source or by loggin>
Picture is included as i helped the AI by giving it different prompts and to complete the script and make sure it was getting done correctly (Hopefully)





