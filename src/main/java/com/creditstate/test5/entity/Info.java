package com.creditstate.test5.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author weiming.zhu
 * @date 2021/1/22 15:02
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder(toBuilder = true)
public class Info {
    private String id;
    private String name;
}
