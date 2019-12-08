import com.zking.idea.model.TCustomer;
import com.zking.idea.model.TOrder;
import com.zking.idea.service.CustomerService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class CustomerServiceImplTest extends  BaseTest{

    @Autowired
    private CustomerService customerserviceimpl;

    @Test
    public void list() {
        Map<String,Object> param = new HashMap<>();
        param.put("customerName","");
        List<TCustomer> lst=customerserviceimpl.list(param);
        for (TCustomer c:lst) {
            System.out.println(c);
            System.out.println("--------");
            for (TOrder s:c.getOrders()) {
                System.out.println(s);
            }
        }
    }
}