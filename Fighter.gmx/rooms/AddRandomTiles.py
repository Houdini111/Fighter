import sys
import os.path
import re
import random

try:
   input = raw_input
except NameError:
   pass


def try_convert(s):
   try:
      return int(s)   
   except ValueError:
      print "ERROR: Cannot convert string \"" + s + "\" to int"
      return -1

room = ""
tile = ""
start_x = -1
start_y = -1
x_count = -1
y_count = -1
tile_width = -1
tile_height = -1
tile_bg_width = -1
tile_bg_height = -1


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



finding = True
while finding:
   uIn = input("Please enter the name of the background that the tile is from: ").strip()
   tile = "";

   possibilities = [ "(.*?)\.background\.gmx", "(.*?).background", "(.*)" ]
   missing = [ "", ".gmx", ".background.gmx" ]


   i = 0
   while i < len(possibilities):
      find = re.search( re.compile(possibilities[i]), uIn)
      if find is not None:
         tile = str(find.group(1))+str(missing[i])
         break
      i = i+1
      
   if room is not "":
      curDir = os.path.dirname(os.path.realpath(__file__))
      parentDir = os.path.abspath(os.path.join(curDir , os.pardir))
      tile = parentDir + "/background/" + tile
      if not os.path.isfile(tile):
         print("Tile not found")
      else:
         print("Found tile")
         finding = False



with open(tile) as f:
   for line in f:
      find = re.search( re.compile("<tilewidth>(.*?)</tilewidth>"), line )
      if find is not None:
         tile_width = try_convert(find.group(1))
      find = re.search( re.compile("<tileheight>(.*?)</tileheight>"), line )
      if find is not None:
         tile_height = try_convert(find.group(1))
      find = re.search( re.compile("<width>(.*?)</width>"), line )
      if find is not None:
         tile_bg_width = try_convert(find.group(1))
      find = re.search( re.compile("<height>(.*?)</height>"), line )
      if find is not None:
         tile_bg_height = try_convert(find.group(1))
      
'''
finding = True
while finding:
   uIn = input("What is the tile width?: ").strip()
   try:
      uIn = int(uIn)
      if(uIn > 0):
         width = uIn
         finding = False
      else:
         print("Must be greater than 0")
   except ValueError:
      print("Invalid input")
print("Tile width is " + str(width))

finding = True
while finding:
   uIn = input("What is the tile height?: ").strip()
   try:
      uIn = int(uIn)
      if(uIn > 0):
         height = uIn
         finding = False
      else:
         print("Must be greater than 0")
   except ValueError:
      print("Invalid input")
print("Tile height is " + str(width))
'''

finding = True
while finding:
   uIn = input("What is the starting (left-most) X?: ").strip()
   try:
      uIn = int(uIn)
      if(uIn%tile_width == 0):
         x = uIn
         finding = False
      else:
         print("Invalid. Must be multiple of tile width (currently " + str(tile_width) + ")")
   except ValueError:
      print("Invalid input")
print("Starting tiling at X of " + str(x))

finding = True
while finding:
   uIn = input("What is the starting (upper-most) Y?: ").strip()
   try:
      uIn = int(uIn)
      if(uIn%tile_height == 0):
         y = uIn
         finding = False
      else:
         print("Invalid. Must be multiple of tile height (currently " + str(tile_height) + ")")
   except ValueError:
      print("Invalid input")
print("Starting tiling at Y of " + str(y))


finding = True
while finding:
   uIn = input("How many tiles to place in the X direction?: ").strip()
   try:
      uIn = int(uIn)
      if(uIn > 0):
         x_count = uIn
         finding = False
      else:
         print("Must be greater than 0")
   except ValueError:
      print("Invalid input")
print( str(x_count) + " tiles in the X direction")

finding = True
while finding:
   uIn = input("How many tiles to place in the Y direction?: ").strip()
   try:
      uIn = int(uIn)
      if(uIn > 0):
         y_count = uIn
         finding = False
      else:
         print("Must be greater than 0")
   except ValueError:
      print("Invalid input")
print( str(y_count) + " tiles in the Y direction")


tileFileName = tile.split('/')
tileFileName = tileFileName[ len(tileFileName)-1 ]
tileFileName = tileFileName.split('.')[0]


regex = re.compile("</tiles>")

new = ""

prev = ""
curr = ""
with open(room) as f:
   curr = f.readline()
   prev = curr

   f.seek(0)

   for line in f:
      prev = curr
      curr = line
      
      find = re.search( regex, line )
      if find is None:
         new += line
      else:
         before = find.group(0)

         go = True

         ID = ""
         name = ""
         
         find = re.search( re.compile("<tile(.*?)/>"), prev)
         if find is None:
            go = False
         else:
            a = re.search( re.compile('''id="(.*?)"'''), prev)
            if a is None:
               go = False
               print "ERROR FINDING ID"
            else:
               ID = a.group(0)
            a = re.search( re.compile('''name="(.*?)"'''), prev)
            if a is None:
               go = False
               print "ERROR FINDING NAME"
            else:
               name = a.group(0)

         ID = ID.split('"')[1]
         name = name.split('"')[1]
   
         #print ID
         #print name

         ID_NUM = -1
         NAME_NUM = -1
         
         try:
            ID_NUM = int(ID)
         except:
            print "ERROR CONVERTING ID"
            go = False

         try:
            NAME_NUM = int(name.split('_')[1], 16)
         except:
            print "ERROR CONVERTING NAME :\""+name+"\""
            go = False

         ID_NUM += 1
         NAME_NUM += 1

         
         newStuff = ""

         if go:
            for i in xrange(y_count):
               for j in xrange(x_count):

                  random_x = random.randint(0, ( tile_bg_width / tile_width )-1 )*tile_width
                  random_y = random.randint(0, ( tile_bg_height / tile_height )-1 )*tile_height
                  
                  p1 = '''<tile bgName="''' + tileFileName + '''" '''
                  p2 = '''x="''' + str(x+ (j*tile_width) ) + '''" '''
                  p3 = '''y="''' + str(y+ (i*tile_height) ) + '''" '''
                  p4 = '''w="''' + str(tile_width) + '''" '''
                  p5 = '''h="''' + str(tile_height) + '''" '''
                  p6 = '''xo="''' + str(  random_x  ) + '''" '''
                  p7 = '''yo="''' + str(  random_y  ) + '''" '''
                  p8 = '''id="''' + str( ID_NUM ) + '''" '''
                  ID_NUM += 1
                  p9 = '''name="inst_''' + str( NAME_NUM ) + '''" '''
                  NAME_NUM += 1
                  p10 = '''depth="1000000" locked="0" colour="4294967295" scaleX="1" scaleY="1"/>'''

                  final = "    " + p1 + p2 + p3 + p4 + p5 + p6 + p7 + p8 + p9 + p10 + "\n"

                  #print final

                  newStuff += final

            new += newStuff + before
         else:
            new += before

      #<tile bgName="tile_cobble" x="32" y="640" w="32" h="32" xo="0" yo="0" id="10000945"
      #name="inst_BB43ED61" depth="1000000" locked="0" colour="4294967295" scaleX="1" scaleY="1"/>
   
   #print(curr)
   

f = open(room, "w")
f.write(new)
f.close()

print "SUCCESS"

''' 
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
'''


        
