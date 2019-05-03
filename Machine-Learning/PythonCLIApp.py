import os
from time import sleep

# FUNCTIONS
def display_title_bar():

    os.system('clear')

    print("\t**********************************************")
    print("\t***  Greeter - Hello old and new friends!  ***")
    print("\t**********************************************")

def get_user_choice():

    print("\n[1] See a list of friends.")
    print("[2] Tell me about someone new.")
    print("[q] Quit.")

    return input("What would you like to do?")

def show_names():

    print("\nHere are the people I know.\n")
    for name in names:
        print(name.title())

def get_new_name():

    new_name = input("\nPlease tell me this person's name: ")
    names.append(new_name)
    print("\nI'm so happy to know %s!\n" % new_name.title())
# MAIN PROGRAM
names = []
choice = ''
display_title_bar()

while choice != 'q':

    choice = get_user_choice()

    display_title_bar()

    if choice == '1':
        show_names()
    elif choice == '2':
        get_new_name()
    elif choice == 'q':
        print("\nThanks for playing. Bye.")
    else:
        print("\nI didn't understand that choice.\n")
