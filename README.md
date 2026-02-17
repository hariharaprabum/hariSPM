## Quick Start

### Step 1 - Add Dependency

1. SDK is available through [CocoaPods](https://cocoapods.org/pods/bureau-id-fraud-sdk). To install it, simply add the following line to your Podfile:

```ruby
# Podfile
pod 'BureauSDKiOS'

```

2. "import BureauSDKiOS" in your UIViewcontroller

3. Info.plist -> Add below properties
   - “NSUserTrackingUsageDescription”
   - “NSLocationAlwaysAndWhenInUseUsageDescription”
   - “Privacy - Location When In Use Usage Description”

### Step 2 - Initialise SDK

The SDK is initialized in the client app. Once the submit function is called, the data relating to the user and device is automatically synced in the background.

```swift
// You can initialize BureauAPI from AppDelegate, SceneDelegate, or a ViewController based on your app's architecture.

// 1. Create a config object and initialize the SDK with minimal config values
var config = BureauConfig(
    
    // --- Required ---
    // Replace <CREDENTIAL ID> with the CREDENTIAL ID obtained from your Bureau dashboard when generating API keys.
    credentialID: "<CREDENTIAL ID>",
  
    // --- Required ---
    /*
        Environment in which you want to initialize the SDK.
        Possible values: 'staging' (for testing) or '.production' (for live use).
    */
    environment: .staging,

   // --- optional ---
  // Enable the collection, processing, and analysis of behavior-related data.
  enableBehavioralBiometrics: true,
  
 // --- Optional ---
/*
    Replace <YOUR_FLOW_NAME> with the specify the flow name to track SDK usage context.
    For example: 'login', 'signup', or 'checkout'.
    This can help segment and analyze user behavior by flow.
*/
  flow: "Login"
)

// 2. Initialize the SDK with the config you just created
BureauSDK.shared.initialize(config:config)

```
### Step 3 - Data Submission
Submit device data

 ```swift
let eventId = BureauSDK.shared.submit() 
```

