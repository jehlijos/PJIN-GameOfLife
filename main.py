# this app generates matrix(list)(21x21) of 0s and 1s by clicking on buttons in it. square white buttons represents 0.
# after clicking on white square it should change its color to black and 0 in matrix to 1
# red quit button terminates the app and green start button saves the current matrix to txt file
# Copperhead, Pentadecathlon and Pulsar buttons will create predefined combinations of black/white buttons and 1/1 in matrix
# gbtn and rbtn are user inputs (scales) for saving number of generations and random numbers to txt file
# text input button opens new window to paste input from wiki
# music starts with program, pause button implemented

# import
import subprocess
import tkinter as tk
from tkinter import *
import webbrowser
from functools import partial
import time
import os
from pygame import mixer
from PIL import Image
from PIL import ImageTk
import sys

musicon = True  # starts music
mixer.init()
mixer.music.load(os.path.join("Music", "music.mp3"))
mixer.music.play(loops=-1)

# tkinter window
root = tk.Tk()
root.geometry("700x700")  # resolution of window after opening the app
root.title("Game of life")
root.iconbitmap("icon.ico")

canvas = tk.Canvas(root, height=201, width=201)
canvas.grid(columnspan=21, rowspan=21)  # grid for 21x21 buttons

A = []  # matrix to save (list)
btn_r = {}  # dictionary of buttons


def click(
        num):  # function for clicking on squares, changing 0 to 1 / 1 to 0 in matrix A and colors of the pressed buttons
    if A[num] == 0:
        A[num] = 1
        btn_r[num].configure(bg="black", fg="white")
    else:
        A[num] = 0
        btn_r[num].configure(bg="white", fg="black")


for ctr in range(21 * 21):  # creating buttons
    rw, col = divmod(ctr, 21)
    btn_r[ctr] = tk.Button(root, width=2, bg="white",
                           command=partial(click, ctr))
    btn_r[ctr].grid(column=col, row=rw, sticky="nsew")
    A.append(0)


def quit2():  # function to quit the app connected to red quit button
    root.quit()
    root.destroy()
    sys.exit()


def start():  # function to save starting configuration into txt file after pressing green start button
    global A
    file = open("data.txt", "w")
    content = str(A)
    content = content.replace("[", "")
    content = content.replace("]", "")
    content = content.replace(",", "")
    content = content[:42] + "\n " + content[42:]  # creating lines from single one
    content = content[:86] + "\n " + content[86:]
    content = content[:130] + "\n " + content[130:]
    content = content[:174] + "\n " + content[174:]
    content = content[:218] + "\n " + content[218:]
    content = content[:262] + "\n " + content[262:]
    content = content[:306] + "\n " + content[306:]
    content = content[:350] + "\n " + content[350:]
    content = content[:394] + "\n " + content[394:]
    content = content[:438] + "\n " + content[438:]
    content = content[:482] + "\n " + content[482:]
    content = content[:526] + "\n " + content[526:]
    content = content[:570] + "\n " + content[570:]
    content = content[:614] + "\n " + content[614:]
    content = content[:658] + "\n " + content[658:]
    content = content[:702] + "\n " + content[702:]
    content = content[:746] + "\n " + content[746:]
    content = content[:790] + "\n " + content[790:]
    content = content[:834] + "\n " + content[834:]
    content = content[:878] + "\n " + content[878:]
    content = content[:922] + "\n " + content[922:]
    content = " " + content
    file.write(content)
    file.close()  # saving to .txt
    file = open("gens.txt", "w")
    content2 = gen
    file.write(content2)
    file.close()
    file = open("rand.txt", "w")
    content3 = rnd
    file.write(content3)
    file.close()
    time.sleep(1)
    subprocess.call("generator.exe", shell=True)  # runs matlab exe


def music():  # function to mute music
    global musicon  # Icon by www.wishforge.games on freeicons.io

    if musicon is True:  # pasuing musing
        musicon = False
        mixer.music.pause()
        music_btn.configure(image=img2)  # icon change
    else:  # unpausing music
        musicon = True
        mixer.music.unpause()
        music_btn.configure(image=img)


def clear():  # function to set all buttons to white and all numbers in matrix A to 0
    global A
    A = []
    for x in range(21 * 21):
        btn_r[x].configure(bg="white", fg="black")
        A.append(0)


def download():  # function to open hypertext link to website with Matlab runtime download
    webbrowser.open("https://www.mathworks.com/products/compiler/matlab-runtime.html")


def info():  # function that opens html with help
    webbrowser.open("info.html")


def penta():  # function that generates predefined configuration called Pentadecathlon
    global A
    A = []
    for x in range(21 * 21):
        btn_r[x].configure(bg="white", fg="black")
        A.append(0)
    list = [197, 198, 199, 200, 201, 202, 203, 204, 218, 220, 221, 222, 223, 225, 239, 240, 241, 242, 243, 244, 245,
            246]
    for y in range(len(list)):
        A[list[y]] = 1
        btn_r[list[y]].configure(bg="black", fg="white")


def copper():  # function that generates predefined configuration called Copperhead
    global A
    A = []
    for x in range(21 * 21):
        btn_r[x].configure(bg="white", fg="black")
        A.append(0)
    list = [175, 176, 195, 198, 215, 216, 219, 220, 236, 237, 240, 241, 257, 259, 260, 262, 280, 281, 299, 304, 319,
            320, 325, 326, 385, 386, 405,
            408, 426, 429]
    for y in range(len(list)):
        A[list[y]] = 1
        btn_r[list[y]].configure(bg="black", fg="white")


def pulsar():  # function that generates predefined configuration called Pulsar
    global A
    A = []
    for x in range(21 * 21):
        btn_r[x].configure(bg="white", fg="black")
        A.append(0)
    list = [90, 91, 92, 96, 97, 98, 130, 135, 137, 142, 151, 156, 158, 163, 172, 177, 179, 184, 195, 196, 197, 201, 202,
            203, 237, 238, 239, 243,
            244, 245, 256, 261, 263, 268, 277, 282, 284, 289, 298, 303, 305, 310, 342, 343, 344, 348, 349, 350]
    for y in range(len(list)):
        A[list[y]] = 1
        btn_r[list[y]].configure(bg="black", fg="white")


###########################################################################################
# TEXT INPUT WINDOW (text from wiki)
###########################################################################################


def textinput():
    rootsec = tk.Tk()
    rootsec.geometry("700x500")  # resolution of window after opening the window
    rootsec.iconbitmap("icon.ico")
    rootsec.title("Game of life - text input")

    # TextBox Creation
    inputtxt = tk.Text(rootsec,
                       height=20,
                       width=50)

    inputtxt.pack()
    inputtxt.insert(tk.END, "O.. \n.OO \nOO.")

    def back():  # cancel button
        rootsec.withdraw()

    def strt():  # start button
        inp = inputtxt.get(1.0, "end-1c")  # getting values
        inp = inp.replace("0", "O")  # replacing similar symbols
        inp = inp.replace("o", "O")
        inp = inp.replace(",", ".")
        inp = inp.replace(" ", "")
        inp = inp.replace(".", "0")  # replacing symbols with 0s and 1s
        inp = inp.replace("O", "1")
        inp = inp.splitlines()  # adds zeros so final matrix is rectangular
        ml = len(max(inp, key=len))
        for lines in range(len(inp)):  # fixing so matrix is rectangular, adding 0s
            inp[lines] = inp[lines].ljust(ml, "0")
            inp[lines] = inp[lines] + "\n"
        inp2 = "".join(inp)
        inp = inp2
        all_binary = all(c in '01 \n' for c in inp)  # input check
        if not all_binary:
            def bck2():
                roottet.destroy()

            roottet = tk.Tk()  # pop up window with invalid input message
            roottet.geometry("300x100")  # resolution of window after opening the window
            roottet.iconbitmap("icon.ico")
            roottet.title("INVALID INPUT")
            stitek = Label(roottet, text=u"INVALID INPUT", font="CourierNew 24", fg="red")
            stitek.pack(padx=20, pady=10)
            bck2_btn = tk.Button(roottet, width=4, height=1, text="OK", font="Raleway", bg="#FFFFFF", command=bck2)
            bck2_btn.place(x=125, y=50)
            roottet.mainloop()
        else:
            inp = " ".join(inp)  # if input is valid saves it to txt and runs matlab
            inp = " " + inp
            file = open("data.txt", "w")
            file.write(inp)
            file.close()
            time.sleep(1)
            subprocess.call("generator.exe", shell=True)

    # Button Creation
    back_btn = tk.Button(rootsec, width=12, height=2, text="CLOSE", font="Raleway", bg="#FC5B30", command=back)
    back_btn.place(x=100, y=400)

    strt_btn = tk.Button(rootsec, width=12, height=2, text="START", font="Raleway", bg="#00FF13", command=strt)
    strt_btn.place(x=450, y=400)

    # Label Creation
    lbl = tk.Label(rootsec,
                   text="Input your configuration where . is dead cell and O is alive \n Set number of generations and random alive cells in previous panel")
    lbl.pack()

    rootsec.mainloop()


###########################################################################################
###########################################################################################


# START BUTTON
start_btn = tk.Button(root, width=12, height=2, text="START", font="Raleway", bg="#00FF13", command=start)
start_btn.place(x=550, y=0)

# INFO BUTTON
info_btn = tk.Button(root, width=12, height=2, text="INFO", font="Raleway", bg="#98FFF4", command=info)
info_btn.place(x=550, y=70)

# QUIT BUTTON
quit_btn = tk.Button(root, width=12, height=2, text="QUIT", font="Raleway", bg="#FC5B30", command=quit2)
quit_btn.place(x=550, y=600)

# Pulsar BUTTON
pulsar_btn = tk.Button(root, width=12, height=2, text="Pulsar", font="Raleway", command=pulsar)
pulsar_btn.place(x=550, y=350)

# Penta-decathlon BUTTON
penta_btn = tk.Button(root, width=12, height=2, text="Pentadecathlon", font="Raleway", command=penta)
penta_btn.place(x=550, y=280)

# Copperhead BUTTON
copper_btn = tk.Button(root, width=12, height=2, text="Copperhead", font="Raleway", command=copper)
copper_btn.place(x=550, y=210)

# CLEAR BUTTON
clear_btn = tk.Button(root, width=12, height=2, text="CLEAR", font="Raleway", bg="#FFFFFF", command=clear)
clear_btn.place(x=550, y=140)

# WIKI INPUT BUTTON
clear_btn = tk.Button(root, width=12, height=2, text="TEXT INPUT", font="Raleway", bg="#FBE3CC", command=textinput)
clear_btn.place(x=550, y=500)

# MUTE MUSIC BUTTON
# Icon by www.wishforge.games on freeicons.io
img = Image.open("sound1.png")  # sound on icon image load
img = img.resize((48, 48))  # resizing the image
img = ImageTk.PhotoImage(img)
img2 = Image.open("sound2.png")  # sound off icon image load
img2 = img2.resize((48, 48))  # resizing the image
img2 = ImageTk.PhotoImage(img2)
music_btn = tk.Button(root, width=48, height=48, bg="#FFFFFF", image=img, command=music)
music_btn.place(x=585, y=425)

# informative text line
T = tk.Text(root, height=2, width=30)
T.insert(tk.END, "This app requires MATLAB runtime 9.9 to work.")
T.place(x=0, y=675, width=370)
T.config(state=DISABLED)
# download button
dwnld = tk.Button(root, height=1, width=7, text="download",  font="Raleway", command=download)
dwnld.place(x=380, y=665,)

# starting values of scales
gg = DoubleVar()
gen = str(5)
rr = DoubleVar()
rnd = str(0)


def getgen():  # function to save value from generation scale
    global gen
    gen = str(gg.get())


def getrnd():  # function to save value from random scale
    global rnd
    rnd = str(rr.get())


# generation scale
g = Scale(root, from_=5, to=50, orient=HORIZONTAL, label="number of generations", variable=gg)
g.place(x=0, y=550, width=170)
gbtn = tk.Button(root, width=3, height=1, text="save", font="Raleway", command=getgen)
gbtn.place(x=30, y=610)

# random scale
r = Scale(root, from_=0, to=400, orient=HORIZONTAL, label="number of random alive cells", variable=rr)
r.place(x=220, y=550, width=170)
rbtn = tk.Button(root, width=3, height=1, text="save", font="Raleway", command=getrnd)
rbtn.place(x=250, y=610)

root.mainloop()


# V jebgr guvf pbqr. Bayl zr. Ab bar ryfr urycrq. V nyfb qvq gur ugzy cntrf.
# Ohg vg vf abg orpnh fr bs zl grnzngrf ynmvarff be hajvyyvatarff. V whfg tbg fghpx va vg sbe qnlf naq ralwblrq vg.
# Gurl qvq terng wbo va zngyno fxevcg.
# -- wbfrs wruyvpxn <3
