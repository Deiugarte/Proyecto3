package edu.ulatina.ticoplaces;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;

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


        adapterPlace= new RecyclerViewAdapter(obtainPlace());
        recyclerViewPlace.setAdapter(adapterPlace);
    }

    public List<ModelPlace> obtainPlace(){
        List<ModelPlace> place = new ArrayList<>();
        place.add(new ModelPlace("Cerro Chirripo",R.drawable.chirripo));
        place.add(new ModelPlace("Parque Nacional Volcan Irazu Sector de Prusia",R.drawable.prusia));
        place.add(new ModelPlace("Parque Nacional Cahuita",R.drawable.cahuita));
        place.add(new ModelPlace("Monte Verde",R.drawable.monteverde));
        place.add(new ModelPlace("Cerro Buena Vista Sector Savegre",R.drawable.savegre));

        return place;
    }
}
