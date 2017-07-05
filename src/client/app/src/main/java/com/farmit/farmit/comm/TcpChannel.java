package com.farmit.farmit.comm;

import android.util.Log;

import java.net.InetAddress;
import java.net.Socket;

class TcpChannel implements Runnable {
    private static final String SERVER_ADDR = "localhost";
    private static final int PORT = 7777;

    Socket socket;
    InetAddress serverAddr;

    @Override
    public void run() {
        try {
            serverAddr = InetAddress.getByName(SERVER_ADDR);
            Log.e("TCP Client", "C: Connecting...");

            socket = new Socket(serverAddr, PORT);

            try {
                Log.e("TCP Client", "C: Sent.");

                Log.e("TCP Client", "C: Done.");
            }
            catch (Exception e) {
                Log.e("TCP", "S: Error", e);
            }
        } catch (Exception e) {
            Log.e("TCP", "C: Error", e);
        }

    }

    public void close() {
        try {
            socket.close();
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
