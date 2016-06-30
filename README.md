# SimplyAlert

Swifty way to use `UIAlertController` and `UIAlertAction`

# Example

Initialize `UIAlertAction` easily.

```swift
// Here I'm using the default text that is "Cancel". You can override it
// by calling `UIAlertAction.Cancel("My text") { print($0) }`
let cancelAction = UIAlertAction.Cancel { print($0) }
```

Initialize your `UIAlertController` extremely fast and add your action to it. Then present it

```swift
// Using the chain provided by `add(_:)` that returns 
// the same `UIAlertController` instance
let _ = UIAlertController.alertWith(
    title: "My title",
    message: "My message"
).add(cancelAction)
.presentIn(self) // self is the UIViewController instance
```

This is exactly equivalent to

```swift
let cancelAction = UIAlertAction(
    title: "Cancel",
    style: .Cancel,
    handler: { print($0) }
)

let alert = UIAlertController(
    title: "My title",
    message: "My message",
    preferredStyle: .Alert
)

alert.addAction(cancelAction)

presentViewController(
    alert,
    animated: true,
    completion: nil
)
```
# Installation

- **For iOS 8+ projects** with [CocoaPods](https://cocoapods.org):

```ruby
pod 'SimplyAlert', '~> 1.0'
```

- **Using [Swift Package Manager](https://swift.org/package-manager)**:


```
import PackageDescription

let package = Package(
    name: "SimplyAlert",
    dependencies: [
        .Package(url: "https://github.com/dalu93/SimplyAlert", "1.0"),
    ]
)
```

License
-------

**SimplyAlert** is under MIT license. See the [LICENSE](LICENSE) file for more info.
