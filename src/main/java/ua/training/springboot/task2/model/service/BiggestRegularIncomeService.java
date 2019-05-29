package ua.training.springboot.task2.model.service;

import org.springframework.stereotype.Service;
import ua.training.springboot.task2.model.dao.JdbcDao;
import ua.training.springboot.task2.model.dao.TaxJdbcDao;
import ua.training.springboot.task2.model.beans.TaxPayer;

@Service
public class BiggestRegularIncomeService {
    public TaxPayer getPayer() {
        JdbcDao jdbcDao = TaxJdbcDao.getInstance();
        return jdbcDao.getPayerWithBiggestRegularIncome();
    }
}
