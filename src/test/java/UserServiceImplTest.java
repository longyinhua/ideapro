import com.zking.idea.model.TUserVue;
import com.zking.idea.service.UserServiceImpl;
import com.zking.idea.util.PageBean;
import com.zking.idea.vo.UserVo;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.Arrays;
import java.util.List;

public class UserServiceImplTest extends BaseTest{

    //还没有与spring集成，所以此处先通过new 的方式来生成一个service对象
   @Autowired
    private UserServiceImpl userservice ;



    @Test
    public void add(){
        TUserVue uservue=new TUserVue();
//        uservue.setId(100);
        uservue.setUsername("龙银花");
        uservue.setPassword("123456");
        int add=userservice.add(uservue);
        System.out.println(add);
    }

    @Test
    public void edit(){
        TUserVue uservue=new TUserVue();
        uservue.setId(100);
        uservue.setUsername("lyhsa");
        uservue.setPassword("7777");
        int edit=userservice.edit(uservue);
    }

    @Test
    public void load(){
        TUserVue uservue=new TUserVue();
        uservue.setId(100);
        TUserVue s=userservice.load(uservue);
        System.out.println(s);
    }

    @Test
    public void testlist(){
        UserVo uservue=new UserVo();
        List<Integer> ids= Arrays.asList(1,2);
        uservue.setIds(ids);
        List<TUserVue> lst = userservice.LISTS(uservue);
        for(TUserVue s:lst){
            System.out.println(s);
        }
        List<TUserVue> ll = userservice.LISTS(uservue);
        for(TUserVue s:ll){
            System.out.println(s);
        }

    }
    @Test
    public void testlistpage(){
        UserVo uservue=new UserVo();
        PageBean pagebean = new PageBean();
        List<TUserVue> lst = userservice.LISTS(uservue);
        System.out.println(pagebean);
        for(TUserVue s:lst){
            System.out.println(s);
        }
    }

}
