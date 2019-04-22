package edu.ulatina.ticoplaces;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.List;

public class RecyclerViewAdapter extends RecyclerView.Adapter<RecyclerViewAdapter.ViewHolder> {

    public static class ViewHolder extends RecyclerView.ViewHolder{
        private TextView titlePlace;
        ImageView imageView;
        TextView idPlace;

        public ViewHolder(View itemView) {
            super(itemView);
            titlePlace = itemView.findViewById(R.id.titlePlace);
            imageView = itemView.findViewById(R.id.imgPlace);
            idPlace = itemView.findViewById(R.id.idPlace);

            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    Intent intent = new Intent(view.getContext(), PlaceDetailsActivity.class);
                    Bundle bundle = new Bundle();
                    bundle.putInt("id", Integer.parseInt(idPlace.getText().toString()));
                    intent.putExtras(bundle);
                    view.getContext().startActivity(intent);
                }
            });

        }
    }

    public List<ModelPlace> placeList;

    public RecyclerViewAdapter(List<ModelPlace> placeList) {
        this.placeList = placeList;
    }

    @Override
    public ViewHolder onCreateViewHolder( ViewGroup parent, int viewType) {
        View view= LayoutInflater.from(parent.getContext()).inflate(R.layout.item_place,parent,false);
        ViewHolder viewHolder = new ViewHolder(view);

        return viewHolder;
    }

    @Override
    public void onBindViewHolder( ViewHolder viewHolder, int position) {
        viewHolder.titlePlace.setText(placeList.get(position).getTitlePlace());
        viewHolder.imageView.setImageResource(placeList.get(position).getImgPlace());
        viewHolder.idPlace.setText("" + placeList.get(position).getId());
    }

    @Override
    public int getItemCount() {
        return placeList.size();
    }



}
