# Shell scripts for doing stuff

At the moment there are scripts to

* git_cleanup.sh - remove any local branches which have been merged into master
* eps2svg - convert an eps to a pdf, this just wraps ghostscript ps2pdf and pdf2svg

## Making scripts avaialble

To make scripts available update your `~/.bashrc` file to include the line

`export PATH=$PATH:~/<path to script dir>`

where path is the path to this directory. 
