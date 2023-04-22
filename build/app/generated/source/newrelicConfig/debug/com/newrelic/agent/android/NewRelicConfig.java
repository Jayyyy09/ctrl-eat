package com.newrelic.agent.android;
final class NewRelicConfig {
	static final String VERSION = "6.10.0";
	static final String BUILD_ID = "da7714ae-14d3-4032-b6b7-a02eabc0e2c0";
	static final Boolean OBFUSCATED = false;
	static final String MAP_PROVIDER = "r8";
	public static String getBuildId() {
		return BUILD_ID;
	}
}
