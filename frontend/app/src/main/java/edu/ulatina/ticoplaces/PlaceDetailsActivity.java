package edu.ulatina.ticoplaces;

import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.design.widget.TabItem;
import android.support.design.widget.TabLayout;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.support.design.widget.NavigationView;
import android.support.v4.view.GravityCompat;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;

public class PlaceDetailsActivity extends AppCompatActivity {

    TabLayout tabLayout = findViewById(R.id.tablayout);
    TabItem tabChats = findViewById(R.id.fTab);
    TabItem tabStatus = findViewById(R.id.sTab);
    TabItem tabCalls = findViewById(R.id.tTab);
    ViewPager viewPager = findViewById(R.id.viewPager);

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_place_details);

        tabLayout = findViewById(R.id.tablayout);
        viewPager = findViewById(R.id.viewPager);
        PageAdapter adapter = new PageAdapter(getSupportFragmentManager());
        //Adding Fragments
//        adapter.addFragment(new OverviewFragment(),"Overview");
//        adapter.addFragment(new PhotosFragment(),"Photos");
//        adapter.addFragment(new RatingFragment(),"Rating");
        //adapter set up
        viewPager.setAdapter(adapter);
        tabLayout.setupWithViewPager(viewPager);

        DrawerLayout drawer = (DrawerLayout) findViewById(R.id.drawer_layout);
    }

    @Override
    public void onBackPressed() {
        DrawerLayout drawer = (DrawerLayout) findViewById(R.id.drawer_layout);
        if (drawer.isDrawerOpen(GravityCompat.START)) {
            drawer.closeDrawer(GravityCompat.START);
        } else {
            super.onBackPressed();
        }
    }

}
