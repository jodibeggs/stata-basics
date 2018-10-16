*  change working directory to your relevant Stata directory for the project (so you dont have to keep specifying full paths)
*  in Windows, you can go to the desired folder in file explorer, right click, and choose "Copy address as text"
cd "C:\Path\Folder\SubFolder\YouGetTheIdea\StataStuff"

*  open a log file to store your output (more user friendly than just reading it in the Stata output buffer)
set logtype text
log using "Log Files\template.txt", replace
*  ideally you would name this the same as yout script so they are easy to match to one another
*  note that it's helpful to have a "Log Files" folder
*  this will overwrite the log file each time you run the script

set more off
*  this is optional but will prevent you from having to respond to the "more" prompt in the Stata window

clear
*  it's helpful to start by clearing everything and loading what you want to use so that it's clear what data you are relying on
use "Data Files\mydata.dta"
*  note that it's helpful to have a "Data Files" folder, also don't forget to put your data files there

*  DO ALL OF YOUR FUN STATA STUFF IN HERE

log close
*  note:  if your script quits in the middle due to error but has opened a log file, you'll have to run this command manually before you can run the script again
