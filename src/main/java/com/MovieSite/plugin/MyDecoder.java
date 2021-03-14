package com.MovieSite.plugin;

public class MyDecoder {
    //private String statement;

    public MyDecoder(){};

    public String replace(String statement){
        String newstr = statement.replaceAll("\\+", " ");
        //System.out.println(statement.replaceAll("\\+", " "));
        return newstr;
    }

    public String split(String statement){
        String[] newstr = statement.split("\\,");
        String result = "";
        for(int i = 0;i<newstr.length/2;i++){
            if(i == newstr.length/2 - 1){
                result += newstr[i];
                break;
            }
            result += newstr[i]+",";
        }
        return result;
    }
}
