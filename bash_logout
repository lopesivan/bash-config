# ~/.bash_logout: executed by bash(1) when login shell exits.

# when leaving the console clear the screen to increase privacy

if [ "$SHLVL" = 1 ]; then
    [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
fi

   # SRC=/workspace
# TARGET=${HOME}/work
#
#if [ -d /workspace/.md ]; then
#    rsync -avz --delete "$SRC"/.md "$TARGET"/
#
## Explanation by SonicARG
#
## -a Do the sync preserving all filesystem attributes
#
## -v run verbosely
#
## -z compress the data during the sync (transport the data in compressed mode)
#
## --delete delete the files in target folder that do not exist in the source, /home/user/A: source folder, /home/user/B: target folder
#fi
#
# cp $SRC/.kanban.*  $TARGET/
