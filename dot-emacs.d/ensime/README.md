# ENSIME
the ENhanced Scala Interaction Mode for Emacs


## Features

- Highlight errors and warnings in your code buffers.
- Inspect the type of any expression.
- Browse packages
- Completion-on-demand for variables, methods, constructors, etc.
- Jump to symbol definitions.
- Automated Refactorings (rename, organize imports, extract method...)
- Source Formatting
- Finds sbt,Maven,Ivy dependencies
- Scala REPL
- Scala Debugger
- Embedded sbt shell


Check out this (rather old)[video](http://www.youtube.com/watch?v=A2Lai8IjLoY) or this [one](http://www.youtube.com/watch?v=v7-G6vD42z8) showcasing debugger support


## System Requirements

- Emacs 22 or later.
- Unix-like OS or Windows. Note that you'll need to use bin/server.bat on windows.
- Java Runtime
- Scala 2.8 compatible source and libraries. ENSIME is built against the 2.8 nightly Scala releases. 


## Documentation
- [The ENSIME User Manual](http://aemon.com/file_dump/ensime_manual.html)


## Quick Start

__1) Install scala-mode__

ENSIME is designed to compliment scala-mode (or any other scala language mode). scala-mode can be found in the Scala distribution under ./misc/scala-tool-support/emacs/. The rest of the steps assume your scala-mode is installed and working correctly.

__2) Install ensime-mode__

Download the ENSIME distribution from the github [downloads page](http://github.com/aemoncannon/ensime/downloads). Unpack the ENSIME distribution into a directory of your choosing. 

Add the following lines to your .emacs file:

    ;; Load the ensime lisp code...
    (add-to-list 'load-path "ENSIME_ROOT/elisp/")
    (require 'ensime)

    ;; This step causes the ensime-mode to be started whenever
    ;; scala-mode is started for a buffer. You may have to customize this step
    ;; if you're not using the standard scala mode.
    (add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

    ;; MINI HOWTO: 
    ;; Open .scala file. M-x ensime (once per project)


__3) Verify Permissions__

Verify that the startup script (usually bin/server.sh) has executable permissions.


__4) Create Project__

In Emacs, execute M-x ensime-config-gen. Follow directions in the mini-buffer to create a .ensime file for your project.. 


__5) Start ENSIME__

Execute M-x ensime
You only need to do this once per project.