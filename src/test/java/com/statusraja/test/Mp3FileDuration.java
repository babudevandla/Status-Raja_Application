package com.statusraja.test;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import javax.sound.sampled.AudioFileFormat;
import javax.sound.sampled.AudioSystem;
import javax.sound.sampled.UnsupportedAudioFileException;

import org.tritonus.share.sampled.file.TAudioFileFormat;

import javazoom.spi.mpeg.sampled.file.MpegAudioFileReader;

public class Mp3FileDuration {

	public static void main(String[] args) throws UnsupportedAudioFileException, IOException {
		 File file = new File("D:\\test_songs\\Kalimba.mp3");
		 AudioFileFormat baseFileFormat = new MpegAudioFileReader().getAudioFileFormat(file);
		 Map properties = baseFileFormat.properties();
		 Long duration = (Long) properties.get("duration");
		 int samples =  (int) (duration/1000/1000)*44100;
		 System.out.println(samples);
		// getDurationsWithMp3(file);
		 getDurationWithMp3Spi(file);
	}

	private static void getDurationWithMp3Spi(File file) throws UnsupportedAudioFileException, IOException {

	    AudioFileFormat fileFormat = AudioSystem.getAudioFileFormat(file);
	    if (fileFormat instanceof TAudioFileFormat) {
	        Map<?, ?> properties = ((TAudioFileFormat) fileFormat).properties();
	        String key = "duration";
	        Long microseconds = (Long) properties.get(key);
	        int mili = (int) (microseconds / 1000);
	        int sec = (mili / 1000) % 60;
	        int min = (mili / 1000) / 60;
	        System.out.println("time = " + min + ":" + sec);
	    } else {
	        throw new UnsupportedAudioFileException();
	    }
	}
	
	
	}
