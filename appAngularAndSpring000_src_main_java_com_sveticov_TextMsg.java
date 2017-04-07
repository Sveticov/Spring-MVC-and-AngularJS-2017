package com.sveticov;

/**
 * Created by SETICOV on 01.04.2017.
 */
public class TextMsg {
   private String text;

    @Override
    public String toString() {
        return "TextMsg{" +
                "text='" + text + '\'' +
                ", id_task=" + id_task +
                '}';
    }

    private int id_task;

    public int getId_task() {
        return id_task;
    }

    public void setId_task(int id_task) {
        this.id_task = id_task;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}
