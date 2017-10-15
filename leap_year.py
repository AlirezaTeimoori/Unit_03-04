#Created by: Alireza Teimoori
#Created on: 14 Oct 2017
#Created for: ICS3UR-1
#Lesson: Unit_3-04
#This program checks if user's entry (year) is a leap year or not

import ui



def check_button_touch_up_inside(sender):
    #Checks if the year is a leap year or not
    
    year = int(view['year_textfield'].text)
    
    if year > 0 :
        
        if year%100 == 0 :
            if year%400 == 0:
                view['answer_label'].text = str(year) + " is a Leap Year." 
            else:
                view['answer_label'].text = str(year) + " is not a Leap Year."
        elif year%4 == 0 :
            view['answer_label'].text = str(year) + " is a Leap Year."
        else:
            view['answer_label'].text = str(year) + " is not a Leap Year."
    else:
        view['answer_label'].text = "enter a number between 1 and 2017 for year" 


view = ui.load_view()
view.present('sheet')
