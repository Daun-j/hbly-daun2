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
	
	@Override
	public String toString() {
		return "MessageVO [to : "+to+"]";
	}
}
