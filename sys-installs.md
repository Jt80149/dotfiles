

![1st part ](https://github.com/user-attachments/assets/397888ad-8581-4d5f-bc5f-a8baa730a93b)
![script](https://github.com/user-attachments/assets/4a159cfa-cd75-4d45-a847-c89aa9ffb50f)



# Description:
This folder contains scripts for installing various software packages on Ubuntu Linux. Each script checks for necessary conditions before proceeding with the installation to ensure a smooth and conflict-free setup.

# Script:

if [ "$EUID" -ne 0 ]; then
  echo "This script requires sudo or root privileges. Please run as root."
  exit 1
fi

if ! command -v apt &> /dev/null; then
  echo "This script requires the apt package manager. Please ensure apt is installed."
  exit 1
fi

echo "This script will install the AWS Command Line Interface (CLI)."
read -p "Do you want to proceed? (y/n): " choice
if [[ "$choice" != "y" ]]; then
  echo "Installation aborted."
  exit 1
fi

if command -v aws &> /dev/null; then
  echo "AWS CLI is already installed or the command name is taken. Installation aborted."
  exit 1
fi

echo "Installing AWS CLI..."
apt update -y
apt install -y awscli

echo "AWS CLI installation complete. You can run 'aws --version' to check the installation."


![making the script executeable](https://github.com/user-attachments/assets/130190c1-08cd-4c22-a808-1fd70a308c02)


# Steps Followed:
1. Create the sys-installs folder:
mkdir -p ~/path/to/your/dotfiles/sys-installs


2. Save the script above to a file named install-aws-cli.sh in the sys-installs folder:
"nano ~/path/to/your/dotfiles/sys-installs/install-aws-cli.sh"


3. Make the script executable:
"chmod +x ~/path/to/your/dotfiles/sys-installs/install-aws-cli.sh"

---------------------------------
# Works Cited:

See sysinstallREADME.md in homefiles folder

