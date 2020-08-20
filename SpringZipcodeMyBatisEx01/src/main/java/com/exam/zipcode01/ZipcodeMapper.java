package com.exam.zipcode01;

import java.util.List;

public interface ZipcodeMapper {
		
	public abstract List<ZipcodeTO> selectList(String strDong);

}
