package ua.training.springboot.task2.model.service;

import org.springframework.stereotype.Service;
import ua.training.springboot.task2.model.dao.JdbcDao;
import ua.training.springboot.task2.model.dao.TaxJdbcDao;
import ua.training.springboot.task2.model.beans.TaxPayer;

import java.util.List;

@Service
public class AllTaxPayersService {
    public List<TaxPayer> getAllPayers(){
        JdbcDao jdbcDao= TaxJdbcDao.getInstance();

        return jdbcDao.getAllTaxPayersFromDB();
    }
}
