import sys
from PyQt5.QtWidgets import QApplication

from windows.loginWindow import LoginWindow

if __name__ == "__main__":
  app = QApplication(sys.argv) 
  
  main_window = LoginWindow()
  sys.exit(app.exec_())