#!/usr/bin/env python 

import socket

host = '10.0.0.89'
port = 7777
backlog = 5 
size = 20 
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM) 
s.bind((host,port)) 
s.listen(backlog) 
while 1: 
    print ("got connection")
    client, address = s.accept()
    print ("got connection from ", address)
    while (True):
        data = str.encode("Sunil.reply.0")
        client.send(data) 
        #data = client.recv(size) 
        #print('waiting for data. d=', data)
    client.close()