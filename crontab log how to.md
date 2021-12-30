You can create a cron.log file to contain just the CRON entries that show up in syslog. Note that CRON jobs will still show up in syslog if you follow the following directions.

Open the file

/etc/rsyslog.d/50-default.conf
Find the line that starts with:

#cron.*
uncomment that line, save the file, and restart rsyslog:

sudo service rsyslog restart
You should now see a cron log file here:

/var/log/cron.log
Cron activity will now be logged to this file (in addition to syslog).

Note that in cron.log you will see entries for when cron ran scripts in /etc/cron.hourly, cron.daily, etc. - e.g. something like:

Apr 12 14:17:01 cd CRON[14368]: (root) CMD (   cd / && run-parts --report /etc/cron.hourly)
However, you will not see more information about what scripts were actually ran inside /etc/cron.daily or /etc/cron.hourly, unless those scripts direct output to the cron.log (or perhaps to some other log file).

If you want to verify if a crontab is running and not have to search for it in cron.log or syslog, create a crontab that redirects output to a log file of your choice - something like:

01 14 * * * /home/joe/myscript >> /home/log/myscript.log 2>&1
This will redirect all standard output and errors that may be produced by the script that is run to the log file specified.