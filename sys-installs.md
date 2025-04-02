

![1st part ](https://github.com/user-attachments/assets/397888ad-8581-4d5f-bc5f-a8baa730a93b)
![script](https://github.com/user-attachments/assets/4a159cfa-cd75-4d45-a847-c89aa9ffb50f)



Script:
#!/bin/bash

# Check if the script is running as root
if [ "$EUID" -ne 0 ]; then
  echo "This script requires sudo or root privileges. Please run as root."
  exit 1
fi

# Check if apt is available on the system
if ! command -v apt &> /dev/null; then
  echo "This script requires the apt package manager. Please ensure apt is installed."
  exit 1
fi

# Inform the user about the installation
echo "This script will install the AWS Command Line Interface (CLI)."
read -p "Do you want to proceed? (y/n): " choice
if [[ "$choice" != "y" ]]; then
  echo "Installation aborted."
  exit 1
fi

# Check if AWS CLI is already installed
if command -v aws &> /dev/null; then
  echo "AWS CLI is already installed or the command name is taken. Installation aborted."
  exit 1
fi

# Install AWS CLI
echo "Installing AWS CLI..."
apt update -y
apt install -y awscli

# Confirm installation
echo "AWS CLI installation complete. You can run 'aws --version' to check the installation."

----------------------------



![making the script executeable](https://github.com/user-attachments/assets/130190c1-08cd-4c22-a808-1fd70a308c02)


Steps Followed:
Create the sys-installs folder:
mkdir -p ~/path/to/your/dotfiles/sys-installs


Save the script above to a file named install-aws-cli.sh in the sys-installs folder:
nano ~/path/to/your/dotfiles/sys-installs/install-aws-cli.sh


Make the script executable:
chmod +x ~/path/to/your/dotfiles/sys-installs/install-aws-cli.sh

---------------------------------
Works Cited:
"where do i go to add the script"   (because i wasnt logged into the ubuntu sever. I was still in powershell.)

"cd dotfiles/sys-installs is the path. How do i execute?" (Same thing)



"what would a script from AWS Command Line Interface (CLI) look like?"
"give me another one"


![errors](https://github.com/user-attachments/assets/c2a75057-be5e-4ce8-a733-6b2774400418)


