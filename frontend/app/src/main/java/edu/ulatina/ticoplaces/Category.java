package edu.ulatina.ticoplaces;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.ImageButton;

public class Category extends AppCompatActivity {


    ImageButton btnRestaurant;
    ImageButton btnLodging;
    ImageButton btnActivity;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_category);



        btnRestaurant = findViewById(R.id.ibRestaurant);
        btnLodging = findViewById(R.id.ibLodging);
        btnActivity = findViewById(R.id.ibActivity);

        btnRestaurant.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(Category.this,FoodAndDrinkList.class));

            }
        });

        btnLodging.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(Category.this,LodgingList.class));

            }
        });

        btnActivity.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(Category.this,ActivityList.class));

            }
        });




    }

}
