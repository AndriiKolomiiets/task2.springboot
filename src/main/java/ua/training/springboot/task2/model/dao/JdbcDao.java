package ua.training.springboot.task2.model.dao;

import ua.training.springboot.task2.model.beans.TaxPayer;

import java.sql.Connection;
import java.util.List;

public interface JdbcDao {
    Connection connectToDb();
    TaxPayer getUserDataFromDb(TaxPayer taxPayer, int taxId);
    void buildUserInfoIntoDB(int taxId, String firstName, String lastName, String taxCategory,
                             int regularJob, int extraJob, int annualBonus, int benefits,
                             int financialAssistance, int foreignTransaction,
                             int propertySells, int giftedProperty, int giftedMoney, int declarationDate);
    TaxPayer getPayerWithBiggestRegularIncome();
    List<TaxPayer> getTaxPayersByCondition(int min, int max);
    List<TaxPayer> getAllTaxPayersFromDB();
}
