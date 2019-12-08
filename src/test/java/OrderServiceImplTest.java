import com.zking.idea.model.TOrder;
import com.zking.idea.service.OrderService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.*;


public class OrderServiceImplTest extends BaseTest{

    @Autowired
    private OrderService orderService;

    @Test
    public void list() {
        TOrder order = new TOrder();
        List<TOrder> ls = orderService.list(order);
        for (TOrder s:ls){
            System.out.println(s);
        }
    }
}