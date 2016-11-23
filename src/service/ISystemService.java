package service;

import service.impl.base.IBaseService;
import model.System;
import model.base.BaseArgument;

public interface ISystemService extends IBaseService{
    
    public BaseArgument insert(BaseArgument arg);
    
    public BaseArgument select(BaseArgument arg);
    
    public BaseArgument selectPaging(BaseArgument arg);
    
    public BaseArgument update(BaseArgument arg);
    
    public BaseArgument delete(BaseArgument arg);

}