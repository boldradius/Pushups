Pushups
=======

Mac script that will remind you to do pushups every hour.

At Tindr, we use it to stay awake and keep the blood pumping!

http://tindr.co/automated-coach-to-let-your-employees-exercise-in-your-office

To execute every hour, set up a cron job:

> crontab -e

And then add the following line:

> 0 * * * * sh /directoryToYourFile/pushups.sh

Finally, if you want it to play music, edit the pushups.sh file to point to the mp3 of your choice. Epic music recommended - we use the classic Eye of the Tiger :)