

![1st part ](https://github.com/user-attachments/assets/397888ad-8581-4d5f-bc5f-a8baa730a93b)

![making the script executeable](https://github.com/user-attachments/assets/130190c1-08cd-4c22-a808-1fd70a308c02)

# Steps Followed:
1. Create the sys-installs folder:
mkdir -p ~/path/to/your/dotfiles/sys-installs


2. Save the script above to a file named install-aws-cli.sh in the sys-installs folder:
"nano ~/path/to/your/dotfiles/sys-installs/install-aws-cli.sh"


3. Make the script executable:
"chmod +x ~/path/to/your/dotfiles/sys-installs/install-aws-cli.sh"



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

![script](https://github.com/user-attachments/assets/4a159cfa-cd75-4d45-a847-c89aa9ffb50f)





---------------------------------
# Works Cited:

See sysinstallREADME.md in homefiles folder

