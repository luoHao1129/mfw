package com.mfw.travels.service;

import com.mfw.api.dto.Content;

public interface ContentService {
    void addContent(Content content);
    void updateContent(Content content);
    Content findContentByIdAndSequence(Content content);
}
