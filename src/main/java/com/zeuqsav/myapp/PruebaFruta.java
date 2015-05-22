package com.zeuqsav.myapp;

import java.util.ArrayList;
import java.util.List;


public class PruebaFruta {

	private List<String> frutasVarias = new ArrayList<String> ();
	
	public PruebaFruta(){
		frutasVarias.add("Uva");
		frutasVarias.add("Pera");
		frutasVarias.add("Manzana");
		frutasVarias.add("Naranja");
	}
	
	public List<String> getFrutasVarias(){
		return frutasVarias;
	
	}
}
