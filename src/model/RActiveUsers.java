package model;

import java.util.Date;
import model.base.BaseModel;

public class RActiveUsers extends BaseModel implements java.io.Serializable {

    /** aid */
    private Integer aid;

    /** uid */
    private Integer uid;



    /**
     * 获取 aid 的值
     * @return Integer
     */
    public Integer getAid() {
        return aid;
    }
    
    /**
     * 设置aid 的值
     * @param Integer aid
     */
    public RActiveUsers setAid(Integer aid) {
        this.aid = aid;
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
    public RActiveUsers setUid(Integer uid) {
        this.uid = uid;
        return this;
    }


	public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append(this.getClass().getName());
        sb.append("; id=" + (id == null ? "null" : id.toString()));
        sb.append("; createTime=" + (createTime == null ? "null" : createTime.toString()));
        sb.append("; modifyTime=" + (modifyTime == null ? "null" : modifyTime.toString()));
        sb.append("; aid=" + (aid == null ? "null" : aid.toString()));
        sb.append("; uid=" + (uid == null ? "null" : uid.toString()));

        return sb.toString();
    }
}