package com.order.management.dao;

import java.util.List;

import com.order.management.domain.Company;
import com.order.management.domain.User;

public interface CompanyDao {
public void saveUser ( Company company );
public List<Company> getCompanies();
}
