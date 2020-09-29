package edu.bit.hbly.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class MessageVO {
	private String to;
	private String subject;
	private String content;
	
	@Override
	public String toString() {
		return "MessageVO [to : "+to+", subject : "+subject+", content : "+content+"]";
	}
}
