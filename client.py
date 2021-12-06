from PyQt5 import QtCore
from PyQt5.QtQuick  import QQuickView
from PyQt5.QtCore import QObject, QThread, QUrl, pyqtSlot
import socketio

class SocketClient(QThread):
  add_chat = QtCore.pyqtSignal(str)
  sio = socketio.Client()
  
  def __init__(self, username):
    super().__init__()
    self.username = username
    self.is_run = False

  def set_host(self, ip, port):
    self.ip = ip
    self.port = port

  def run(self):
    host = f'http://{self.ip}:{self.port}'
    
    self.connect(host)
    self.is_run = not self.is_run

  def connect(self, host):
    SocketClient.sio.on('receive', self.receive)
    try:
      SocketClient.sio.connect(host)
      self.add_chat.emit('채팅 서버 접속')
    except:
      print('서버에 연결할 수 없습니다.')

  def send(self, msg):
    SocketClient.sio.emit('send', f'{self.username},{msg}')    
    self.add_chat.emit(f'{msg}')

  def receive(self, msg):
    self.add_chat.emit(f'[나] {msg}')