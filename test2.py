from tkinter.ttk import *
from test import *
from tkinter import *
from reportlab.lib.pagesizes import A4
from reportlab.pdfgen import canvas
import subprocess
import random

class trial:
    def send(self):
        txt=self.txt.get("1.0",END)
        s = txt.split('.')
        for i in range(0,len(s)):
            data=splitter(s[i])
        print(data)
        # l=len(data)
        # newdata=""
        # for i in range(0,l):
        #     newdata=newdata+data[i]+"\n"
        # newdata=newdata.split('\n')
        # print(newdata)
        #use this list newdata

    def __init__(self):
        self.root=Tk()
        self.lb=Label(text="Enter text")
        self.txt=Text(height=10,width=50)
        self.bt=Button(text="submit",command=self.send)
        self.lb.pack()
        self.txt.pack()
        self.bt.pack()
        self.root.mainloop()

x=trial()