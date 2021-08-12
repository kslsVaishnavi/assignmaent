package student;
import java.util.Scanner;
import java.util.*;


public class Student {

	public static void main(String[] args) {
		int year[] = {2001,2002,2003,2004};
		int male_pass_perc[] = {40,65,65,65};
		int female_pass_perc[] = {60,35,35,35};
		
		System.out.println("Please select the Options");  
		System.out.println("1.View the pass percentage");
		System.out.println("2.View fail percentage");
		System.out.println("3.Show overall pass or fail percentage for all years");
		Scanner s = new Scanner(System.in);
		int in = s.nextInt();
		if(in==1) {
			System.out.println("please select one of the below");
			System.out.println("1.For each year");
			System.out.println("2.For all years");
			System.out.println("3.based on gender");
			Scanner s1=new Scanner(System.in);
			int in1 =s1.nextInt();
			if(in1==1) {
				System.out.println("Enter the year to view the pass percentage");
				Scanner s2=new Scanner(System.in);
				int in2 = s2.nextInt();
				for(int i=0;i<year.length;i++) {
					if(year[i]== in2) {
						System.out.println("male pass percentage : "+male_pass_perc[i]);
						System.out.println("women pass percentage: "+female_pass_perc[i]);
					}
				}
			}
			else if(in1==2) {
				System.out.println(" pass percantage of all the years");
				for (int i=0;i<year.length;i++) {
					System.out.println("male pass percentage : "+male_pass_perc[i]);
					System.out.println("women pass percentage: "+female_pass_perc[i]);
				}
			}
			else {
				System.out.println("please enter the gender to view pass percentage-m/f");
				Scanner s3=new Scanner(System.in);
				String in3 =s3.nextLine();
				if(in3.equals("M")) {
					for(int i=0;i<year.length;i++ ) {
						System.out.println("year : "+year[i]);
						System.out.println("male pass percentage :"+male_pass_perc[i]);
					}
				}
					
	
						
				else if(in3.equals("F")) {
					for(int i=0;i<year.length;i++ ) {
						System.out.println("year : "+year[i]);
						System.out.println("Women pass percentage :"+female_pass_perc[i]);
					}
				}
			}
		}
			
			else if(in==2) {
				System.out.println("please select one among the below");
				System.out.println("1.For each year");
				System.out.println("2.For all years");
				System.out.println("3.Based on gender");
				Scanner s1= new Scanner(System.in);
				int input1 =s1.nextInt();
				if(input1==1) {
					System.out.println("Enter the year to view the fail percentage");
					Scanner s2=new Scanner(System.in);
					int input2 = s2.nextInt();
					for(int i=0;i<year.length;i++) {
						if(year[i]== input2) {
							System.out.println("male fail percentage : "+ (100-male_pass_perc[i]));
							System.out.println("women fail percentage: "+(100-female_pass_perc[i]));
						}
					}
				}
				else if(input1==2) {
					System.out.println(" fail percantage for all the years");
					for (int i=0;i<year.length;i++) {
						System.out.println("male fail percentage : "+(100-male_pass_perc[i]));
						System.out.println("women fail percentage: "+(100-female_pass_perc[i]));
					}
				}
				else {
					System.out.println("please enter the gender to view fail percentage-m/f");
					Scanner s3=new Scanner(System.in);
					String input3 =s3.nextLine();
					if(input3.equals("M")||input3.equals("m")) {
						for(int i=0;i<year.length;i++ ) {
							System.out.println("year : "+year[i]);
							System.out.println("male fail percentage::"+(100-male_pass_perc[i]));
						}
					}
						
		
							
					else if(input3.equals("F")||input3.equals("f")) {
						for(int i=0;i<year.length;i++ ) {
							System.out.println("year : "+year[i]);
							System.out.println("Women fail percentage::"+(100-female_pass_perc[i]));
						}
					}
				}
			}
			else if(in==3) {
				int avg=0;
				for(int i=0;i<year.length;i++) {
					int sum=0;
					sum=(male_pass_perc[i]+female_pass_perc[i])/2;
					avg=avg/4;
					System.out.println("overall pass percentage for all the years is::"+ avg);
					
				
			}
			}
	}

	}


