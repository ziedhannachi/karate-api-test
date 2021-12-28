package com.karate.test_api.utils;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;

public class WriteFile {
	
	public static void writeFile(String fileName, String fileContent) {
		File file = new File(fileName);
		try (Writer fileWriter = new FileWriter(file);){
			fileWriter.write(fileContent);
		}catch (IOException e){
			e.printStackTrace();
		}
	}

}
