package tool.messagesend;

import java.io.IOException;

import org.junit.Test;

import util.wangyi.MobileMessageSend;

public class MobileMessageSendTest {
	public String phone = "18476682462";
	@Test
	public void test(){
		try {
			//MobileMessageSend.sendMsg("18476682462", "你的验证码为%s,感谢你的支持");
			System.out.println(MobileMessageSend.getVifCode(phone));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	@Test
	public void test1(){
		try {
			System.out.println(MobileMessageSend.vifCode(phone,"5365"));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
