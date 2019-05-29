package ua.training.springboot.task2.model.service.taxcategory;

import java.io.IOException;

public class TaxManager {
    public TaxCategoryCommand getTaxServiceByCategory(String category) throws IOException {
        switch (category) {
            case "1 category":
                return new FirstTaxCategoryCommand();
            case "2 category":
                return new SecondTaxCategoryCommand();
            case "3 category":
                return new ThirdTaxCategoryCommand();
            default:
                throw new IOException("Unknown tax taxcategory: " + category);
        }
    }

  /*  public int countAnnualIncome(String taxcategory) throws IOException {
        return getTaxServiceByCategory(taxcategory).getAllIncomeAmount();
    }

    public int countTaxes(String taxcategory) throws IOException {
        return getTaxServiceByCategory(taxcategory).getTaxAmount();
    }*/
}
