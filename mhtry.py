from tkinter import *
from reportlab.lib.pagesizes import A4
from reportlab.pdfgen import canvas
import subprocess
import random
from test import *
class demo:
    def submit(self):
        t=self.tf.get("1.0",END)
        tf = t.split("\n")
        print(tf)
        global count
        global remaining
        l = len(tf)
        for j in range(0, l - 1):
            splitter(tf[j])
            # print(p)
            # for j in range(0,len(p)):
            #     print(p[j])
        # x = str(random.randint(0, 100))
        # t = str("'a" + x + ".pdf'")
        # my_canvas = canvas.Canvas(t, pagesize=A4)
        # x = 240
        # y = 590
        # dis = self.tf_medicalboarddescription.get('1.0', END)
        # tf = dis.split('\n')
        # for i in range(0, len(tf) - 1):
        #     my_canvas.drawString(x, y, '> ')
        #     my_canvas.drawString(x + 20, y, tf[i])
        #     y = y - 10
        # subprocess.Popen([t], shell=True)


    def __init__(self):
        self.root=Tk()
        self.tf = Text(self.root, width=40, height=10)
        self.tf.pack()
        bt = Button(self.root, text='submit', command=self.submit)
        bt.pack()
        self.root.mainloop()

demo()