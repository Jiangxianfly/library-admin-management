package com.chen.PLoveLibrary.mybatis;

import java.util.List;


import com.chen.PLoveLibrary.domain.Reader;
import com.chen.PLoveLibrary.parameter.Parameter;

public interface ReaderMapper {
	 int insertReader(Reader reader);
	 Reader findReaderByrdID(String rdID);
	 int deleteReaderByrdID(String rdID);
	 int updateReaderByrdID(Reader reader);
	 int getCounts(Parameter parameter);
	 List<Reader>getReaderInfo(Parameter parameter);
	 String findStatusByrdID(String rdID);
	 int updateStatusByrdID(Reader reader);
}
