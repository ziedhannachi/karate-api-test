package com.karate.test_api;

import org.junit.runner.RunWith;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;

@RunWith(Karate.class)
@KarateOptions(
		features="src/test/resources",
		tags="@user-details"
		)
public class TestRunner {

}
