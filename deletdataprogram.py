from server import *
from tkinter import *
from tkinter.ttk import *
from tkinter.messagebox import *

class deletedata:

    def deletedataaction(self,number,name,date):
        dr1=connection()
        query="delete from patientdata where n_patient='"+name+"' and number='"+number+"' and adddate='"+date+"'"
        cr1 = dr1.conn.cursor()
        cr1.execute(query)
        dr1.conn.commit()
        showinfo('Message','Record Deleted Successfully!!!!')




