import sys
import os.path
import re

try:
   input = raw_input
except NameError:
   pass


room = ""
objects = False
tiles = False
x = 0
y = 0

finding = True
while finding:
   uIn = input("Please enter the room name: ").strip()
   room = "";

   possibilities = [ "(.*?)\.room\.gmx", "(.*?).room", "(.*)" ]
   missing = [ "", ".gmx", ".room.gmx" ]


   i = 0
   while i < len(possibilities):
      find = re.search( re.compile(possibilities[i]), uIn)
      if find is not None:
         room = str(find.group(1))+str(missing[i])
         break
      i = i+1
      
   if room is not "":
      if not os.path.isfile(room):
         print("Room not found")
      else:
         print("Found room")
         finding = False

   
#//////////
#//?ROOM CREATION CODE OPTION?
#//////////

finding = True
while finding:
   uIn = input("Would you like to move objects made in the room editor? ").strip()
   if uIn in ("Yes", "yes", "y", "1"):
      objects = True
      finding = False
      print("Objects will be changed")
   elif uIn in ("No", "no", "n", "0"):
      objects = False
      finding = False
      print("Objects will not be changed")
   else:
      print("Did not understand input")


finding = True
while finding:
   uIn = input("Would you like to move tiles made in the room editor? ").strip()
   if uIn in ("Yes", "yes", "y", "1"):
      tiles = True
      finding = False
      print("Tiles will be changed")
   elif uIn in ("No", "no", "n", "0"):
      tiles = False
      finding = False
      print("Tiles will not be changed")
   else:
      print("Did not understand input")

if not (objects or tiles):
   print("NOT CHANGING ANYTHING")

finding = True
while finding:
   uIn = input("Please enter the x amount to move (positive is to the right): ").strip()
   if uIn == "0":
      x = 0
      finding = False
   else:
      try:
         uIn = int(uIn)
         x = uIn
         finding = False
      except ValueError:
         print("Invalid input")
print("Moving x by " + str(x))


finding = True
while finding:
   uIn = input("Please enter the y amount to move (positive is downwards): ").strip()
   if uIn == "0":
      y = 0
      finding = False
   else:
      try:
         uIn = int(uIn)
         y = uIn
         finding = False
      except ValueError:
         print("Invalid input")
print("Moving y by " + str(y))


filedataOUT = ""
finding = True
with open(room, 'r') as file:
   for line in file:
      nextLine = str(line)
      replacement = nextLine
      if objects:
         p = re.compile("<instances>")
         find = re.search(p, nextLine)
         if find:
            finding = False
         else:
            p = re.compile("</instances>")
            find = re.search(p, nextLine)
            if find:
               finding = True

      if tiles:
         p = re.compile("<tiles>")
         find = re.search(p, nextLine)
         if find:
            finding = False
         else:
            p = re.compile("</tiles>")
            find = re.search(p, nextLine)
            if find:
               finding = True

      if not finding:
         if "<tile " in nextLine or "<instance " in nextLine:
            p = re.compile("(x=\"([0-9]+)\") (y=\"([0-9]+))\"")
                
         else:
             p = ""

         if p != "":
            find = re.search(p, nextLine)
            newX = int(find.group(2))+int(x)
            newY = int(find.group(4))+int(y)
            xStr = str.replace(find.group(1), find.group(2), str(newX))
            yStr = str.replace(find.group(3), find.group(4), str(newY))
            replacement = str.replace(replacement, find.group(1), xStr)
            replacement = str.replace(replacement, find.group(3), yStr)

      filedataOUT += replacement

with open(room, 'w') as file:
   file.write(filedataOUT)

print("Successfully updated")



        
