package ua.training.springboot.task2.model.beans.income;

public interface Income {
    void setAmount(int amountOfIncome);
    int getAmount();
    void setIncomeType(String incomeType);
    String getIncomeType();
}
