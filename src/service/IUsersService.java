package service;

import service.impl.base.BaseService;
import service.impl.base.IBaseService;
import model.base.BaseArgument;

public interface IUsersService extends IBaseService{
    
    public abstract BaseArgument insert(BaseArgument arg);
    
    public abstract BaseArgument select(BaseArgument arg);
    
    public abstract BaseArgument selectPaging(BaseArgument arg);
    
    public abstract BaseArgument update(BaseArgument arg);
    
    public abstract BaseArgument delete(BaseArgument arg);

}