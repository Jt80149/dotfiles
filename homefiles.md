
Edit your .bashrc file with:
Two useful aliases
"awesome" bash aliases
30 okay aliases
70 more aliases

- I ended up just going with editing the ~/bashrc file and added my aliases from there.

![part of task 1](https://github.com/user-attachments/assets/1586af98-03b3-4123-aee0-58cb8ab529ce)



Something cool from The Ultimate B.A. .bashrc file
Verify your added aliases / bash additions work - install additional packages if required
Copy your .bashrc file to your dotfiles repository in homefiles
Write a script that:
Optional, pick one:
[if needed] outputs to user packages that need to be installed for your .bashrc file
[if needed] checks if being run as sudo, installs additional packages needed for your .bashrc file
![scrpt](https://github.com/user-attachments/assets/27bc2252-128c-4239-a103-c4f8b5ff2080)
![set up](https://github.com/user-attachments/assets/022a7a99-3c84-4647-a474-09d5d1a2aaae)



symbolically links the .bashrc file in your dotfiles repository to your user's home directory
reminds the user to reload their environment (with source or by logging out and back on)
Add / copy the script to your dotfiles repository in homefiles




A recovery .bashrc file is here if you need it. While testing, maybe name yours new_bashrc and try loading it into your shell (source new_bashrc) to check for errors because having it be your only .bashrc
![bash](https://github.com/user-attachments/assets/54f9b696-7f75-44b5-8122-2c4653147fd3)









------------------------------------------------------





Citations: (also in my README.md section)

I was curious and asked Co-pilot to list the aliases so I could copy and paste them into the .baschrc file. (It is pretty neat being able to shorten commands to make it easier to complete tasks. I did go through the 100+ different aliases given just to make sure nothing was a copy or would mess with each other. I only ended up adding a handful out of the ones I seen.)

I did have to ask Co-pilot for help getting the source new_bashrc to check for errors. When I tried to use the command (source ~/new_bashrc) it told me the file never existed. I asked co-pilot what needed to  be done to achieve this in ubuntu and it told me that I also have to make the new baschrc file and copy that to the homefiles as well.

The last thing I did as I don't know all the commands i did ask co pilot how to copy files and it helped by spitting out the code to do so.






