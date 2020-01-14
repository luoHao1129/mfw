package com.mfw.travels.service.impl;



import com.mfw.api.dto.Content;
import com.mfw.api.dto.Travels;
import com.mfw.api.dto.UserDTO;
import com.mfw.travels.dao.ContentDao;
import com.mfw.travels.dao.TravelsDao;
import com.mfw.travels.service.TravelsService;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.UUID;


@Service("travelsService")
@CacheConfig
public class TravelsServiceImpl implements TravelsService {
	
	@Resource
	private TravelsDao travelsDao;
	@Override
	public void addTravels(Travels travels) {
		if(travels.getTpic() == null||travels.getTpic().equals("") ){

			travels.setTravelstype("2")
					.setPageviews(0)
					.setTpic("img/addyoujibj.jpg")
					.setDestination("")
					.setDate(new Date())
					.setLikeNum(0);
		}else {
			travels.setTravelstype("2")
					.setPageviews(0)
					.setDestination("")
					.setDate(new Date())
					.setLikeNum(0);
		}

		travelsDao.addTravels(travels);
	}

	@Override
	public void deleteTravels(String  id) {
		travelsDao.deleteTravels(id);
		

	}

	@Override
	public void updateTeavels(Travels travels) {

		travelsDao.updateTeavels(travels);

	}

	@Override
	public Travels selectTravelsByDestination(String destination) {
		return travelsDao.selectTravelsByDestination(destination);
	}

	@Override
	public Travels selectTravelsById(String id) {
		return travelsDao.selectTravelsById(id);
		
	}

	@Override
	public Travels findTravelsById(String id) {
		return travelsDao.findTravelsById(id);
	}


	@Override
	public List<Travels> selectAllByAuthorId(String authorId) {
		return  travelsDao.selectAllByAuthorId(authorId);
		
	}

	/**
	 * 分页查询，根据用户点击页数，返回相应页码的数据
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	@Override
	@Cacheable(key = "'travels'+#pageNo")
	public List<Travels> selectLimit(Integer pageNo, Integer pageSize) {
//		防止页码为0的时候产生异常
		if(pageNo == 0 ) {
			pageNo=1;
		}
		pageSize = 9;
//		计算起始行数
		pageNo = (pageNo-1)*pageSize;
		return  travelsDao.selectLimit(pageNo, pageSize);
	}

	@Override
	public int selectCount() {
		return travelsDao.selectCount();
	}

	@Override
	public List<String> selectID() {
		return travelsDao.selectID();
	}


}
