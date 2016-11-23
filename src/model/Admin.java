package model;

import java.util.Date;
import model.base.BaseModel;

public class Admin extends BaseModel implements java.io.Serializable {

    /** name */
    private String name;

    /** pwd */
    private String pwd;



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
    public Admin setName(String name) {
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
    public Admin setPwd(String pwd) {
        this.pwd = pwd;
        return this;
    }


	public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append(this.getClass().getName());
        sb.append("; id=" + (id == null ? "null" : id.toString()));
        sb.append("; createTime=" + (createTime == null ? "null" : createTime.toString()));
        sb.append("; modifyTime=" + (modifyTime == null ? "null" : modifyTime.toString()));
        sb.append("; name=" + (name == null ? "null" : name.toString()));
        sb.append("; pwd=" + (pwd == null ? "null" : pwd.toString()));

        return sb.toString();
    }
}