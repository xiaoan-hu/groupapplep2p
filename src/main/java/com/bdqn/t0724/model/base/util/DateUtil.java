package com.bdqn.t0724.model.base.util;


import java.util.Calendar;
import java.util.Date;

public class DateUtil {
  private DateUtil(){};
  public static Date getEndDate(Date date){
    // 设置时间
    Calendar c = Calendar.getInstance();
    c.setTime(date);
    c.set(Calendar.HOUR_OF_DAY,23);
    c.set(Calendar.MINUTE,59);
    c.set(Calendar.SECOND,59);
    return c.getTime();
  }
  public static Date getBeginDate(Date date){
    Calendar c = Calendar.getInstance();
    c.setTime(date);
    c.set(Calendar.HOUR_OF_DAY,0);
    c.set(Calendar.MINUTE,0);
    c.set(Calendar.SECOND,0);
    return c.getTime();
  }
  public static void main(String[] args) {
    Date beginDate = getBeginDate(new Date());
    System.out.println("beginDate = " + beginDate.toLocaleString());
  }
  //获取两个时间之差
  public static long getBetweenTime(Date current,Date other){
	  return Math.abs((current.getTime() - other.getTime())/1000);
  }
}
