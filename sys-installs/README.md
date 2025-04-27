


# Steps Followed:


1. Create the sys-installs folder:
mkdir -p ~/dotfiles/sys-installs


3. Save the script above to a file named install-aws-cli.sh in the sys-installs folder:
"nano ~/dotfiles/sys-installs/install-aws-cli.sh"


4. Make the script executable:
"chmod +x ~/dotfiles/sys-installs/install-aws-cli.sh"

![1st part ](https://github.com/user-attachments/assets/3b7d4bb1-b2d3-4c03-bb6f-bcea989f7602)


![making the script executeable](https://github.com/user-attachments/assets/d993c84c-4cdc-4e03-b2d7-eed6e439f091)


---------------------------------------------------------------------------------------------------------------------------------------------------------------

# Script:
- This line of code starting off checks to see if the script is running as root, and checks the effective users id (EUID) a good sign to follow is if there is a 0. 0 is always root.

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
  

--------------------------------------


# Citations
The script was generated using Microsoft Copilot, a conversational AI model based on the GPT-4 architecture. The prompt used for generating the script was:
" checks the effective user id (EUID) - if running as root the script may proceed, otherwise it exits and prompts the user that this script requires sudo or root
checks that the system package manager is apt (or apt is available on the system), otherwise it exits and prompts the user that this script uses the apt package managerprovides the user with information on what will be installed - allows the user to provide y for yes and proceeds or n for no and exits"

"How is the script supposed to look like? What are the right spots to put the commands in?"






