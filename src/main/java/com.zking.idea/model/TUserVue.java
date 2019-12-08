package com.zking.idea.model;


import org.springframework.validation.annotation.Validated;
import sun.plugin2.message.Message;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

public class TUserVue {

  //定义分组接口
  public static  interface  ValidataGroup{
    public  static interface Add{}
    public static  interface Edit{}
  }

  @NotNull(message = "sid不能为空",groups = ValidataGroup.Edit.class)
  private Integer id;

  @NotBlank(message = "姓名不能为空",groups = {ValidataGroup.Edit.class,ValidataGroup.Add.class})
  private String username;

  @NotBlank(message = "密码不能为空",groups = {ValidataGroup.Add.class,ValidataGroup.Edit.class})
  private String password;


  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }


  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }


  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

    @Override
    public String toString() {
        return "TUserVue{" +
                "id='" + id + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
