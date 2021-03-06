package edu.bit.hbly.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class SmsVO {
	private String type;
	private String contentType;
	private String from;
	private String content;
	private MessageVO messages;
	
	
	@Override
	public String toString() {
		return "SmsVO [type : "+type+", contentType : "+contentType+", from : "+
				from+", content : "+content+", messages : "+messages+"]";
	}
}
