package edu.ulatina.ticoplaces;

import android.content.Intent;
import android.graphics.Color;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;
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

public class SignUpActivity extends AppCompatActivity {


    int MY_SOCKET_TIMEOUT_MS=5000;

    RequestQueue requestQueue ;
    String url;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_signup);

        final Spinner mySpinner = (Spinner) findViewById(R.id.spinner1);

        ArrayAdapter<String> myAdapter = new ArrayAdapter<String>(SignUpActivity.this,
                android.R.layout.simple_list_item_1, getResources().getStringArray(R.array.names));

        myAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);

        mySpinner.setAdapter(myAdapter);

        this.requestQueue = Volley.newRequestQueue(getApplicationContext());

        Button btnSignUp = findViewById(R.id.btnSignUp);
        Button cancelBtn = findViewById(R.id.btnSGCancel);
        final TextView nameTxt = findViewById(R.id.txtSGName);
        final TextView passwordTxt = findViewById(R.id.txtSGPassword);
        final TextView emailTxt = findViewById(R.id.txtSGEmail);
        final TextView dobTxt = findViewById(R.id.txtSGDoB);
        btnSignUp.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                try {
                    signUp(emailTxt.getText().toString(), passwordTxt.getText().toString(), nameTxt.getText().toString(), dobTxt.getText().toString(), mySpinner.getSelectedItem().toString());
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        });

        cancelBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                SignUpActivity.super.finish();
            }
        });


    }


    public void signUp(String email, String password, String name, String dob, String gender) throws JSONException {
        this.url = getResources().getString(R.string.SERVER_URL) + "/auth";
        JSONObject personalData = new JSONObject()
                //.put("birth", dob)
                .put("gender", "male");
        JSONObject data = new JSONObject()
                .put("email", email )
                .put("password", password)
                .put("username", name)
                .put("person_attributes", personalData);
        System.out.println(data);
        JsonObjectRequest arrReq = new JsonObjectRequest(Request.Method.POST, url, data,
                new Response.Listener<JSONObject>() {
                    @Override
                    public void onResponse(JSONObject response) {
                        Intent intent = new Intent(SignUpActivity.this, Category.class);
                        Bundle bundle = new Bundle();
                        intent.putExtras(bundle);
                        startActivity(intent);
                        Toast.makeText(SignUpActivity.this, "Su cuenta ha sido creada correctamente", Toast.LENGTH_SHORT).show();
                    }
                },

                new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {
                        Toast toast = Toast.makeText(SignUpActivity.this, "Revise sus datos", Toast.LENGTH_SHORT);
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

