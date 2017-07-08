#!/usr/bin/env python 

import socket

host = 'localhost'
port = 7777
backlog = 5 
size = 1024 
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM) 
s.bind((host,port)) 
s.listen(backlog) 
while 1: 
    print ("got connection")
    client, address = s.accept()
    print ("got connection from ", address)
    data = client.recv(size) 
    if data: 
        client.send(data) 
    client.close()