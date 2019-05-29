package ua.training.springboot.task2.model.service;

import ua.training.springboot.task2.model.dao.JdbcDao;
import ua.training.springboot.task2.model.dao.TaxJdbcDao;
import ua.training.springboot.task2.model.beans.TaxPayer;

import java.util.List;

public class TaxPayersByConditionService {
    public List<TaxPayer> getTaxPayersByCondition (int min, int max) {
        JdbcDao jdbcDao = TaxJdbcDao.getInstance();
        return jdbcDao.getTaxPayersByCondition(min,max);
    }
}
