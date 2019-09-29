package com.chen.PLoveLibrary.mybatis;

import java.util.List;

import com.chen.PLoveLibrary.domain.BookClass;
import com.chen.PLoveLibrary.parameter.Parameter;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

/**
   * @类 名： BookClassMapper
   * @功能描述： TODO 图书编目
   * @作者信息： Jiangxf
   * @创建时间： 2018年4月22日下午2:24:12
   * @修改备注：
   */
public interface BookClassMapper {
	int insertBookClass(BookClass bookClass);
	int deleteBookClassByID(BookClass bookClass);
	int updateBookClass(BookClass bookClass);
	List<BookClass> selectBookClassByID(Parameter parameter);
	int getCount(Parameter parameter);
	BookClass findBookClassByID(Parameter parameter);
	List<BookClass>selectAllBkCatalog();

}
