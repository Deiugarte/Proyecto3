package edu.ulatina.ticoplaces;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;

//import android.arch.lifecycle.ViewModelProviders;

public class OverviewFragment extends Fragment {

//    private RatingViewModel mViewModel;

    public static OverviewFragment newInstance() {
        return new OverviewFragment();
    }

    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container,
                             @Nullable Bundle savedInstanceState) {
        final View myView = inflater.inflate(R.layout.overview_fragment, container, false);

        Button mapaBtn = myView.findViewById(R.id.goToPlaceBtn);
        mapaBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getActivity(), MapsActivity.class);
                Bundle bundle = new Bundle();
                intent.putExtras(bundle);
                startActivity(intent);
            }
        });
        return myView;
    }



}

