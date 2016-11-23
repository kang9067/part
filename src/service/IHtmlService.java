package service;

import service.impl.base.IBaseService;
import model.Html;
import model.base.BaseArgument;

public interface IHtmlService extends IBaseService{
    
    public BaseArgument insert(BaseArgument arg);
    
    public BaseArgument select(BaseArgument arg);
    
    public BaseArgument selectPaging(BaseArgument arg);
    
    public BaseArgument update(BaseArgument arg);
    
    public BaseArgument delete(BaseArgument arg);

}