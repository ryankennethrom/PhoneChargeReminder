This is an android app reminds user to charge their phone based on the user's location and the phone's battery life.

# How it works

while True:
	wifiConnection = getWifiConnection()
	battery = getBattery()
	userPreference = getUserPreference()
	if wifiConnection == HOMEWIFICONNECTION and battery.percentage <= userPreference.batteryPercentageThresh and not battery.isCharging():
		ringLoudAlarm()
