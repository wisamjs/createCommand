#Bash Function: Create

##What is it
create is a terminal command that creates 1 or more files from the command line and loads a template that you specify that is associated with the extension, into the file(s).

##How it works
When you use the command, the script will look at the templates folder and check to see what template files you have set, and what their extensions are. If a template file exists for the extension that you used, then that file will have the same text. If it doesn't exist, then a file will be created without a template.

##Install
###Basic Installation
Open terminal and type in the following:

	cd ~
	git clone https://github.com/wzaghal/createCommand.git
	cd createCommand
	./install.sh
	source ~/.bash_profile

You should now be able to use the create command in any directory.

###Advanced Installation
If you don't want the entire folder in your root directory and you want to seperate the templates folder and the create.sh file, then you can do this instead:

- Clone the repository
- Move the templates folder to wherever you'd like
- Move the create.sh file to wherever you'd like.
- The create.sh file uses a variable called template_dir to reference the template directory. Edit the file and make sure you use an absolute path to the templates directory.
- The install.sh file adds a line to your .bash_profile so that it reference create.sh Edit the install.sh file and make sure you use the absolute path to the create.sh file.
- Run the install.sh file:
		
		./install.sh

- Restart terminal, or run the following command:
		
		source ~/.bash_profile

##How to use

###Create a file
	create helloWorld.py

###Create a template
Create a file and save it in the templates folder, making sure to name the file template.[your-extension]

This is an example of an html template you might create. You would call this file template.html:

	<!-- This is an HTML template -->
	<!doctype html>
	<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Document</title>
	</head>
	<body>
		<h1>Title</h1>
	</body>
	</html>

Then simply type:

	create index.html
and you will find a file in your directory called index.html, which will have the entire html code above.

Other sample templates you might create:

###CSS - template.css
	/* This is a CSS template */
	*{
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	transition: 0.5s;
	}

	h1{
		font-size:35px;
	}

	body{
		margin: 0 auto;
		padding: 0;
	}

	p{
		color:#b2b2b2;
	}

###Bash - template.sh
	#!/bin/bash
	#author: name
	#date:
	#purpose:
	###############
