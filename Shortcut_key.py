from tkinter import *
import datetime
class demo:
    def test(self,event):
        clock = Label(self.root, font=('times', 20, 'bold'), bg='snow')
        date1 = Label(self.root, font=('times', 15, 'bold'), bg='snow')
        clock.pack(fill=BOTH, expand=1)
        date1.pack(fill=BOTH, expand=1)

        def tick():
            now = datetime.datetime.now()
            time2 = str(now.strftime("%I:%M:%S %p"))
            time3 = str(now.strftime("%A,%d-%b-%y"))
            clock.config(text=time2)
            date1.config(text=time3)
            clock.after(200, tick)
        tick()
    # def des(self,event):
    #     self.root.destroy()
    def __init__(self):
        self.root=Tk()
        self.test("")
        self.root.bind('<Return>',self.test)
        self.root.bind('<F1>',self.test)
        self.root.bind('<M1-o>',self.test)
        self.root.bind('s',self.test)
        self.root.bind('<Shift-E>',self.test)
        self.root.bind('<M1-Shift-E>',self.test)
        self.root.bind('<Delete>',self.test)
        self.root.bind('<BackSpace>',self.test)
        # self.root.bind('<Alt-F4>',self.des)

        self.root.mainloop()
demo()