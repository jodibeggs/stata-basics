*  note:  this is for use with Stata 15.1, earlier versions may behave slightly differently

*  change working directory to your relevant Stata directory for the project (so you dont have to keep specifying full paths)
*  in Windows, you can go to the desired folder in file explorer, right click, and choose "Copy address as text"
cd "C:\Path\Folder\SubFolder\YouGetTheIdea\StataStuff"

*  close any open log files, since you can't start logging unless the log file is closed
log close _all
*  open a log file to store your output (more user friendly than just reading it in the Stata output buffer)
set logtype text
log using "Log Files\template.txt", replace
*  ideally you would name this the same as yout script so they are easy to match to one another
*  note that it's helpful to have a "Log Files" folder- you have to create this yourself to not cause an error
*  this will overwrite the log file each time you run the script

clear all
*  it's helpful to start by clearing everything and loading what you want to use so that it's clear what data and such you are relying on

set more off
*  this is optional but will prevent you from having to respond to the "more" prompt in the Stata window
*  if you really want to use the more prompt, you can change this to "set more on", though this should be the default behavior

use "Data Files\mydata.dta"
*  note that it's helpful to have a "Data Files" folder, also don't forget to put your data files there

*  DO ALL OF YOUR FUN STATA STUFF IN HERE

beep
*  this is helpful particularly if your code takes a while to run since it tells you your code is done while you're browsing twitter

log close
*  close the log file so only stuff relating to this script goes in the log
