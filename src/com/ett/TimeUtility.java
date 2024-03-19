package com.ett;

import java.time.LocalTime;

public class TimeUtility {
	
	public static String getCurrentTime() {
		LocalTime time=LocalTime.now();
		return time.getHour()+":"+time.getMinute()+":"+time.getSecond();
	}
	
	public static String getTotalTime(String intime,String outtime) {
		int t1=getTimeInSec(intime);
		int t2=getTimeInSec(outtime);
		int total=t2-t1;
		int min=total/60;
		int sec=total%60;
		return min+" Min, "+sec+" Sec";
	}

	private static int getTimeInSec(String time) {
		String[] t=time.split(":");
		int h=Integer.parseInt(t[0]);
		int m=Integer.parseInt(t[1]);
		int s=Integer.parseInt(t[2]);
		return h*3600+m*60+s;
	}

}
