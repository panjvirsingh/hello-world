package assignments;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/*
 * This class is use to get smallest number from array,modify number and find student medal details. The class contains below methods
 * getSecondSmallest(int[] arr): This method accept array as input argument and return second smallest from array
 * modifyNumber(int n): This method accept int value and input argument and modify number then return modified number
 * getStudentMedalDetails(HashMap<Integer,Integer> map): This method accept map as input argument which contain student registration number as key and marks and vale. 
 * The mwthod retun map contain key as reg number and value as medal.
 * 
 * */

//Class declaration
public class Assignment1 {

	//Method declaration to get 2nd smallest integer from array 
	public int getSecondSmallest(int[] arr) {
		try {
			//checking for string null
			if (arr != null && arr.length > 0) {
				//Sorting array using arrays class
				Arrays.sort(arr);
				return arr[1];
			} else {
				System.out
						.println("Array is Empty. Please provide array with elements");
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return 0;
	}

	//Method declaration to modify number
	public int modifyNumber(int n) {
		//converting number to string
		String str = String.valueOf(n);
		
		//getting string length
		int length=str.length();
		char end=str.charAt(length-1);
		StringBuffer result = new StringBuffer();
		int val = 0;
		try {
			//checking for string null
			if (str != null && length > 0) {
				//looping string to modify number
				for (int i = 0; i < length; i++) {
					if (i < length-1) {
						int val1=Integer.valueOf(str.charAt(i + 1));
						int val2=Integer.valueOf(str.charAt(i));
						
						//Check for greater value and find out diffrence
						if(val1>val2){
							val=val1-val2;
						}
						else if(val2>val1){
							val=val2-val1;
						}
						else{
							val=0;
						}
						result.append(val);	
					} 
				}
			}
		}

		catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return Integer.parseInt(result.toString()+end);
	}
	
	
	//Method declaration to get student medal 
	public HashMap<Integer,String> getStudentMedalDetails(HashMap<Integer,Integer> map){
	
		HashMap<Integer,String> resultMap=new HashMap<Integer,String>();
		//Check for map empty
		if(map!=null && !map.isEmpty()){
			//iterate map and find out marks
			for (Map.Entry<Integer, Integer> entry : map.entrySet()) {
				
				//check marks for >90 and set medal
				if(entry.getValue()>=90){
					resultMap.put(entry.getValue(), "Gold");
				}
				
				//check marks for  between 80 to 90
				if(entry.getValue()>=80 && entry.getValue()<90){
					resultMap.put(entry.getValue(), "Silver");
				}
				
				//check marks for  between 70 to 80
				if(entry.getValue()>=70 && entry.getValue()<80){
					resultMap.put(entry.getValue(), "Bronze");
				}
			
			}
	  }
		return resultMap;
	}
	

	public static void main(String s[]) {
		int[] arr = { 10, 0, 88, 3 };
		Assignment1 ass = new Assignment1();
		System.out.println(ass.getSecondSmallest(arr));

		System.out.println(ass.modifyNumber(45864702));
		HashMap<Integer,Integer> map=new HashMap<Integer,Integer>();
		map.put(100,75);
		map.put(101,85);
		map.put(102,95);
		map.put(103,97);
		HashMap<Integer,String> resultMap=ass.getStudentMedalDetails(map);
		
		for (Map.Entry<Integer, String> entry : resultMap.entrySet()) {
		System.out.println("Reg :"+entry.getKey()+" "+" medal :"+entry.getValue());
		}
	}
}
