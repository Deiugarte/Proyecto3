package edu.ulatina.ticoplaces;

public class ModelPlace {
    private String titlePlace;
    private int imgPlace;
    private int id;


    public ModelPlace(int id, String titlePlace, int imgPlace) {
        this.titlePlace = titlePlace;
        this.imgPlace = imgPlace;
        this.id = id;

    }

    public int getId() {
        return id;
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
