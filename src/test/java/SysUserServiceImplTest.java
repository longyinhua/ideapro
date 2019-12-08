import com.zking.idea.model.TSysUser;
import com.zking.idea.service.IUserService;
import com.zking.idea.service.UserService;
import lombok.ToString;
import org.junit.Test;

import javax.annotation.Resource;

public class SysUserServiceImplTest extends  BaseTest{

    @Resource
    private IUserService userService;

    @Test
    public  void  load(){
        TSysUser user = userService.load("zhangsan");
        System.out.println(user);
    }

}
