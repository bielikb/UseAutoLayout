#if canImport(UIKit)
import UIKit

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
#endif
