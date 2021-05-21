package com.mycompany.myapp;

import java.util.List;
import com.mycompany.myapp.TestVO;

public interface ITester {
	
	//점수 전체 조회 기능
	List<TestVO> selectAllScores();

}
