package model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import util.DateUtil;
import model.base.BaseModel;

public class Active extends BaseModel implements java.io.Serializable {

    /** time */
    private Date time;

    /** address */
    private String address;

    /** price */
    private Float price;

    /** introduce */
    private String introduce;

    /** ready */
    private String ready;

    /** context */
    private String context;

    /** uid */
    private Integer uid;

    /** enterTime */
    private Date enterTime;

    /** enterAddress */
    private String enterAddress;

    /** launch */
    private String launch;

    /** 0-社会   1-学校  2-社团 */
    private Integer type;

    /** 封面 */
    private String cover;

    /** 活动类型性质 */
    private Integer aTId;

    /** title */
    private String title;

    /** agree */
    private Integer agree;

    /** auther */
    private String auther;



    /**
     * 获取 time 的值
     * @return Date
     */
    public Date getTime() {
        return time;
    }
    
    /**
     * 设置time 的值
     * @param Date time
     */
    @com.alibaba.fastjson.annotation.JSONField(format="yyyy-MM-dd HH:mm:ss")
    public Active setTime(Date time) {
        this.time = time;
        return this;
    }

    /**
     * 获取 address 的值
     * @return String
     */
    public String getAddress() {
        return address;
    }
    
    /**
     * 设置address 的值
     * @param String address
     */
    public Active setAddress(String address) {
        this.address = address;
        return this;
    }

    /**
     * 获取 price 的值
     * @return Float
     */
    public Float getPrice() {
        return price;
    }
    
    /**
     * 设置price 的值
     * @param Float price
     */
    public Active setPrice(Float price) {
        this.price = price;
        return this;
    }

    /**
     * 获取 introduce 的值
     * @return String
     */
    public String getIntroduce() {
        return introduce;
    }
    
    /**
     * 设置introduce 的值
     * @param String introduce
     */
    public Active setIntroduce(String introduce) {
        this.introduce = introduce;
        return this;
    }

    /**
     * 获取 ready 的值
     * @return String
     */
    public String getReady() {
        return ready;
    }
    
    /**
     * 设置ready 的值
     * @param String ready
     */
    public Active setReady(String ready) {
        this.ready = ready;
        return this;
    }

    /**
     * 获取 context 的值
     * @return String
     */
    public String getContext() {
        return context;
    }
    
    /**
     * 设置context 的值
     * @param String context
     */
    public Active setContext(String context) {
        this.context = context;
        return this;
    }

    /**
     * 获取 uid 的值
     * @return Integer
     */
    public Integer getUid() {
        return uid;
    }
    
    /**
     * 设置uid 的值
     * @param Integer uid
     */
    public Active setUid(Integer uid) {
        this.uid = uid;
        return this;
    }

    /**
     * 获取 enterTime 的值
     * @return Date
     */
    @com.alibaba.fastjson.annotation.JSONField(format="yyyy-MM-dd")
    public Date getEnterTime() {
        return enterTime;
    }
    
    /**
     * 设置enterTime 的值
     * @param Date enterTime
     */
    @com.alibaba.fastjson.annotation.JSONField(format="yyyy-MM-dd")
    public Active setEnterTime(String enterTime) {
		this.enterTime = DateUtil.stringToDate(enterTime);
        return this;
    }

    /**
     * 获取 enterAddress 的值
     * @return String
     */
    public String getEnterAddress() {
        return enterAddress;
    }
    
    /**
     * 设置enterAddress 的值
     * @param String enterAddress
     */
    public Active setEnterAddress(String enterAddress) {
        this.enterAddress = enterAddress;
        return this;
    }

    /**
     * 获取 launch 的值
     * @return String
     */
    public String getLaunch() {
        return launch;
    }
    
    /**
     * 设置launch 的值
     * @param String launch
     */
    public Active setLaunch(String launch) {
        this.launch = launch;
        return this;
    }

    /**
     * 获取 0-社会   1-学校  2-社团 的值
     * @return Integer
     */
    public Integer getType() {
        return type;
    }
    
    /**
     * 设置0-社会   1-学校  2-社团 的值
     * @param Integer type
     */
    public Active setType(Integer type) {
        this.type = type;
        return this;
    }

    /**
     * 获取 封面 的值
     * @return String
     */
    public String getCover() {
        return cover;
    }
    
    /**
     * 设置封面 的值
     * @param String cover
     */
    public Active setCover(String cover) {
        this.cover = cover;
        return this;
    }

    /**
     * 获取 活动类型性质 的值
     * @return Integer
     */
    public Integer getATId() {
        return aTId;
    }
    
    /**
     * 设置活动类型性质 的值
     * @param Integer aTId
     */
    public Active setATId(Integer aTId) {
        this.aTId = aTId;
        return this;
    }

    /**
     * 获取 title 的值
     * @return String
     */
    public String getTitle() {
        return title;
    }
    
    /**
     * 设置title 的值
     * @param String title
     */
    public Active setTitle(String title) {
        this.title = title;
        return this;
    }

    /**
     * 获取 agree 的值
     * @return Integer
     */
    public Integer getAgree() {
        return agree;
    }
    
    /**
     * 设置agree 的值
     * @param Integer agree
     */
    public Active setAgree(Integer agree) {
        this.agree = agree;
        return this;
    }

    /**
     * 获取 auther 的值
     * @return String
     */
    public String getAuther() {
        return auther;
    }
    
    /**
     * 设置auther 的值
     * @param String auther
     */
    public Active setAuther(String auther) {
        this.auther = auther;
        return this;
    }


	public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append(this.getClass().getName());
        sb.append("; id=" + (id == null ? "null" : id.toString()));
        sb.append("; createTime=" + (createTime == null ? "null" : createTime.toString()));
        sb.append("; modifyTime=" + (modifyTime == null ? "null" : modifyTime.toString()));
        sb.append("; time=" + (time == null ? "null" : time.toString()));
        sb.append("; address=" + (address == null ? "null" : address.toString()));
        sb.append("; price=" + (price == null ? "null" : price.toString()));
        sb.append("; introduce=" + (introduce == null ? "null" : introduce.toString()));
        sb.append("; ready=" + (ready == null ? "null" : ready.toString()));
        sb.append("; context=" + (context == null ? "null" : context.toString()));
        sb.append("; uid=" + (uid == null ? "null" : uid.toString()));
        sb.append("; enterTime=" + (enterTime == null ? "null" : enterTime.toString()));
        sb.append("; enterAddress=" + (enterAddress == null ? "null" : enterAddress.toString()));
        sb.append("; launch=" + (launch == null ? "null" : launch.toString()));
        sb.append("; type=" + (type == null ? "null" : type.toString()));
        sb.append("; cover=" + (cover == null ? "null" : cover.toString()));
        sb.append("; aTId=" + (aTId == null ? "null" : aTId.toString()));
        sb.append("; title=" + (title == null ? "null" : title.toString()));
        sb.append("; agree=" + (agree == null ? "null" : agree.toString()));
        sb.append("; auther=" + (auther == null ? "null" : auther.toString()));

        return sb.toString();
    }
}