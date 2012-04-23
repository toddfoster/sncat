sncat
=====

SimpleNotes cat: pull down notes from SimpleNotes for backup, further actions


-------------

Gets email, password, destdir from ~/.sncatrc with one per line: `email = my_email@suremail.info`

Fetches files from SimpleNote using supplied credentials. Saves them in
destdir.

If you delete a note and create a new one with the same name, behavior is
indeterminate on the following sync. Sorry. On subsequent sync's it should
be downloaded.

Begun 21 April 2012. Achieved desired minimum function 22 April 2012.
Further development isn't terribly likely.


Done
--------
- save credentials / config elsewhere
- save all files
- don't save first line (use as filename)
- don't save deleted notes
- check for minimum required options (email, password, destdir?)
- keep notes data; only update changed notes
- delete deleted notes: beware notes with same names but different keys!
- re-download missing files that aren't marked for deletion

TODO
-------
- handle collision between filenames deleted and created
    - wouldn't be an issue if keys were filenames; but less human friendly
- allow specification of alternate .sncatrc or override values via command line arguments
- support unicode in titles -> filenames
- verbose(debug)/silent modes?

Someday
--------
- two-way syncing

Credits
-------
- Starting point: http://www.leancrew.com/all-this/2010/01/exploring-the-simplenote-api/
  I completely relied on this to get what I wanted out of simplenote
- Similar idea to what I'm thinking, but in perl: http://ping13.net/hacks/snwatch/
- Another similar idea, also in perl: https://github.com/fletcher/SimplenoteSync
- Config parser lifted from: http://www.decalage.info/en/python/configparser

License
-------

You can use it in whatever without attribution. If you do, it's not my fault.

