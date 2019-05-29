package ua.training.springboot.task2.model.beans.income;

import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

@Component
public class IncomeImpl implements Income {
    private int incomeValue;
    private String incomeType;

    public IncomeImpl(int incomeValue, String incomeType) {
        this.incomeValue = incomeValue;
        this.incomeType = incomeType;
    }


    public IncomeImpl(){
    }

    @Override
    public void setAmount(int amountOfIncome) {
        incomeValue = amountOfIncome;
    }

    @Bean
    @Override
    public int getAmount() {
        return incomeValue;
    }

    @Override
    public void setIncomeType(String incomeType) {
        this.incomeType = incomeType;
    }

    @Bean
    @Override
    public String getIncomeType() {
        return incomeType;
    }
}
