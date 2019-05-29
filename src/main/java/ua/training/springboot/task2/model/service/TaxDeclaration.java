package ua.training.springboot.task2.model.service;

import ua.training.springboot.task2.model.beans.TaxPayer;

import java.io.IOException;

public interface TaxDeclaration {
    double getTaxes(TaxPayer taxPayer) throws IOException;
    long countEntireIncome(TaxPayer taxPayer);
}
