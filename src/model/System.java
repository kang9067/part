package model;

import java.util.Date;
import model.base.BaseModel;

public class System extends BaseModel implements java.io.Serializable {

    /** key */
    private String key;

    /** value */
    private String value;

    /** 描述 */
    private String desc;



    /**
     * 获取 key 的值
     * @return String
     */
    public String getKey() {
        return key;
    }
    
    /**
     * 设置key 的值
     * @param String key
     */
    public System setKey(String key) {
        this.key = key;
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
    public System setValue(String value) {
        this.value = value;
        return this;
    }

    /**
     * 获取 描述 的值
     * @return String
     */
    public String getDesc() {
        return desc;
    }
    
    /**
     * 设置描述 的值
     * @param String desc
     */
    public System setDesc(String desc) {
        this.desc = desc;
        return this;
    }


	public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append(this.getClass().getName());
        sb.append("; id=" + (id == null ? "null" : id.toString()));
        sb.append("; key=" + (key == null ? "null" : key.toString()));
        sb.append("; value=" + (value == null ? "null" : value.toString()));
        sb.append("; desc=" + (desc == null ? "null" : desc.toString()));

        return sb.toString();
    }
}