package ua.training.springboot.task2.model.service.taxcategory;

import ua.training.springboot.task2.model.beans.TaxPayer;

public interface TaxCategoryCommand {
    double getTaxAmount(TaxPayer taxPayer);
}
