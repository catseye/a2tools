#!/bin/csh
# Modify these five lines as appropriate for your system (if necessary):

set BINDIR = /usr/local/bin
set MANDIR = /usr/local/man
umask 22
chmod 644 a2tools.6
gcc -DUNIX a2tools.c -o a2tools

if ( $? ) exit 1

cp -i a2tools $BINDIR

if ( -e $MANDIR/man6/a2tools.6 ) exit 0

cp a2tools.6 $MANDIR/man6

cd $BINDIR
ln -s a2tools a2ls
ln -s a2tools a2in
ln -s a2tools a2out
ln -s a2tools a2rm

cd $MANDIR/man6
ln -s a2tools.6 a2ls.6
ln -s a2tools.6 a2in.6
ln -s a2tools.6 a2out.6
ln -s a2tools.6 a2rm.6
