package common;


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


    public List<Pet> list() {
        ArrayList<Pet> result = (ArrayList<Pet>) model.stream().collect(Collectors.toList());

        // ArrayList<String> result = (ArrayList<String>) model.stream().map(Pet::getName)
         //       .collect(Collectors.toList());
        return result;
    }
}
