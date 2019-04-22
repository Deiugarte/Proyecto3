package edu.ulatina.ticoplaces;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.widget.TextView;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.RetryPolicy;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonArrayRequest;
import com.android.volley.toolbox.JsonObjectRequest;
import com.android.volley.toolbox.Volley;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class PlacesByName extends AppCompatActivity {

    private RecyclerView recyclerViewPlace;
    private RecyclerViewAdapter adapterPlace;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.places_by_name);

        recyclerViewPlace=(RecyclerView)findViewById(R.id.reclyclePlace);
        recyclerViewPlace.setLayoutManager(new LinearLayoutManager(this));

        obtainPlace();
    }

    public void obtainPlace(){
        RequestQueue requestqueue = Volley.newRequestQueue(this);

        String URL = "https://ticoplaces.herokuapp.com/api/v1/places";

        JsonArrayRequest objectRequest = new JsonArrayRequest(
                Request.Method.GET,
                URL,
                null,
                new Response.Listener<JSONArray>() {
                    @Override
                    public void onResponse(JSONArray response) {
                        try {
                            List<ModelPlace> placesGlobal = new ArrayList<>();
                            for (int i=0; i < response.length(); i++) {
                                placesGlobal.add(new ModelPlace(response.getJSONObject(i).getInt("id"),response.getJSONObject(i).getString("name"), R.drawable.food));
                            }
                            adapterPlace= new RecyclerViewAdapter(placesGlobal);
                            recyclerViewPlace.setAdapter(adapterPlace);

                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                },
                new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {
                        Log.e("REST Response:", error.toString());
                    }
                }
        );
        objectRequest.setRetryPolicy(new RetryPolicy() {
            @Override
            public int getCurrentTimeout() {
                return 50000;
            }

            @Override
            public int getCurrentRetryCount() {
                return 50000;
            }

            @Override
            public void retry(VolleyError error) throws VolleyError {

            }
        });
        requestqueue.add(objectRequest);
    }
}
