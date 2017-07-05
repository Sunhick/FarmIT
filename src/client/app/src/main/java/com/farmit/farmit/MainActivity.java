// copyright (c) 2017 Sunil
package com.farmit.farmit;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

/**
 * Main Activity defines the starting activity of the FarmIT app.
 *
 */
public class MainActivity extends Activity {

    private static String TAG = MainActivity.class.getSimpleName();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        TextView register = findViewById(R.id.register);
        register.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Log.d(TAG, "Starting Register user activity here");
                Intent registerUser = new Intent(MainActivity.this, RegisterActivity.class);
                startActivity(registerUser);
            }
        });

        Button signin = findViewById(R.id.signin);
        signin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Log.d(TAG, "Starting video list activity");
                Intent videos = new Intent(MainActivity.this, VideoListActivity.class);
                startActivity(videos);
            }
        });
    }
}
