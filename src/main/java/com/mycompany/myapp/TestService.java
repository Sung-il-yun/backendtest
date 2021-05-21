package com.mycompany.myapp;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.mycompany.myapp.TestVO;
import com.mycompany.myapp.ITester;

@Service
public class TestService {
	
	@Autowired
	private ITester dao;
	
	public List<TestVO> selectAllScores() {
		return dao.selectAllScores();
	}

}
