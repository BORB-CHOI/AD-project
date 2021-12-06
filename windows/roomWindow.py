import sys

from PyQt5 import QtCore
from PyQt5.QtQuick  import QQuickView
from PyQt5.QtCore import QObject, QThread, QUrl, pyqtSlot
import socketio

# setting path
sys.path.append('../')

from windows.util import get_file_path
from client import SocketClient

FILE_NAME = '..\\ui\ChatRoom.ui.qml'

class RoomWindow(QQuickView):
  def __init__(self, user, roomPort):
    super().__init__()
    self.setResizeMode(QQuickView.SizeRootObjectToView)
    qml_file = get_file_path(FILE_NAME)
    self.setSource(QUrl.fromLocalFile(qml_file))
    self.user = user
    
    self.sc = SocketClient(user)
    self.show()

    self.text_edit = self.findChild(QObject, 'textEdit')
    self.input_field = self.findChild(QObject, 'textField')
    self.send_btn = self.findChild(QObject, 'sendBtn')
    
    self.send_btn.sendClicked.connect(self.send_message)
    self.sc.add_chat.connect(self.add_chat)

    self.sc.set_host('127.0.0.1', roomPort)

    if not self.sc.is_run:      
      self.sc.start()
    
  def send_message(self):
    if self.sc.is_run:
      msg = self.input_field.property("text")
      if msg != '':
        self.sc.send(msg)
        self.input_field.clear()
    else:
      self.add_chat('연결 끊김')

  @pyqtSlot(str)
  def add_chat(self, msg):
    print(msg)
    self.text_edit.append("")
    self.text_edit.append(msg)