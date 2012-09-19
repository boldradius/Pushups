#!/bin/bash

#Setup a volume of the music.
volume=1

#Generate a random number.
randomNum=`echo $RANDOM`;

#Use this range to raise the strength of push-up.
range=10;

#Generate numbers to do push-ups.
pushupNum=`expr $randomNum % $range`;
pushupNum=`expr $pushupNum + $range`;

#Ocassinally you need someone’s cheer.
cheer=`expr $randomNum % $pushupNum`;

#Wake your Mac up.
osascript -e “set volume ${volume}”;

#Victoria will tell you how many push-ups to do with pumping music.
say -v Victoria “Guys be ready to do ${pushupNum} pushups” &
afplay ~/Music/tiger_edit.mp3 &

#This is the part to count and tell you the number of push-ups.
counter=1;
sleep 10;
while [ $counter -le $pushupNum ]
do
if [ $counter -eq $cheer ]
then
say -v Victoria “Let’s Go.”;
fi
say -v Victoria $counter;
sleep 0.5;
let counter=counter+1;
done

#Once done, stop music.
killall afplay;
sleep 3;

#Victoria will give you a rewarding message for your achievement.
say -v Victoria “Good Job Gentlemen”;

#Let your Mac silent again since you will be back to work now.
osascript -e “set volume 0″;
