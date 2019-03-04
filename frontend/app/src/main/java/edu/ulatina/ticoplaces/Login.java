package edu.ulatina.ticoplaces;

import android.content.Intent;
import android.graphics.Color;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.DefaultRetryPolicy;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonObjectRequest;
import com.android.volley.toolbox.Volley;

import org.json.JSONException;
import org.json.JSONObject;


public class Login extends AppCompatActivity {

    int MY_SOCKET_TIMEOUT_MS=5000;

    RequestQueue requestQueue ;
    String baseUrl = "https://ticoplaces.herokuapp.com/api/v1";
    String url;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        this.requestQueue = Volley.newRequestQueue(getApplicationContext());
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        Button loginBtn = findViewById(R.id.btnLogin);
        Button gotoSignUp = findViewById(R.id.btnGoSignUp);
        final TextView emailTxt = findViewById(R.id.txtUserName);
        final TextView passwordTxt = findViewById(R.id.txtPassword);
        loginBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                try {
                    login(emailTxt.getText().toString(), passwordTxt.getText().toString());
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        });

        gotoSignUp.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(Login.this, SignUpActivity.class);
                Bundle bundle = new Bundle();
                intent.putExtras(bundle);
                startActivity(intent);
            }
        });

    }


    public void login(String email, String password) throws JSONException {
        this.url = getResources().getString(R.string.SERVER_URL) + "/auth/sign_in";
        JSONObject data = new JSONObject()
                .put("email", email )
                .put("password", password);

        JsonObjectRequest arrReq = new JsonObjectRequest(Request.Method.POST, url, data,
                new Response.Listener<JSONObject>() {
                    @Override
                    public void onResponse(JSONObject response) {
                        Intent intent = new Intent(Login.this, MapsActivity.class);
                        Bundle bundle = new Bundle();
                        intent.putExtras(bundle);
                        startActivity(intent);
                        Toast.makeText(Login.this, "Bienvenid@", Toast.LENGTH_SHORT).show();
                    }
                },

                new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {
                        Toast toast = Toast.makeText(Login.this, "Revise sus datos", Toast.LENGTH_SHORT);
                        TextView v =  toast.getView().findViewById(android.R.id.message);
                        v.setTextColor(Color.RED);
                        toast.show();
                        Log.e("Volley", error.toString());
                    }
                }
        );



        arrReq.setRetryPolicy(new DefaultRetryPolicy(
                MY_SOCKET_TIMEOUT_MS,
                DefaultRetryPolicy.DEFAULT_MAX_RETRIES,
                DefaultRetryPolicy.DEFAULT_BACKOFF_MULT));
        requestQueue.add(arrReq);
    }



}
