import sys 
import eventlet
import socketio

sys.path.append('../')

user_list = []

sio = socketio.Server()
app = socketio.WSGIApp(sio, static_files={
    '/': {'content_type': 'text/html', 'filename': 'index.html'}
})

@sio.event
def connect(sid, environ):
    print('connect ', sid)
    print()

@sio.event
def disconnect(sid):
    print('disconnect ', sid)
    print()

@sio.on('send')
def send(sid, data):
    sender, msg = str(data).split(',')
    print(sid, 'send message ', data)
    
    sendMsg = f'{sender} : {msg}'
    sio.emit('receive', sendMsg, skip_sid=sid)

if __name__ == '__main__':
    port = int(input('port : '))
    eventlet.wsgi.server(eventlet.listen(('localhost', port)), app)

