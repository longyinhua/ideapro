package com.zking.idea.model;


import lombok.ToString;

import java.util.List;

@ToString(exclude = "news")
public class TCategory {

  private long categoryId;
  private String categoryName;

  private List<TNews> news;

  public List<TNews> getNews() {
    return news;
  }

  public void setNews(List<TNews> news) {
    this.news = news;
  }

  public long getCategoryId() {
    return categoryId;
  }

  public void setCategoryId(long categoryId) {
    this.categoryId = categoryId;
  }


  public String getCategoryName() {
    return categoryName;
  }

  public void setCategoryName(String categoryName) {
    this.categoryName = categoryName;
  }

}
