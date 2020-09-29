package edu.bit.hbly;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * 통신 모듈 구현
 * @param connectTimeoutMilsec	: 연결이 이뤄지기까지의 제한 시간
 * @param readTimeotMilsec		: 데이터를 다 읽기까지의 제한 시간
 */
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class SimpleConnector implements ResourceConnector {

	private int connectTimeoutMilsec;
	private int readTimeotMilsec;
	
	
	@Override
	public InputStream open(String url) throws IOException {
		URLConnection con = new URL(url).openConnection();
		con.setConnectTimeout(connectTimeoutMilsec);
		con.setReadTimeout(readTimeotMilsec);
		
		return con.getInputStream();
	}
	

}
