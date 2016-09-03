import os

username = raw_input("Enter your username e.g. ntesla: ")

cwd = os.getcwd()
os.makedirs(os.path.join(cwd, username, "_sandbox"))
