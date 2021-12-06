import sys

from PyQt5.QtQuick  import QQuickView
from PyQt5.QtCore import QUrl, QObject

from windows.roomWindow import RoomWindow

from windows.util import get_file_path

FILE_NAME = '..\\ui\Main.ui.qml'


class MainWindow(QQuickView):
  def __init__(self, username):
    super().__init__()
    self.open = ''
    self.username = username
    self.setResizeMode(QQuickView.SizeRootObjectToView)
    qml_file = get_file_path(FILE_NAME)

    # view 생성
    self.setSource(QUrl.fromLocalFile(qml_file))
    if self.status() == QQuickView.Error:
        sys.exit(-1)
    self.show()
    
    mouse_area = self.findChild(QObject, "mouseArea")
    mouse_area1 = self.findChild(QObject, "mouseArea1")
    mouse_area2 = self.findChild(QObject, "mouseArea2")
    
    mouse_area.mouseAreaClicked.connect(self.mouse_area_clicked)
    mouse_area1.mouseAreaClicked1.connect(self.mouse_area_clicked1)
    mouse_area2.mouseAreaClicked2.connect(self.mouse_area_clicked2)


  def mouse_area_clicked(self):
    if self.open:
      self.open.close()
      self.open.sc.sio.disconnect()
    self.open = RoomWindow(self.username, 5000)
    self.open.show()
    print('Mouse Area clicked')

  def mouse_area_clicked1(self):
    if self.open:
      self.open.close()
      self.open.sc.sio.disconnect()
    self.open = RoomWindow(self.username, 5001)
    self.open.show()
    print('Mouse Area clicked 1')

  def mouse_area_clicked2(self):
    if self.open:
      self.open.close()
      self.open.sc.sio.disconnect()
    self.open = RoomWindow(self.username, 5002)
    self.open.show()
    print('Mouse Area clicked 2')