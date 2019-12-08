import java.text.MessageFormat;
import java.util.Locale;
import java.util.ResourceBundle;

public class LocalTest {
    public  static void main(String[] args){
        //获取当前默认的区域设置，该设置由安装jdk时从操作系统中获取
//        System.out.println(Locale.getDefault());
//        System.out.println(Locale.CHINA);
//        System.out.println(Locale.US);
//        System.out.println(Locale.JAPAN);


        //如果只带path参数，则系统根据默认的区域设置来获取资源
        String path="i18n";
        ResourceBundle r = ResourceBundle.getBundle(path);
        ResourceBundle rr = ResourceBundle.getBundle(path,Locale.US);
//        String name = r.getString("name");
//        System.out.println(name);

        //如果指定locale对象，则通过指定的locale对象来获取资源
//        ResourceBundle rr = ResourceBundle.getBundle(path, Locale.US);
//        String name2 = rr.getString("name");
//        System.out.println(name2);


//
//        String msg = r.getString("message");
//        msg = MessageFormat.format(msg,"鲁斯","杰克");
//        System.out.println(msg);

        String msg2 = rr.getString("message");
        msg2 = MessageFormat.format(msg2,"Rose","Jeck");
        System.out.println(msg2);

    }
}
