import com.zking.idea.model.TCategory;
import com.zking.idea.model.TNews;
import com.zking.idea.service.NewService;
import org.junit.Test;

import javax.annotation.Resource;
import java.util.List;


public class NewServiceImplTest  extends BaseTest{

    @Resource
    private NewService  newService;

    @Test
    public void list() {
        TNews n = new TNews();
        List<TNews> lst = newService.list(n);
        for (TNews newsa:lst) {
            System.out.println(newsa);
            System.out.println("======");
            for (TCategory c:newsa.getCategories()) {
                System.out.println(c);
            }
        }
    }
}