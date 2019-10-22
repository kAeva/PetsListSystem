package app.model;


import app.entities.Pet;

import java.util.List;
import java.util.ArrayList;
import java.util.stream.Collectors;




public class Model {
    private static Model instance = new Model();

    private List<Pet> model;



    public static Model getInstance() {
        return instance;
    }

    private Model() {
        model = new ArrayList<>();
    }

    public void add(Pet user) {
        model.add(user);
    }

    public List<String> list() {
        ArrayList<String> result = (ArrayList<String>) model.stream().map(Pet::getName)
                .collect(Collectors.toList());
//        ArrayList<String> result2 = (ArrayList<String>) model.stream().map(Pet::getAge)
//                .collect(Collectors.toList());
//        ArrayList<String> result3.add(result);
//        + result2;
        return result;
    }
}
