package util;

public class ParamUtil {
	 public static double sankaku(int tate, int yoko) {
		 return (double)tate * yoko / 2;
	 }
	 
	 public static double sikaku(int tate, int yoko) {
		 return (double)tate * yoko;
	 }
	 
	 public static int getPoint(int price) {
		 return (int)(price * 0.01);
	 }
	 
	 public static int getPoint(int price, int rank) {
		 return (int)(price * rank * 0.01);
	 }
	 
	 public static boolean isNullOrEmpty(String str) {
		 return (str == null || str.equals(""));
	 }
}
