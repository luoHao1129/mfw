package com.mfw.travels.service.impl;

import com.mfw.api.dto.Content;
import com.mfw.travels.dao.ContentDao;
import com.mfw.travels.service.ContentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ContentServiceImpl implements ContentService {

    @Resource
    private ContentDao contentDao;

    @Override
    public void addContent(Content content) {

        if(content.getPic() == null){
            content.setPic("");
        }
        contentDao.addContent(content);

    }

    @Override
    public void updateContent(Content content) {
        contentDao.updateContent(content);
    }

    @Override
    public Content findContentByIdAndSequence(Content content) {
        return contentDao.selectContentByIdAndSequence(content);
    }
}
