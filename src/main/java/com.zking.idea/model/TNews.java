package com.zking.idea.model;


import lombok.ToString;

import java.util.List;

@ToString(exclude = "categories")
public class TNews {

  private long newsId;
  private String title;

  private List<TCategory> categories;

  public List<TCategory> getCategories() {
    return categories;
  }

  public void setCategories(List<TCategory> categories) {
    this.categories = categories;
  }

  public long getNewsId() {
    return newsId;
  }

  public void setNewsId(long newsId) {
    this.newsId = newsId;
  }


  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

}
