# IAMPopup

[![Version](https://img.shields.io/cocoapods/v/IAMPopup.svg?style=flat)](https://cocoapods.org/pods/IAMPopup)
[![SwiftPM](https://img.shields.io/badge/SPM-supported-DE5C43.svg?style=flat)](https://swift.org/package-manager/)
[![License](https://img.shields.io/cocoapods/l/IAMPopup.svg?style=flat)](https://cocoapods.org/pods/IAMPopup)
[![Platform](https://img.shields.io/cocoapods/p/IAMPopup.svg?style=flat)](https://cocoapods.org/pods/IAMPopup)


## Introduction

`IAMPopup` is a simple class for expressing custom popup in various forms. This includes where to display the popup and space to decorate the View.

Please feel free to contribute to this project, open issues, make suggestions and submit pull-requests. If you use this project in your app, let me know. I'd love to see what you do with it.


<img src = "https://user-images.githubusercontent.com/93528918/149862217-62946646-4c47-47d6-a4d9-e4341610957c.gif" width="30%" height="30%">


## Basic Examples


Specifies the height of the popup view and customizes the inner view.

```swift
// Top Popup
self.view.IAM_top(height: 100) { popupView in
    popupView.addSubview(self.label)
    self.label.text = "TOP"
}

 
// Center Popup  
self.view.IAM_center(height: 400) { popupView in
    popupView.addSubview(self.label)
    self.label.text = "Center"
}

   
// Bottom Popup 
self.view.IAM_bottom(height: 300) { popupView in
    popupView.addSubview(self.label)
    self.label.text = "Bottom"
}

```



## Requirements

- iOS 13.0
- Swift 5


## Installation

### CocoaPods

IAMPopup is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'IAMPopup'
```

### Swift Package Manager

To install it, your Project settings > Swift Packages and add the repository by providing the GitHub URL.

Alternatively, File > Swift Packages > Add Package Dependencies.

```ruby
https://github.com/camosss/IAMPopup
```

## Author

- Hosung Kang
- Email: camosss777@gmail.com


## License

IAMPopup is available under the MIT license. See the LICENSE file for more info.
