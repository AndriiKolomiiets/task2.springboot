package ua.training.springboot.task2.model.beans;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;
import ua.training.springboot.task2.model.beans.income.Income;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Component
public class TaxPayer {

    @Autowired
    private User user;

    @Autowired
    private TaxIdentification taxIdentification;

    @Autowired
    private Income income;
    private List<Income> incomeList;

    public void setIncome(Income income) {
        this.income = income;
    }

    public List<Income> getIncomeList() {
        return incomeList;
    }

    public void addIncomeToList(Income income) {
        incomeList.add(income);
    }

    public boolean removeIncomeFromList(Income income) {
        return incomeList.remove(income);
    }

    public Income getIncome(int index) {
        return incomeList.get(index);
    }


    public TaxPayer() {
        incomeList = new ArrayList();
    }

    public TaxPayer(User user, TaxIdentification taxIdentification) {
        this.user = user;
        this.taxIdentification = taxIdentification;
        incomeList = new ArrayList();
    }

    public TaxPayer(User user, TaxIdentification taxIdentification, List<Income> incomeList) {
        this.user = user;
        this.taxIdentification = taxIdentification;
        this.incomeList = incomeList;
    }

    public TaxPayer(User user, TaxIdentification taxIdentification, Income income) {
        this.user = user;
        this.taxIdentification = taxIdentification;
        this.income = income;
        this.incomeList = new ArrayList<>();
        this.incomeList.add(income);
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    /*@Bean (name = "payerTaxIdentification")*/
    public TaxIdentification getTaxIdentification() {
        return taxIdentification;
    }

    public void setTaxIdentification(TaxIdentification taxIdentification) {
        this.taxIdentification = taxIdentification;
    }


    @Override
    public String toString() {
        incomeList.stream()
                .map(e -> (e.getIncomeType() + ": " + e.getAmount()))
                .collect(Collectors.toList());
        return "Tax ID: " + taxIdentification.getTaxId() +
                "\nTax category: " + taxIdentification.getTaxCategory() +
                "\nName: " + user.getFirstName() +
                "\nLast Name: " + user.getLastName();
    }
}
