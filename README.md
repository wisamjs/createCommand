#Bash Function: Create

##What is it
'create' is a terminal command that creates 1 or more files from the command line and loads a template that you specify that is associated with the extension, into the file(s).

##How it works
When you use the command, the script will look at the templates folder and check to see what template files you have set, and what their extensions are. If a template file exists for the extension that you used, then that file will have the same text. If it doesn't exist, then a file will be created without a template.

##Install
Sea doctus dissentiet ei, eros vocent ex pro, pri ne munere populo. Vel cu consul everti ponderum.

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
