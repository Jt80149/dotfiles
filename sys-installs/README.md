



# Steps Followed:
1. Create the sys-installs folder:
mkdir -p ~/dotfiles/sys-installs


2. Save the script above to a file named install-aws-cli.sh in the sys-installs folder:
"nano ~/dotfiles/sys-installs/install-aws-cli.sh"


3. Make the script executable:
"chmod +x ~/dotfiles/sys-installs/install-aws-cli.sh"



---------------------------------------------------------------------------------------------------------------------------------------------------------------

# Script:
- This line of code starting off checks to see if the script is running as root, and checks the effective users id (EUID)
-
 if [ "$EUID" -ne 0 ]; then
  echo "This script requires sudo or root privileges. Please run as root."
  exit 1
fi


- This next line of code will confirm the the apt command is available on the system to download. If it is not found it will exit then prompt the user the apt package manager is required.
- 
if ! command -v apt &> /dev/null; then
  echo "This script requires the apt package manager. Please ensure apt is installed."
  exit 1
fi


- This line allows for the action to either proceed with y or exit with n.
- 
echo "This script will install the AWS Command Line Interface (CLI)."
read -p "Do you want to proceed? (y/n): " choice
if [[ "$choice" != "y" ]]; then
  echo "Installation aborted."
  exit 1
fi


- This line checks if the software is already installed or has any name issues and exits if something were to pop up.
- 
if command -v aws &> /dev/null; then
  echo "AWS CLI is already installed or the command name is taken. Installation aborted."
  exit 1
fi


- These couple lines of code will make it so the apt is silently installed
-
echo "Installing AWS CLI..."
apt update -y
apt install -y awscli


- This line of code will let the user know that the installation is installed successfully
-
echo "AWS CLI installation complete. You can run 'aws --version' to check the installation."






---------------------------------
# Works Cited: 

# Works Cited:
----------------------------------------------------------------------------------------------
# Description:
(When asked to do number 3 is it asking for the files in github and what they do or the stuff we added into sys-install?)
This folder contains scripts for installing various software packages on Ubuntu Linux. Each script checks for necessary conditions before proceeding with the installation to ensure a smooth and conflict-free setup. I used the AWS Command Line Interface (CLI) when doing the project

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
checks that the system package manager is apt (or apt is available on the system), otherwise it exits and prompts the user that this script uses the apt package manager
provides the user with information on what will be installed - allows the user to provide y for yes and proceeds or n for no and exits"

"How is the script supposed to look like? What are the right spots to put the commands in?"

-

For more information on AWS CLI, visit the [official AWS CLI documentation](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html




