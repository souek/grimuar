# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.

#sed -i s/'[0-9]{10}'/$TERAZ/ /boot/grub/grub.conf
TERAZ=$(date +%s)
cp -R progress $TERAZ
tar -cJf "$TERAZ.tar.xz" $TERAZ
mv "$TERAZ.tar.xz" BACKUPPA
rm -R $TERAZ
