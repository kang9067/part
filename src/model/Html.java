package model;

import java.util.Date;
import model.base.BaseModel;

public class Html extends BaseModel implements java.io.Serializable {

    /** key */
    private String name;

    /** value */
    private String value;

    /** 描述 */
    private String beif;



    /**
     * 获取 key 的值
     * @return String
     */
    public String getName() {
        return name;
    }
    
    /**
     * 设置key 的值
     * @param String name
     */
    public Html setName(String name) {
        this.name = name;
        return this;
    }

    /**
     * 获取 value 的值
     * @return String
     */
    public String getValue() {
        return value;
    }
    
    /**
     * 设置value 的值
     * @param String value
     */
    public Html setValue(String value) {
        this.value = value;
        return this;
    }

    /**
     * 获取 描述 的值
     * @return String
     */
    public String getBeif() {
        return beif;
    }
    
    /**
     * 设置描述 的值
     * @param String beif
     */
    public Html setBeif(String beif) {
        this.beif = beif;
        return this;
    }


	public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append(this.getClass().getName());
        sb.append("; id=" + (id == null ? "null" : id.toString()));
        sb.append("; name=" + (name == null ? "null" : name.toString()));
        sb.append("; value=" + (value == null ? "null" : value.toString()));
        sb.append("; beif=" + (beif == null ? "null" : beif.toString()));

        return sb.toString();
    }
}