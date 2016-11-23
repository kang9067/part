package service.impl;

import org.springframework.stereotype.Service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import model.Html;
import model.base.BaseArgument;
import service.impl.base.BaseService;
import service.IHtmlService;
import com.github.pagehelper.Page;

@Service
public class HtmlServiceImpl extends BaseService implements IHtmlService {
    private static final Logger logger = Logger.getLogger(HtmlServiceImpl.class);

    public BaseArgument select(BaseArgument arg) {
        try {
            Html entity = (Html) arg.getObj();
            List<Html> dataList = dao.select(getMapper(entity, "select"), entity);
            if(dataList != null){
                arg.success().setToRtn("list", dataList);
            } else {
                arg.fail();
            }
        } catch(Exception e){
            logger.error("查询数据失败：" + e.getMessage(), e);
            arg.fail("查询失败");
        }
        return arg;
    }
    
    public BaseArgument selectPaging(BaseArgument arg) {
        try {
            Html entity = (Html) arg.getObj();
            Page page = (Page) arg.getReq("page");
            List<Html> dataList = dao.select(getMapper(entity, "select"), entity, new RowBounds(page.getStartRow(), page.getPageSize()));
            if(dataList != null){
                arg.success().setToRtn("list", dataList);
            } else {
                arg.fail();
            }
        } catch(Exception e){
            logger.error("分页查询数据失败：" + e.getMessage(), e);
            arg.fail("分页查询失败");
        }
        return arg;
    }
    
    public BaseArgument insert(BaseArgument arg) {
        try {
            Html entity = (Html) arg.getObj();
            int state = dao.insert(getMapper(entity, "insert"), entity);
            if(state != -1){
                arg.success().setObj(entity).setNum(state);
            } else {
                arg.fail();
            }
        } catch(Exception e){
            logger.error("新增数据失败：" + e.getMessage(), e);
            arg.fail("新增数据失败");
        }
        return arg;
    }
    
    public BaseArgument update(BaseArgument arg) {
        try {
            Html entity = (Html) arg.getObj();
            int state = dao.update(getMapper(entity, "update"), entity);
            if(state != -1){
                arg.success().setObj(entity).setNum(state);
            } else {
                arg.fail();
            }
        } catch(Exception e){
            logger.error("修改数据失败：" + e.getMessage(), e);
            arg.fail("修改数据失败");
        }
        return arg;
    }
    
    public BaseArgument delete(BaseArgument arg) {
        try {
            Html entity = (Html) arg.getObj();
            int state = dao.delete(getMapper(entity, "delete"), entity);
            if(state != -1){
                arg.success().setObj(entity).setNum(state);
            } else {
                arg.fail();
            }
        } catch(Exception e){
            logger.error("修改数据失败：" + e.getMessage(), e);
            arg.fail("修改数据失败");
        }
        return arg;
    }

}