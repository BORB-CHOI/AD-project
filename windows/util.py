from os import path
from platform import system

def get_file_path(file_name):  
    if (system() == 'Windows'):
        # on Windows
        return path.dirname(path.realpath(__file__)) + '\\' + file_name
    else:
        # on Linux or Mac or Unix
        return file_name
