package com.zking.idea.model;

import lombok.ToString;

@ToString
public class TOrder {

  private long orderId;
  private String orderNo;
  private long cid;

  private TCustomer customer;

  public TCustomer getCustomer() {
    return customer;
  }

  public void setCustomer(TCustomer customer) {
    this.customer = customer;
  }



  public long getOrderId() {
    return orderId;
  }

  public void setOrderId(long orderId) {
    this.orderId = orderId;
  }


  public String getOrderNo() {
    return orderNo;
  }

  public void setOrderNo(String orderNo) {
    this.orderNo = orderNo;
  }


  public long getCid() {
    return cid;
  }

  public void setCid(long cid) {
    this.cid = cid;
  }

}
