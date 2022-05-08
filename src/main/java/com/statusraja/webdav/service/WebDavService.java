package com.statusraja.webdav.service;

import java.io.InputStream;

public interface WebDavService {

	InputStream downloadFile(String filePath);

}
