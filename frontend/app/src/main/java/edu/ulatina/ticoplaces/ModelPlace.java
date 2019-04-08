package edu.ulatina.ticoplaces;

public class ModelPlace {
    private String titlePlace;
    private int imgPlace;

    public ModelPlace(){


    }

    public ModelPlace(String titlePlace, int imgPlace) {
        this.titlePlace = titlePlace;
        this.imgPlace = imgPlace;

    }

    public String getTitlePlace() {
        return titlePlace;
    }

    public void setTitlePlace(String titlePlace) {
        this.titlePlace = titlePlace;
    }

    public int getImgPlace() {
        return imgPlace;
    }

    public void setImgPlace(int imgPlace) {
        this.imgPlace = imgPlace;
    }
}
