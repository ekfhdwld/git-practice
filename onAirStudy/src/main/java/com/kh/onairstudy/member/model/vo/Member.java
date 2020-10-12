package com.kh.onairstudy.member.model.vo;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString

public class Member implements Serializable{
	private String memberId;
	private String memberName;
	private String password;
	private String memberRole;
	private String phone;
	private int diligentPoint;
	private String blacklist;
	private String withdraw;
	private String memberComment;
	private int category;
}
