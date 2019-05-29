package ua.training.springboot.task2.model.service;

import ua.training.springboot.task2.model.beans.TaxPayer;
import ua.training.springboot.task2.model.beans.income.Income;

import java.util.List;

public class PayerGeneralIncome {
    public long count(TaxPayer taxPayer) {
        List<Income> incomeList = taxPayer.getIncomeList();
        return incomeList.stream()
                .map(Income::getAmount).mapToInt(Integer::intValue).sum();
    }
}