package model.base;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class BaseModel {
	protected Integer id;
	protected Date createTime;
	protected Date modifyTime;
	public Integer getId() {
		return id;
	}

	public Date getCreatetime() {
		return createTime;
	}
	
	public void setCreatetime(Date createtime) {
		this.createTime = createtime;
	}
	public Date getModifytime() {
		return modifyTime;
	}

	public void setModifytime(Date modifyTime) {
		this.modifyTime = modifyTime;
	}

	public BaseModel setId(Integer id) {
		this.id = id;
		return this;
	}
	
	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createtime) {
		this.createTime = createtime;
	}
	public Date getModifyTime() {
		return modifyTime;
	}

	public void setModifyTime(Date modifyTime) {
		this.modifyTime = modifyTime;
	}


}
