package assignments;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Assignment2 {

	public String alterString(String s){
		String str="";
		char c = 0;
		if(s!="" && s!=null && s.length()>0){
			for(int i=0;i<s.length();i++){
			   c=s.charAt(i);
				if(c=='a'||c=='A'||c=='i'||c=='I'||c=='o'||c=='O'||c=='u'||c=='U'||c=='e'||c=='E')
				{
				
				}
				else{
					int ascii = (int) c;
					c=(char)(ascii+1);
				}
				str=str+c;
			}
			
		
		}
		
		return str;
	}
	
	public int modifyNumber(int n) {
		String str = String.valueOf(n);
		int length=str.length();
		char end=str.charAt(length-1);
		StringBuffer result = new StringBuffer();
		int val = 0;
		try {
			if (str != null && length > 0) {
				for (int i = 0; i < length; i++) {
					if (i < length-1) {
						int val1=Integer.valueOf(str.charAt(i + 1));
						int val2=Integer.valueOf(str.charAt(i));
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

	
	public String getDayofWeek (String input_date,String simpleDateFormat) throws ParseException{
		  SimpleDateFormat format1=new SimpleDateFormat(simpleDateFormat);
		  Date dt1=format1.parse(input_date);
		  DateFormat format2=new SimpleDateFormat("EEEE"); 
		  String finalDay=format2.format(dt1);
		return finalDay.toUpperCase();
		
	}
	
	public static void main(String s[]){
		Assignment2 agg=new Assignment2();
		System.out.println(agg.alterString("JAVA"));
		
		System.out.println(agg.modifyNumber(45864702));
		try {
			System.out.println(agg.getDayofWeek("06/07/1987","dd/MM/yyyy"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
