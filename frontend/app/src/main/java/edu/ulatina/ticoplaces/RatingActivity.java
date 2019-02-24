package edu.ulatina.ticoplaces;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.RatingBar;
import android.widget.RatingBar.OnRatingBarChangeListener;
import android.widget.TextView;
import android.widget.Toast;

public class RatingActivity extends AppCompatActivity {

    private RatingBar ratingBarPrice;
    private RatingBar ratingBarService;
    private RatingBar ratingBarQuality;
    private TextView txtRatingValue;
    private Button btnSubmit;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_rating);

        addListenerOnRatingBar();
        addListenerOnButton();

    }

    public void addListenerOnRatingBar() {

        ratingBarPrice = (RatingBar) findViewById(R.id.ratingBarPrice);
        ratingBarService = (RatingBar) findViewById(R.id.ratingBarService);
        ratingBarQuality = (RatingBar) findViewById(R.id.ratingBarQuality);
        txtRatingValue = (TextView) findViewById(R.id.txtRatingValue);

        //if price rating is changed,
        //display the current rating value in the result (textview) automatically
        ratingBarPrice.setOnRatingBarChangeListener(new OnRatingBarChangeListener() {
            public void onRatingChanged(RatingBar ratingBarPrice, float rating,
                                        boolean fromUser) {

//                txtRatingValue.setText(String.valueOf(rating)); //Maybe I won't use this one.

            }
        });

        //if service rating is changed,
        //display the current rating value in the result (textview) automatically
        ratingBarService.setOnRatingBarChangeListener(new OnRatingBarChangeListener() {
            public void onRatingChanged(RatingBar ratingBarService, float rating,
                                        boolean fromUser) {

//                txtRatingValue.setText(String.valueOf(rating)); //Or this one.

            }
        });

        //if quality rating is changed,
        //display the current rating value in the result (textview) automatically
        ratingBarQuality.setOnRatingBarChangeListener(new OnRatingBarChangeListener() {
            public void onRatingChanged(RatingBar ratingBarQuality, float rating,
                                        boolean fromUser) {

//                txtRatingValue.setText(String.valueOf(rating)); //Or also this one.

            }
        });
    }

    public void addListenerOnButton() {

        ratingBarPrice = (RatingBar) findViewById(R.id.ratingBarPrice);
        ratingBarService = (RatingBar) findViewById(R.id.ratingBarService);
        ratingBarQuality = (RatingBar) findViewById(R.id.ratingBarQuality);
        btnSubmit = (Button) findViewById(R.id.btnSubmit);

        //if click on me, then display the current rating value.
        btnSubmit.setOnClickListener(new OnClickListener() {

            @Override
            public void onClick(View v) {

                txtRatingValue.setText(String.valueOf((ratingBarPrice.getRating()+ratingBarService.getRating()+ratingBarQuality.getRating())/3));

                Toast.makeText(RatingActivity.this,
                        String.valueOf((ratingBarPrice.getRating()+ratingBarService.getRating()+ratingBarQuality.getRating())/3),
                        Toast.LENGTH_SHORT).show();

            }

        });

    }
}