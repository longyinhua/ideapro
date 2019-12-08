package com.zking.idea.model;


import lombok.ToString;

import java.util.ArrayList;
import java.util.List;


@ToString
public class TCustomer {


  private List<TOrder> orders = new ArrayList<>();

  public List<TOrder> getOrders() {
    return orders;
  }

  public void setOrders(List<TOrder> orders) {
    this.orders = orders;
  }

  private long customerId;
  private String customerName;


  public long getCustomerId() {
    return customerId;
  }

  public void setCustomerId(long customerId) {
    this.customerId = customerId;
  }


  public String getCustomerName() {
    return customerName;
  }

  public void setCustomerName(String customerName) {
    this.customerName = customerName;
  }

}
