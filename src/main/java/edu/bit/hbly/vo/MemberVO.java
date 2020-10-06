package edu.bit.hbly.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class MemberVO {
	/*
		create table tbl_member(
		userId varchar2(50) not null,
		userPassword varchar2(100) not null,
		userName varchar2(30) not null,
		userBirth char(8) not null, --생년월일 추가
		userGender char(1) not null  --성별 추가
		CONSTRAINT tbl_member_userGender_ck check(userGender in('M','F')),
		userNickname varchar2(30) not null,
		userPhoneNumber varchar2(20) not null,
		userAddress1 varchar2(20) not null,
		userAddress2 varchar2(50) not null,
		userAddress3 varchar2(50) not null,
		userRegidate date default sysdate,
		verify number default 0,
		primary key(userId)
		);
	 */
	
	private String userId;
	private String userPassword;
	private String userName;
	private String userBirth;
	private String userGender;
	private String userNickname;
	private String userPhoneNumber;
	private String userAddress1;
	private String userAddress2;
	private String userAddress3;
	private Date userRegidate;
	private int verify;
	
}
