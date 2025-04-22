

![Task 2 Re-Work , Aliases](https://github.com/user-attachments/assets/4aab3c29-9323-4912-b745-d0f30c10e7dd)

In my HOMEFILES folder I created a ~/.bash_aliases file to store all my aliases into.
The screenshot shows a little handful of Aliases I have added. Credit goes to ChatGPT for help

![Task 2 Re-work  Verified   Copied](https://github.com/user-attachments/assets/82dc2ef1-cf22-4a78-a334-026fb686a963)

- source ~/.bash_aliases is the command used to make sure the aliases run smoothly.
This shows that the file that contains the ~/.bash_aliases was verified and i was able to copy it 




![Task 2 Re-work, Script](https://github.com/user-attachments/assets/889a45f6-2967-474d-b849-58b17d155335)

## The script safely installs your custom .bash_aliases file by:
- Backing up any existing .bash_aliases file in your home directory

- Creating a symbolic link (symlink) from your dotfiles repo to ~/.bash_aliases

- Reminding you to reload your shell environment so the changes take effect

## This Script checks:
- If a .bash_aliases file already exists and it's not a symbolic link (-L).
  
- Then it moves (backs up) the original to .bash_aliases.bak so it’s not lost



## After running the script:

 - ~/.bash_aliases now points to ~/dotfiles/homefiles/.bash_aliases
   
 - You can manage and version control it via your dotfiles repo
   
 - Your environment is consistent across systems that you upload it too.




Citations:

ChatGPT is what helped me to make a new script. 
When asking ChatGPT 
" Write a script that:
Optional pick one:
[if needed] outputs to user packages that need to be installed for your .bashrc file
AND
copies or symbolically links the .bash_aliases file in your dotfiles repository to your user's home directory
This needs to be over the ~/.bash_aliases so that it will back up any exisiting files, and create a sym link between the dotfiles repo and the ~/.bash_aliases"

It gave me the script output that I had used







