package model;



import model.base.BaseModel;

public class Users extends BaseModel implements java.io.Serializable {

    /** name */
    private String name;

    /** pwd */
    private String pwd;

    /** nickname */
    private String nickname;

    /** headimg */
    private String headimg;

    /** real_name */
    private String realName;

    /** 现住城市 */
    private String city;

    /** 0-未知 1-男 2-女 */
    private Integer gender;

    /** email */
    private String email;

    /** 详细地址 */
    private String addr;



    /**
     * 获取 name 的值
     * @return String
     */
    public String getName() {
        return name;
    }
    
    /**
     * 设置name 的值
     * @param String name
     */
    public Users setName(String name) {
        this.name = name;
        return this;
    }

    /**
     * 获取 pwd 的值
     * @return String
     */
    public String getPwd() {
        return pwd;
    }
    
    /**
     * 设置pwd 的值
     * @param String pwd
     */
    public Users setPwd(String pwd) {
        this.pwd = pwd;
        return this;
    }

    /**
     * 获取 nickname 的值
     * @return String
     */
    public String getNickname() {
        return nickname;
    }
    
    /**
     * 设置nickname 的值
     * @param String nickname
     */
    public Users setNickname(String nickname) {
        this.nickname = nickname;
        return this;
    }

    /**
     * 获取 headimg 的值
     * @return String
     */
    public String getHeadimg() {
        return headimg;
    }
    
    /**
     * 设置headimg 的值
     * @param String headimg
     */
    public Users setHeadimg(String headimg) {
        this.headimg = headimg;
        return this;
    }

    /**
     * 获取 real_name 的值
     * @return String
     */
    public String getRealName() {
        return realName;
    }
    
    /**
     * 设置real_name 的值
     * @param String realName
     */
    public Users setRealName(String realName) {
        this.realName = realName;
        return this;
    }

    /**
     * 获取 现住城市 的值
     * @return String
     */
    public String getCity() {
        return city;
    }
    
    /**
     * 设置现住城市 的值
     * @param String city
     */
    public Users setCity(String city) {
        this.city = city;
        return this;
    }

    /**
     * 获取 0-未知 1-男 2-女 的值
     * @return Object
     */
    public Object getGender() {
        return gender;
    }
    
    /**
     * 设置0-未知 1-男 2-女 的值
     * @param Object gender
     */
    public Users setGender(Integer gender) {
        this.gender = gender;
        return this;
    }

    /**
     * 获取 email 的值
     * @return String
     */
    public String getEmail() {
        return email;
    }
    
    /**
     * 设置email 的值
     * @param String email
     */
    public Users setEmail(String email) {
        this.email = email;
        return this;
    }

    /**
     * 获取 详细地址 的值
     * @return String
     */
    public String getAddr() {
        return addr;
    }
    
    /**
     * 设置详细地址 的值
     * @param String addr
     */
    public Users setAddr(String addr) {
        this.addr = addr;
        return this;
    }


	public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append(this.getClass().getName());
        sb.append("; id=" + (id == null ? "null" : id.toString()));
        sb.append("; name=" + (name == null ? "null" : name.toString()));
        sb.append("; pwd=" + (pwd == null ? "null" : pwd.toString()));
        sb.append("; nickname=" + (nickname == null ? "null" : nickname.toString()));
        sb.append("; headimg=" + (headimg == null ? "null" : headimg.toString()));
        sb.append("; createtime=" + (createTime == null ? "null" : createTime.toString()));
        sb.append("; modifytime=" + (modifyTime == null ? "null" : modifyTime.toString()));
        sb.append("; realName=" + (realName == null ? "null" : realName.toString()));
        sb.append("; city=" + (city == null ? "null" : city.toString()));
        sb.append("; gender=" + (gender == null ? "null" : gender.toString()));
        sb.append("; email=" + (email == null ? "null" : email.toString()));
        sb.append("; addr=" + (addr == null ? "null" : addr.toString()));

        return sb.toString();
    }
}