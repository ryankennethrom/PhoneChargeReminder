# PhoneChargeReminder
Reminds user to charge their phone based on where they are and the phone's battery life

# How it works

while True:
	wifiConnection = getWifiConnection()
	battery = getBattery()
	userPreference = getUserPreference()
	if wifiConnection == HOMEWIFICONNECTION and battery.percentage <= userPreference.batteryPercentageThresh and not battery.isCharging():
		ringLoudAlarm()
