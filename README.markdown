dotfiles-control
================

dotfiles-control is a tool to help you keep version control of your dot files
that live (i.e. `.bashrc`) in your home directory and to share them
between different machines.


How to Install
--------------

### First Time

Run

    bash <(curl https://raw.github.com/lucastorri/dotfiles-control/master/install)

It will prompt you for some git repo you want to save your files. For
instance, git@github.com:lucastorri/dotfiles.git (it must be an empty
repo).

It will also add the `dotfiles` command to your PATH (it will be added on
`.bashrc`). You might need to run `source ~/.bashrc` or reopen your
shell.

You are now ready to use it. You might also see that your previously
emtpy git repo has now some files.


### From existent install

If you run it before and already have some files under version control
using dotfiles-control, you can now use them in any other machine. In
the git repo that you saved them, you will find a REAME file that looks
like this:

    git@github.com:lucastorri/dotfiles.git
    bash < <(curl -s https://raw.github.com/lucastorri/dotfiles/master/install)

The first line tells you the git url being used. The second one is a
bash command that you can run to get you files in the new machine. Run
it, reload your shell session (reopen it or `source ~/.bashrc`) and you
are free to use your lovely files again.


How to Use
----------

### Adding Files

Add and save new files to version control with

    dotfiles add <file1> [file2 ... fileN]

### Saving Changes

If you modified any of your files, you can save the latest version to
your repo running

    dotfiles save

### Update files

Get the latest changes off your files from your git repo on

    dotfiles update

### Upgrade dotfiles

Get the latest version of dotfiles control by running

    dotfiles upgrade


How it Works
------------

Once you add a new file, it is moved to a hiden folder that is used by
dotfiles-control (~/.dotfiles). Then, a symbolic link is created,
"putting" the file back on your home folder. Version control is done
internally using git.
