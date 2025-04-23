# Dotfiles Main README

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



 ## Instructors notes on things that were missed when doing Task 1: (Part of Task 4)
- (-1) vimrc pathing error: ('~/some/path/here').  Missing vundle#end - COMPLETED
To fix this I had to go into the vundle and add the missing end that was not put into the code.
I went back through the .vimrc file and added the vundle#end to the script. I ran the script and it worked out well.
Pictures are added to show what it is supposed to look like now.

It ended up improving it since the script never executed before. it does now.

![TASK 1 Re-work](https://github.com/user-attachments/assets/c0499df8-f6c2-4084-9734-599de46da67b)

![TASK 1 Re-work 1](https://github.com/user-attachments/assets/14d89ae4-8cff-4aca-8b83-f2700025cdb4)

![TASK 1 Re-work 2](https://github.com/user-attachments/assets/153f1c63-780d-4918-826a-ee6db643f701)


 # Vim Configuration

 This folder contains the configuration files for Vim.

 ## Citations
 - Vundle: VundleVim/Vundle.vim
 - Jellybeans color scheme: nanotech/jellybeans.vim
 - Vim improvement plugins:
     - Indent guides: nathanaelkane/vim-indent-guides
     - Fugitive: tpope/vim-fugitive
     - YouCompleteMe: ycm-core/YouCompleteMe
--------------------------------------------------------
--------------------------------------------------------
--------------------------------------------------------




## Dotfiles Task 2 / Homefiles



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










## Instructor notes on things that were missed & could be improved in Task 2:

- (-1) no bashrc or bash_aliases file in repo

- (-1) no script in repo

------------------------------------------------------------------------------------------------------------- 
## Dotfiles Task 3 / sys-installs

![1st part ](https://github.com/user-attachments/assets/3b7d4bb1-b2d3-4c03-bb6f-bcea989f7602)


![making the script executeable](https://github.com/user-attachments/assets/d993c84c-4cdc-4e03-b2d7-eed6e439f091)

# Steps Followed:


1. Create the sys-installs folder:
mkdir -p ~/dotfiles/sys-installs


3. Save the script above to a file named install-aws-cli.sh in the sys-installs folder:
"nano ~/dotfiles/sys-installs/install-aws-cli.sh"


4. Make the script executable:
"chmod +x ~/dotfiles/sys-installs/install-aws-cli.sh"



---------------------------------------------------------------------------------------------------------------------------------------------------------------

# Script:
- This line of code starting off checks to see if the script is running as root, and checks the effective users id (EUID)

 if [ "$EUID" -ne 0 ]; then
  echo "This script requires sudo or root privileges. Please run as root."
  exit 1
fi


- This next line of code will confirm the the apt command is available on the system to download. If it is not found it will exit then prompt the user the apt package manager is required.
  
if ! command -v apt &> /dev/null; then
  echo "This script requires the apt package manager. Please ensure apt is installed."
  exit 1
fi


- This line allows for the action to either proceed with y or exit with n.
  
echo "This script will install the AWS Command Line Interface (CLI)."
read -p "Do you want to proceed? (y/n): " choice
if [[ "$choice" != "y" ]]; then
  echo "Installation aborted."
  exit 1
fi


- This line checks if the software is already installed or has any name issues and exits if something were to pop up.
  
if command -v aws &> /dev/null; then
  echo "AWS CLI is already installed or the command name is taken. Installation aborted."
  exit 1
fi


- These couple lines of code will make it so the apt is silently installed

echo "Installing AWS CLI..."
apt update -y
apt install -y awscli


- This line of code will let the user know that the installation is installed successfully

echo "AWS CLI installation complete. You can run 'aws --version' to check the installation."



![script](https://github.com/user-attachments/assets/01f889e4-ffc0-442d-8e94-cf6b77ff424f)



---------------------------------
# Works Cited: 


# Description:
- This folder contains scripts for installing various software packages on Ubuntu Linux. Each script checks for necessary conditions before proceeding with the installation to ensure a smooth and conflict-free setup. I used the AWS Command Line Interface (CLI) when doing the project.

- This is the same link provided from the task three assignment. Here I was able to learn a little more about how the Command Line Interface operates and what it's used for. The AWS CLI provides direct access to public API's(Apllication Programming Interface) with AWS Services.(https://docs.aws.amazon.com/cli/), (https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html)



"what commands need to be used to add a script"   
1.cd ~/path/to/your/dotfiles
2. mkdir -p sys-installs
3. nano sys-installs/install-aws-cli.sh
Copy and paste the script I provided earlier into the install-aws-cli.sh file.
Save and exit the editor (in nano, you can do this by pressing Ctrl+X, then Y, and Enter).
Make the script executable:
4. chmod +x sys-installs/install-aws-cli.sh

"cd dotfiles/sys-installs is the path. How do i execute?"
1. Navigation - "cd ~/dotfiles/sys-installs"
2. Run the Script -  "sudo ./install-aws-cli.sh"

"Will the script run Silently?"
Co-pilot answered yes and continued to elaborate by saying the -y flag with the sudo apt install command will automatcially assume the correct answer to be Yes

---------------------------------------------------------------------------------------------------------------
(I asked it these because I didn't realize I wasn't on the ubuntu server. )
![errors](https://github.com/user-attachments/assets/c2a75057-be5e-4ce8-a733-6b2774400418)

- "what would a script from AWS Command Line Interface (CLI) look like?"
When asked this because AWS Command Line Interface (CLI) is the script I wanted to create. 
  
- "give me another one"
When asked this it gave me two different versions or ways of how to do the script. It gave me one for Anisble


------------
#Script for Anisble

# Check if running as root
if [ "$EUID" -ne 0 ]; then
  echo "This script requires sudo or root privileges. Please run as root."
  exit 1
fi

# Check if apt is available
if ! command -v apt &> /dev/null; then
  echo "This script requires the apt package manager. Please ensure apt is installed."
  exit 1
fi

# Provide information on what will be installed
echo "This script will install Ansible and its dependencies."
read -p "Do you want to proceed? (y/n): " choice
if [[ "$choice" != "y" ]]; then
  echo "Installation aborted."
  exit 1
fi

# Check if Ansible is already installed
if command -v ansible &> /dev/null; then
  echo "Ansible is already installed. Exiting to prevent name conflict."
  exit 1
fi

# Silently install Ansible
echo "Installing Ansible..."
sudo apt update
sudo apt install -y ansible

# Prompt the user that install is complete
echo "Ansible installation complete. You can run 'ansible --version' to check the installation."

# End of script











# Citations
The script was generated using Microsoft Copilot, a conversational AI model based on the GPT-4 architecture. The prompt used for generating the script was:
" checks the effective user id (EUID) - if running as root the script may proceed, otherwise it exits and prompts the user that this script requires sudo or root
checks that the system package manager is apt (or apt is available on the system), otherwise it exits and prompts the user that this script uses the apt package managerprovides the user with information on what will be installed - allows the user to provide y for yes and proceeds or n for no and exits"

"How is the script supposed to look like? What are the right spots to put the commands in?"


## Instructor notes on things that were missed with Task 3:


-----------------------------------------
-----------------------------------------
-----------------------------------------

In the README.md file of your dotfiles repository, detail and summarize this repository's contents:
Useful minimum details:
What this dotfiles collection contains
How to clone / utilize the dotfiles in this repo
may point to task specific README's for additional details
Retrospective notes of desired improvements either bulleted in README or added as Issues in repository



## Dotfiles Task 4: Details and Summarization of Repositorys contents.
Description:

🧠 Why Use Dotfiles?
Managing your configuration in a dotfiles repo lets you:

Easily sync your environment across machines

Version control your setup with Git

Quickly recover or reinstall your preferred setup




### 1. **Clone the Repository**
Task 2 - (homefiles)
Task 3 - (sys-install)

git clone https://github.com/YOUR_GITHUB_USERNAME/dotfiles.git ~/dotfiles

Here is a list of notes that I have created and used through the issue tab.
I made these notes and improvements by the instructors notes given on feedback from Task 1-3 submissions.

## Task List for Dotfiles tasks 1
 

- [x]  vimrc pathing error: ('~/some/path/here').  Missing vundle#end

## Re-work & Improvements for Dotfiles Task 2

- [x] Re-work files so there is an appropriate README.md, script file, ~/.bash_aliases

- [x] Re-write Task 2 README.md so it makes sense.

- [x] Fix Citations

- [x] Create new bashrc file/ bash_aliases file in repo

- [x] Include Script into repo



## Re-Work & Improvments to Dotfiles Task 3

- [ ]  Re-work Task 3 verbage. Allow clarity in the documentation.
- [ ]  Explain better detail. What does it do?







