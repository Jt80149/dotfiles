Works Cited:


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
- "give me another one"
When asked these
![another script](https://github.com/user-attachments/assets/332b378f-90c8-4450-a7d3-751229d05521)

![another script1](https://github.com/user-attachments/assets/1d639c5d-8ac1-47db-9aad-aa65dad0eb03)

# sys-installs



## Scripts
- **install_awscli.sh**: Installs AWS CLI and its dependencies.

## Citations
This script was generated using Microsoft Copilot, a conversational AI model based on the GPT-4 architecture. The prompt used for generating the script was:
"In your dotfiles repository, create a folder named sys-installs. Package installs..."

For more information on AWS CLI, visit the [official AWS CLI documentation](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html
