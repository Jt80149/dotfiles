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



 ## Instructors notes on things that were missed when doing Task 1:
- (-1) vimrc pathing error: ('~/some/path/here').  Missing vundle#end - COMPLETED
To fix this I had to go into the vundle and add the missing end that was not put into the code.
I went back through the .vimrc file and added the vundle#end to the script. I ran the script and it worked out well.
Pictures are added to show what it is supposed to look like now.

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











