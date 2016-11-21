package util.wangyi;

import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

/**
 * 网页短信工具
 * @author tk xx
 *
 */
public class MobileMessageSend {
	//发送验证码
    private static final String SEND_TEMPLATE="https://api.netease.im/sms/sendtemplate.action";//请求的URL
    private static final String SEND_CODE="https://api.netease.im/sms/sendcode.action";//发送验证码
    private static final String VIF_CODE = "https://api.netease.im/sms/verifycode.action";
    private static final String APP_KEY="8d5299abd50fd8bc8425fd5fce1bc761";//账号
    private static final String APP_SECRET="6d1c19e3596e";//密码
   //private static final String MOULD_ID="填入设置的模板ID";//模板ID
    private static final String NONCE="10";
    
    /**
     * 发送验证码
     * @param phone
     * @return 验证码
     * @throws IOException
     */
    public static String getVifCode(String phone) throws IOException{
    	return sendMsg(phone,null).getString("obj");
    }
    public static boolean vifCode(String phone,String code) throws IOException{
    	return "200".equalsIgnoreCase(sendMsg(phone,code).getString("code"));
    }
    /**
     * 
     * @param phone
     * @param msg
     * @return  
     * {"code":200,"msg":"1","obj":"3068"}
     * code:提示信息
     * msg:
     * obj:验证码
     * @throws IOException
     */
    private static JSONObject sendMsg(String phone,String code) throws IOException {

        CloseableHttpClient httpclient = HttpClients.createDefault();
        HttpPost post = null;
        
        if(code != null){ 
        	post = new HttpPost(VIF_CODE);
        }else{
        	post = new HttpPost(SEND_CODE);
        }
        String curTime=String.valueOf((new Date().getTime()/1000L));
        String checkSum=CheckSumBuilder.getCheckSum(APP_SECRET,NONCE,curTime);

        //设置请求的header
        post.addHeader("AppKey",APP_KEY);
        post.addHeader("Nonce",NONCE);
        post.addHeader("CurTime",curTime);
        post.addHeader("CheckSum",checkSum);
        post.addHeader("Content-Type","application/x-www-form-urlencoded;charset=utf-8");

        //设置请求参数
        List<NameValuePair> nameValuePairs =new ArrayList<NameValuePair>();
        //nameValuePairs.add(new BasicNameValuePair("templateid",MOULD_ID));
        nameValuePairs.add(new BasicNameValuePair("mobile",phone));
        if(code != null)
        	nameValuePairs.add(new BasicNameValuePair("code",code));
        //nameValuePairs.add(new BasicNameValuePair("params","['"+msg+"']"));

        post.setEntity(new UrlEncodedFormEntity(nameValuePairs,"utf-8"));

        //执行请求
        HttpResponse response=httpclient.execute(post);

        String responseEntity= EntityUtils.toString(response.getEntity(),"utf-8");
        System.out.println(responseEntity);
        //判断是否发送成功，发送成功返回true
       return JSON.parseObject(responseEntity);
    }
}
/**
 * <html><head><title>Apache Tomcat/7.0.52 - Error report</title><style>
 * <!--
 * H1 {font-family:Tahoma,Arial,sans-serif;color:white;background-color:#525D76;font-size:22px;} 
 * H2 {font-family:Tahoma,Arial,sans-serif;color:white;background-color:#525D76;font-size:16px;} 
 * H3 {font-family:Tahoma,Arial,sans-serif;color:white;background-color:#525D76;font-size:14px;} 
 * BODY {font-family:Tahoma,Arial,sans-serif;color:black;background-color:white;} 
 * B {font-family:Tahoma,Arial,sans-serif;color:white;background-color:#525D76;} 
 * P {font-family:Tahoma,Arial,sans-serif;background:white;color:black;font-size:12px;}
 * A {color : black;}A.name {color : black;}HR {color : #525D76;}-->
 * </style> 
 * </head>
 * <body><h1>HTTP Status 400 - Required int parameter 'templateid' is not present</h1>
 * <HR size="1" noshade="noshade"><p><b>type</b> Status report</p><p><b>message</b> 
 * <u>Required int parameter 'templateid' is not present</u></p><p><b>description</b> 
 * <u>The request sent by the client was syntactically incorrect.</u></p>
 * <HR size="1" noshade="noshade"><h3>Apache Tomcat/7.0.52</h3></body>
 * </html>

 *
 */



class CheckSumBuilder {
	  //计算并获取checkSum
  public static String getCheckSum(String appSecret,String nonce,String curTime){
      return encode("SHA",appSecret+nonce+curTime);
  }

  private static String encode(String algorithm,String value){
      if(value==null){
          return null;
      }

      try {
          MessageDigest messageDigest=MessageDigest.getInstance(algorithm);
          messageDigest.update(value.getBytes());
          return getFormattedText(messageDigest.digest());
      } catch (Exception e) {
          throw new RuntimeException(e);
      }
  }

  private static String getFormattedText(byte[] bytes){
      int len=bytes.length;
      StringBuilder sb=new StringBuilder(len*2);
      for(int $i=0;$i<len;$i++){
          sb.append(HEX_DIGITS[(bytes[$i]>>4)&0x0f]);
          sb.append(HEX_DIGITS[bytes[$i]&0x0f]);
      }
      return sb.toString();
  }

  private static final char[] HEX_DIGITS={'0','1','2','3','4','5','6',
          '7','8','9','a','b','c','d','e','f'};
}