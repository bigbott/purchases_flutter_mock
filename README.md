
This package mocks the purchases_flutter package. 

[purchases_flutter](https://pub.dev/packages/purchases_flutter) package from RevenueCat allows adding in-app-purchase functionality without creating any backend.
But purchases_flutter requires testing on real device and also requires creating `closed testing track` on Google Play Console with the release undergoing review, which can take some time. 

## Features

Allows testing on local development machine, e.g. Windows. 

## Getting started

Clone this repository as a separate project in your IDE.  

In your main project add to pubspec.yaml: 
```dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^2.0.0
  purchases_flutter_mock: 
    path: F://FlutterProjects/purchases_flutter_mock  ```

Replace `F://FlutterProjects` with your path.
Replace purchases_flutter in your dart files with purchases_flutter_mock, e.g. in VS Code go to Edit->Replace in files


## Usage
Products are hardcoded inside purchases_flutter_mock/purchases_flutter.dart. Change them according to your needs. 



Check 
