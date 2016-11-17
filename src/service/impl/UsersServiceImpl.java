package service.impl;

import java.util.List;

import model.Users;
import model.base.BaseArgument;

import org.apache.ibatis.session.RowBounds;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import service.IUsersService;
import service.impl.base.BaseService;

import com.github.pagehelper.Page;

@Service
public class UsersServiceImpl  extends BaseService implements IUsersService {
    private static final Logger logger = Logger.getLogger(UsersServiceImpl.class);

    @Override
	public BaseArgument select(BaseArgument arg) {
        try {
            Users entity = (Users) arg.getObj();
            List<Users> dataList = dao.select(getMapper(entity, "select"), entity);
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
    
    @Override
	public BaseArgument selectPaging(BaseArgument arg) {
        try {
            Users entity = (Users) arg.getObj();
            Page page = (Page) arg.getReq("page");
            List<Users> dataList = dao.select(getMapper(entity, "select"), entity, new RowBounds(page.getStartRow(), page.getPageSize()));
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
    
    @Override
	public BaseArgument insert(BaseArgument arg) {
        try {
            Users entity = (Users) arg.getObj();
            int state = dao.insert(getMapper(entity, "insert"), entity);
            if(state != -1){
                arg.success().setObj(entity).setNum(state);
            } else {
                arg.fail();
            }
        } catch(Exception e){
        	 e.printStackTrace();
            logger.error("新增数据失败：" + e.getMessage(), e);
            arg.fail("新增数据失败");
        }
        return arg;
    }
    
    @Override
	public BaseArgument update(BaseArgument arg) {
        try {
            Users entity = (Users) arg.getObj();
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
    
    @Override
	public BaseArgument delete(BaseArgument arg) {
        try {
            Users entity = (Users) arg.getObj();
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