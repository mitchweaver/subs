# subs [![Build Status](https://api.travis-ci.org/mitchweaver/subs.svg?branch=master)](https://travis-ci.com/mitchweaver/subs)

Have a feed of your YouTube subscriptions. No Google account needed.

Select a choice with dmenu and view with mpv.

Written in POSIX sh.

deps: curl, mpv, dmenu

## About

I'm a fan of command line and "doing things yourself".  
I also don't like having a Google account, but still want to keep track of subscriptions.  
Thus [subs](http://github.com/mitchweaver/subs) was born.

![subs_dmenu](https://wvr.sh/u/tXCc.png)

## Environment

Create your `$SUBS_FILE`, as described below, and export this variable as its path.

Example, in `~/.profile`:

`export SUBS_FILE=/path/to/your/subs.txt`

Next set your `$SUBS_MENU_PROG` if desired, (ex: if you want to use rofi).  
By default the menu will be `dmenu -p Subs:`.

## Usage

First generate the links to the XML feeds of your subscriptions via `subs -g`.

Once this has completed, this needn't be done again unless you update your `$SUBS_FILE`.

Next, update your subs cache via `subs -u`. This will fetch any
changes from the feeds and store it back into the cache locally.
This way the cache only is updated when you choose to, rather than
redownloading them all every run.

When you're ready to view, just run `subs`.

## Subs File

The `$SUBS_FILE` file is a normal text file containing usernames of your subscriptions.  
These can be the username or the channel IDs.

Comments and blank lines are ignored.  
Here is a short example:

```
# Travel
UCXulruMI7BHj3kGyosNa0jA # Indigo Traveller
cmbroad44                # Abroad in Japan
# Misc
UCimiUgDLbi6P17BdaCZpVbg # exurb1a
Vsauce                   # Vsauce
UCF9cNYdVSYS_oha1eGzDTGQ # Goniloc
```

As you can see, some of these are usernames and some are channel IDs -- either work just fine.

## Daemonization

If you would like `subs` to run in the background and intermittently update the cache, you can
daemonize it with the `[-d]` flag.

## Safety

Every commit is [shellchecked](https://github.com/mitchweaver/subs/blob/master/.travis.yml) with travis.
