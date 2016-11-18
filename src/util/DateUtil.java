package util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	public static Date  stringToDate(String string){
		try {
			return new SimpleDateFormat("yyyy-MM-dd").parse(string);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}
}
