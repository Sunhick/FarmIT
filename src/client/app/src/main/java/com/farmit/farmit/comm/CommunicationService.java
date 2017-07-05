package com.farmit.farmit.comm;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;

public class CommunicationService extends Service implements Communication {

    private final IBinder binder = new CommunicationBinder();
    private TcpChannel connection;

    /**
     * Communication binder class
     */
    public class CommunicationBinder extends Binder {
        public CommunicationService getService() {
            return CommunicationService.this;
        }
    }

    public CommunicationService() {
    }

    @Override
    public IBinder onBind(Intent intent) {
        // TODO: Return the communication channel to the service.
        throw new UnsupportedOperationException("Not yet implemented");
    }

    @Override
    public int onStartCommand(Intent intent,int flags, int startId){
        super.onStartCommand(intent, flags, startId);
        connection = new TcpChannel();
        new Thread(connection).start();
        return START_STICKY;
    }

    /**
     * Sends the message to the server without blocking the main thread
     * and this interface expects no response from the server.
     *
     * @param msg message to be passed to the server.
     */
    @Override
    public void sendMessage(String msg) {

    }

    /**
     * Receives a message from the server.
     * This is a blocking call untill data is received.
     *
     * @return message received from the server
     */
    @Override
    public String receiveMessage() {
        return null;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        connection.close();
    }
}
