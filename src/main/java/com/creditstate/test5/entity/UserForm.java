package com.creditstate.test5.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author weiming.zhu
 * @date 2021/1/29 16:09
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder(toBuilder = true)
public class UserForm {
    private String name;
    private String sex;
    private String birthday;
}
