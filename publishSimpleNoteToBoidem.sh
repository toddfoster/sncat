#!/usr/bin/env bash

SRC="/home/whereMySimpleNotesAre"
DEST="/home/whereMyRepoIs"

# Update notes
/home/foster/bin/sncat

# Update repo
cd $DEST
git pull

# Copy relevant notes into repo
cd $SRC
for I in boidem.*
do
    # Use the line below to select relevant files from all the SimpleNote notes.
	# TODO: How to select by tags?
	NAME=`expr $I : 'boidem.\(.*\)'`
	echo "Found $I -> $NAME"

	# Skip title and first non-title line (blank introduced in notational velocity)
    # Copy them to the git repo
    tail -n+2 $I > $DEST/$NAME
done

# Push repo
cd $DEST
git ci -a -m "Auto import from SimpleNote"
# Uncomment the line below to go fully automatic! Then set up a cron job.
echo git push


