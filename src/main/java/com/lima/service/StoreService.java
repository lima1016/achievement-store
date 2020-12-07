package com.lima.service;

import com.lima.web.store.domain.Store;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface StoreService {

    List<Store> list() throws Exception;
}