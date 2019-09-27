package insert;

import com.chen.PLoveLibrary.domain.BookClass;
import com.chen.PLoveLibrary.mybatis.BookClassMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/mybatisConfig/spring-mybatis.xml","classpath:config/springConfig/applicationContext.xml"})
public class BookClassServiceTest {

    @Resource
    BookClassMapper bookClassMapper;


    @Test
    public void insertBookClass(){
        BookClass bookClass=new BookClass();
        for (int i = 5; i < 20; i++) {
            bookClass.setBkCatalog("TP"+i);
            bookClass.setBkClassName("自动化");
            bookClassMapper.insertBookClass(bookClass);
        }
    }


}
