list=['apple','banana','cherry']
p=input("Enter the search element")
if p in list:
    print("yes")
else:
    print("no")
    temp=input("Would you like to add this item(y/n)")
    if(temp=='y'):
        list.append(p)
temp=input("Do you want to delete any item(y/n)")
if temp=='y':
    p=input("Enter the element to delete")
    if p in list:
        list.remove(p)
    else:
        print("Item not found")

list.clear()

print(list)