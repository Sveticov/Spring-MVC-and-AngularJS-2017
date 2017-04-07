package com.sveticov;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by SETICOV on 05.04.2017.
 */
public class TextDATA implements TextDAO {
    Set<TextMsg> textMsgs=new HashSet<TextMsg>();
    public void save(TextMsg textMsg) {
        textMsgs.add(textMsg);
    }

    public Set<TextMsg> visi() {
   Set<TextMsg> textMsg=textMsgs;
        return textMsg;
    }
}
