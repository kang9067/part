package service;

import service.impl.base.IBaseService;
import model.Admin;
import model.base.BaseArgument;

public interface IAdminService extends IBaseService{
    
    public BaseArgument insert(BaseArgument arg);
    
    public BaseArgument select(BaseArgument arg);
    
    public BaseArgument selectPaging(BaseArgument arg);
    
    public BaseArgument update(BaseArgument arg);
    
    public BaseArgument delete(BaseArgument arg);

}