
object = {'a':{'b':{'c':'d'}}}
key = "a/b/c"
key= key.split("/")
temp=object
while len(key):
    temp=temp[key[0]]
    key.pop(0)

print(temp)

object = {'x':{'y':{'z':'a'}}}
key = "x/y/z"
key= key.split("/")
temp=object
while len(key):
    temp=temp[key[0]]
    key.pop(0)

print(temp)
        