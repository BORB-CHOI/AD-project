import sys

from PyQt5.QtQuick  import QQuickView
from PyQt5.QtCore import QObject,  QUrl

from windows.util import get_file_path
from windows.mainWindow import MainWindow

# setting path
sys.path.append('../')


FILE_NAME = '..\\ui\Login.ui.qml'

class LoginWindow(QQuickView):  
  def __init__(self): 
    super().__init__()   
    self.setResizeMode(QQuickView.SizeRootObjectToView)

    qml_file = get_file_path(FILE_NAME)
    self.setSource(QUrl.fromLocalFile(qml_file))
    
    if self.status() == QQuickView.Error:
        sys.exit(-1)
    self.show()
    
    button = self.findChild(QObject, "myButton")
    button.buttonClicked.connect(self.on_button_clicked)

  def on_button_clicked(self):    
    text_field = self.findChild(QObject, "textField")
    username = text_field.property("text")
    
    self.view = MainWindow(username)
    self.view.show()
    self.close()
    print('Main Button clicked')