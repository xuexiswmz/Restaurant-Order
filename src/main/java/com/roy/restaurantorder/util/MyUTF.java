package com.roy.restaurantorder.util;

import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;

public class MyUTF {
    public static String getNewString(String str) throws UnsupportedEncodingException {
        return new String(str.getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
    }
}
