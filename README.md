# @UseAutoLayout
Property wrapper that enables autolayout on applied views.

# Declaration:

`@UseAutoLayout` property wrapper

```
@propertyWrapper
public struct UseAutoLayout<T: UIView> {
    var value: T

    public var wrappedValue: T {
      get { return value }
      set { self.value.translatesAutoresizingMaskIntoConstraints = false }
    }

    public init(wrappedValue: T) {
      value = wrappedValue
    }
}

```

# Usage

```
@UseAutoLayout var label = UILabel()
```

# Example

![Sample](assets/autolayout-1.png)

---

![](assets/autolayout-2.png)
