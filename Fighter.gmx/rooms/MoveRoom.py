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

   p = re.compile("(.*?)\.room\.gmx")
   find = re.search(p, uIn)

   if not os.path.isfile(find+".room.gmx"):
      print("Room not found")
   else:
      print("Found room")
      room = uIn+".room.gmx"
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
      if uIn.isdigit():
         uIn = int(uIn)
         if uIn or uIn == 0:
            x = uIn
            finding = False
print("Moving x by " + str(x))


finding = True
while finding:
   uIn = input("Please enter the x amount to move (positive is to the right): ").strip()
   if uIn == "0":
      y = 0
      finding = False
   else:
      if uIn.isdigit():
         uIn = int(uIn)
         if uIn or uIn == 0:
            y = uIn
            finding = False
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



        
