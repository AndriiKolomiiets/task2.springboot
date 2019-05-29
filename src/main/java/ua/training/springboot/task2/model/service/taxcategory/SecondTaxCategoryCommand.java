package ua.training.springboot.task2.model.service.taxcategory;

import ua.training.springboot.task2.model.beans.TaxPayer;
import ua.training.springboot.task2.model.beans.income.Income;

import java.util.List;

public class SecondTaxCategoryCommand implements TaxCategoryCommand {

    @Override
    public double getTaxAmount(TaxPayer taxPayer) {
        List<Income> incomeList = taxPayer.getIncomeList();
        Integer generalIncome = incomeList.stream()
                .map(Income::getAmount).mapToInt(Integer::intValue).sum();
        return generalIncome * 0.15;
    }

}
