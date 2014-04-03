# UIDevice+SupportedDevices

### About
An Objective-C category on `UIDevice` that returns devices based on the *supportedDevices* key in the JSON results returned in an [iTunes Lookup API call](http://itunes.apple.com/lookup).

### Changelog (v1.0.1)
- Update iPhone 4**s** result to 4**S** to match iTunes lookup API results

### Installation Instructions
```
pod 'UIDevice-SupportedDevices'
```

or simply drop **UIDevice+SupportedDevices [.h|.m]** into your project, and reference `UIDevice+SupportedDevices.h` in the classes need access to the information it provides.

### The Methods
There are only four class methods in this class. Please note that the term *supported device name*, in the descriptions below, refers to the values in the *supportedDevices* key in the JSON results returned in an [iTunes Lookup API call](http://itunes.apple.com/lookup). 

Please [click here for an example](http://itunes.apple.com/lookup?id=611229001) to witnes, firsthand, what the *supportedDevices* key returns.

- `+ (NSString *)machineName`
	- Returns the hardware name Apple designated to the device
		- E.g., *iPad3,1* stands for the iPad 3 (WiFi-only model)
		- E.g., *iPhone5,3* stands for the iPhone 5c (GSM-only) 
- `+ (NSString *)simulatorNamePhone`
	- Returns *iPhone Simulator*
- `+ (NSString *)simulatorNamePad`
	- Returns *iPad Simulator*
- `+ (NSString *)supportedDeviceName`
	- Returns the supported device name of current device
		- E.g., *iPad3,1* returns *iPadThirdGen*
		- E.g., *iPhone5,3* return *iPhone5c*

### Important Notes
Please be aware of the following intricacies:

- The fourth generation iPod is stored as iPodTouch**ourth**Gen.
- The iPad Mini 2 does not have a designation in the *supportedDevices* key, so I'm using the same one as the iPad Mini 1, as it is the newest device of its class that has a designation.
- The iPad Air 1 does not have a designation in the *supportedDevices* key, so I'm using the same one as the fourth generation iPad, as it is the newest device of its class that has a designation.

### Inspiration
This category was born within [issue 35](https://github.com/ArtSabintsev/Harpy/issues/35) of the [Harpy](http://www.github.com/ArtSabintsev/Harpy) repository. The underlying idea and part of the research for building this category came from [Aaron Brager](http://www.github.com/getaaron). 

### Created and Maintained by
[Arthur Ariel Sabintsev](http://www.sabintsev.com/) 
