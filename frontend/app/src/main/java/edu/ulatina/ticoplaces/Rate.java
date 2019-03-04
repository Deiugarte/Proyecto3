package edu.ulatina.ticoplaces;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.RatingBar;
import android.widget.Toast;

import java.text.DecimalFormat;

public class Rate extends AppCompatActivity {

    RatingBar getRatingBar1;
    RatingBar getRatingBar2;
    RatingBar getRatingBar3;
    RatingBar setRatingBar1;
    RatingBar setRatingBar2;
    RatingBar setRatingBar3;

    int count;
    int count2;
    int count3;
    float curRate;
    float curRate2;
    float curRate3;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_rate);
        findViewsById();

        // initiate rating bar and a button
        final RatingBar simpleRatingBar = (RatingBar) findViewById(R.id.ratingBar);
        final RatingBar simpleRatingBar2 = (RatingBar) findViewById(R.id.ratingBar2);
        final RatingBar simpleRatingBar3 = (RatingBar) findViewById(R.id.ratingBar3);
        Button submitButton = (Button) findViewById(R.id.submit_btn);

        setRatingBar1.setRating(curRate);
        setRatingBar2.setRating(curRate2);
        setRatingBar3.setRating(curRate3);

        //getRatingBar1.setOnRatingBarChangeListener(this);
        //getRatingBar2.setOnRatingBarChangeListener(this);
        //getRatingBar3.setOnRatingBarChangeListener(this);




        // perform click event on button
        submitButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // get values and then displayed in a toast
                String totalStars = "Total Stars: " +" "+ "Qualification 1: "+ simpleRatingBar.getRating() + " Qualification 2: "+ simpleRatingBar2.getRating() + " Qualification 3: "+ simpleRatingBar3.getRating();
                Float rating = simpleRatingBar.getRating() + simpleRatingBar2.getRating() + simpleRatingBar3.getRating();
                Float avarage = rating/3;
                Toast.makeText(getApplicationContext(), totalStars + "\n" + "Avarage:"+ avarage + "\n", Toast.LENGTH_LONG).show();

                setRatingBar1.setRating(simpleRatingBar.getRating());
                setRatingBar2.setRating(simpleRatingBar2.getRating());
                setRatingBar3.setRating(simpleRatingBar3.getRating());
            }
        });
    }

    private void findViewsById() {
        getRatingBar1 = (RatingBar) findViewById(R.id.ratingBar);
        setRatingBar1 = (RatingBar) findViewById(R.id.ratingBarof1);
        getRatingBar2 = (RatingBar) findViewById(R.id.ratingBar2);
        setRatingBar2 = (RatingBar) findViewById(R.id.ratingBarof2);
        getRatingBar3 = (RatingBar) findViewById(R.id.ratingBar2);
        setRatingBar3 = (RatingBar) findViewById(R.id.ratingBarof3);
        //countText = (TextView) findViewById(R.id.countText);
    }

    /*(@Override
    public void onRatingChanged(RatingBar ratingBar,RatingBar ratingBar2,RatingBar ratingBar3, float rating,float rating2,float rating3, boolean fromUser) {
        DecimalFormat decimalFormat = new DecimalFormat("#.#");
        curRate = Float.valueOf(decimalFormat.format((curRate * count + rating)
                / ++count));
        curRate2 = Float.valueOf(decimalFormat.format((curRate2 * count2 + rating)
                / ++count2));
        curRate3 = Float.valueOf(decimalFormat.format((curRate3 * count3 + rating)
                / ++count3));
        Toast.makeText(MainActivity.this,
                "New Rating: " + curRate+" "+ curRate2+" "+ curRate3+" ", Toast.LENGTH_SHORT).show();
        setRatingBar1.setRating(curRate);
        setRatingBar2.setRating(curRate2);
        setRatingBar3.setRating(curRate3);
        //countText.setText(count + " Ratings");

    }*/

    /*@Override
    public void onRatingChanged(RatingBar ratingBar, float rating, boolean fromUser) {
        DecimalFormat decimalFormat = new DecimalFormat("#.#");
        curRate = Float.valueOf(decimalFormat.format((curRate * count + rating)
                / ++count));
        curRate2 = Float.valueOf(decimalFormat.format((curRate2 * count2 + rating)
                / ++count2));
        curRate3 = Float.valueOf(decimalFormat.format((curRate3 * count3 + rating)
                / ++count3));
=======
//    @Override
//    public void onRatingChanged(RatingBar ratingBar, float rating, boolean fromUser) {
//        DecimalFormat decimalFormat = new DecimalFormat("#.#");
//        curRate = Float.valueOf(decimalFormat.format((curRate * count + rating)
//                / ++count));
//        curRate2 = Float.valueOf(decimalFormat.format((curRate2 * count2 + rating)
//                / ++count2));
//        curRate3 = Float.valueOf(decimalFormat.format((curRate3 * count3 + rating)
//                / ++count3));
>>>>>>> Stashed changes
        //Toast.makeText(MainActivity.this,
        //      "New Rating: " + curRate+" "+ curRate2+" "+ curRate3+" ", Toast.LENGTH_SHORT).show();
        //setRatingBar1.setRating(curRate);
        //setRatingBar2.setRating(curRate2);
        //setRatingBar3.setRating(curRate3);

<<<<<<< Updated upstream
    }
    */
}

