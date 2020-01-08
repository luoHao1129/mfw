package com.mfw.travels.service.impl;



import com.mfw.api.dto.Content;
import com.mfw.api.dto.Travels;
import com.mfw.travels.dao.ContentDao;
import com.mfw.travels.dao.TravelsDao;
import com.mfw.travels.service.TravelsService;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service("travelsService")
@CacheConfig
public class TravelsServiceImpl implements TravelsService {
	
	@Resource
	private TravelsDao travelsDao;
	@Resource
	private ContentDao contentDao;

	@Override
	public void addTravels(Travels travels) {
		travelsDao.addTravels(travels);
		if(null != travels.getContents()) {
			for (Content content : travels.getContents()) {
				contentDao.addContent(content);
			}
		}
	}

	@Override
	public void deleteTravels(int id) {
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


}
