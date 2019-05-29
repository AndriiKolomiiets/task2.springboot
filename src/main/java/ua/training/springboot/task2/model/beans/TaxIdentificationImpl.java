package ua.training.springboot.task2.model.beans;

import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

@Component
public class TaxIdentificationImpl implements TaxIdentification {
    private int taxId;
    private String taxCategory;

    public TaxIdentificationImpl() {
    }

    public TaxIdentificationImpl(int taxId, String taxCategory) {
        this.taxId = taxId;
        this.taxCategory = taxCategory;
    }

    @Bean
    public int getTaxId() {
        return taxId;
    }

    public void setTaxId(int taxId) {
        this.taxId = taxId;
    }

    @Bean
    public String getTaxCategory() {
        return taxCategory;
    }

    public void setTaxCategory(String taxCategory) {
        this.taxCategory = taxCategory;
    }

}
