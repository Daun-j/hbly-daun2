package edu.bit.hbly;

import java.io.IOException;
import java.io.InputStream;


/**
 * 통신 인터페이스 정의
 *
 */
public interface ResourceConnector {
	public InputStream open(String url) throws IOException;
}
