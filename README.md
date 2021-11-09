# Shell scripts for doing stuff

At the moment there are scripts to

* git_cleanup.sh - remove any local branches which have been merged into master
* watchers.sh - Get the procs sorted by the number of inotify watchers
* eps2svg - convert an eps to a pdf, this just wraps ghostscript ps2pdf and pdf2svg
* vault-mrc - login to mrc-ide vault (requires GITHUB_TOKEN to be avaialble as env var) note this script must be called as `. vault-mrc` to force bash to execute it in the current shell, by default it will be executed in a new shell which has a copy to the parent's environment but no access to the parent process's environment. This is the same as calling `source vault-mrc`
* vault-vimc - login to VIMC vault (requires GITHUB_TOKEN to be available as env var)

## Making scripts avaialble

To make scripts available update your `~/.bashrc` file to include the line

`export PATH=$PATH:~/<path to script dir>`

where path is the path to this directory.

## Fix github repo stuff

https://gist.github.com/m14t/3056747#file-fix_github_https_repo-sh-L10 
