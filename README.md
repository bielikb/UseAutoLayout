# @UseAutoLayout
Property wrapper that enables autolayout on applied views.

# Declaration:

`@UseAutoLayout` property wrapper

```
@propertyWrapper
public struct UseAutoLayout<T: UIView> {
    public var wrappedValue: T {
        didSet {
            setAutoLayout()
        }
    }

    public init(wrappedValue: T) {
        self.wrappedValue = wrappedValue
        setAutoLayout()
    }

    func setAutoLayout() {
        wrappedValue.translatesAutoresizingMaskIntoConstraints = false
    }
}
```

# Usage

```
@UseAutoLayout var label = UILabel()
```


## Installation

Property wrappers are defined in Swift 5.1.
Using @UseAutoLayout requires Xcode 11.0(and above) and Swift 5.1 toolchain


### Swift Package Manager

Add 
`.package(url: "https://github.com/bielikb/UseAutoLayout.git", from: "1.0.0")` 
to your `Package.swift` file's `dependencies`.

If youre using Xcode 11.0 add this Swift Package to your target(s) using Xcode.

# Example

![Sample](assets/autolayout-1.png)

---

![](assets/autolayout-2.png)
