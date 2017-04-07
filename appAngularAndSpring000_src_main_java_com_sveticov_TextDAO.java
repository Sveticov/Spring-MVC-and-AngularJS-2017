package com.sveticov;

import java.util.Set;

/**
 * Created by SETICOV on 05.04.2017.
 */
public interface TextDAO {
    void save(TextMsg textMsg);
    Set<TextMsg> visi();
}
