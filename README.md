# Shell scripts for doing stuff

At the moment there are scripts to

* git_cleanup.sh - remove any local branches which have been merged into master
* eps2svg - convert an eps to a pdf, this just wraps ghostscript ps2pdf and pdf2svg
* vault-mrc - login to mrc-ide vault (requires GITHUB_TOKEN to be avaialble as env var)
* vault-vimc - login to VIMC vault (requires GITHUB_TOKEN to be available as env var)

## Making scripts avaialble

To make scripts available update your `~/.bashrc` file to include the line

`export PATH=$PATH:~/<path to script dir>`

where path is the path to this directory.

## Fix github repo stuff

https://gist.github.com/m14t/3056747#file-fix_github_https_repo-sh-L10 
