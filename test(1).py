count=0
point=0
x=[]
def splitter(s):
    global point
    global count
    l=len(s)
    for i in range(0,l):
        if s[i]==" ":
            count=count+1
        if count==5:
            point=i
    x.append(s[0:point+1])
    remainingcount=count-5
    if remainingcount>=5:
        count=0
        splitter(s[point+2:l])
    else:
        x.append(s[point+2:l])
    return x

# splitter("the man was climbing upon a tree and fell down with a smash.driving long distances is good for health and makes us refresh our mind specially when we go out with friends.hello friends")