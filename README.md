sncat
=====

SimpleNotes cat: pull down notes from SimpleNotes for backup, further actions

-------------

begun 21 April 2012

Gets email, password from ~/.sncatrc with one per line: email = my_email@suremail.info

Done
--------
- save credentials / config elsewhere
- save all files
- don't save first line (use as filename)
- don't save deleted notes
- check for minimum requied options (email, password, destdir?)

TODO
-------
- keep notes data; only update changed notes
- after each run commit to git
- delete deleted notes
- Find a systematic way to designate notes with special scripts
   o update website based on changed textile sources
- allow specification of alternate .sncatrc or override values via command line arguments
- better structure: divide into functions
- support unicode in titles -> filenames

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

