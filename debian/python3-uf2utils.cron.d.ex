#
# Regular cron jobs for the python3-uf2utils package.
#
0 4	* * *	root	[ -x /usr/bin/python3-uf2utils_maintenance ] && /usr/bin/python3-uf2utils_maintenance
