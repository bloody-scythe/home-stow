#!/usr/bin/fish

# Envinronment
	set -x PATH ~/.local/bin ~/go/bin ~/git/scripts $PATH
	set EDITOR vim
	set fish_greeting

# Python configs
	set -x PYTHONPATH $PYTHONPATH ~/git/python 
	set -x PYTHONSTARTUP ~/git/python/init.py

# Autostart
	fish_ssh_agent

