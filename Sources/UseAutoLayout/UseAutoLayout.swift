#if canImport(UIKit)
import UIKit

@propertyWrapper
public struct UseAutoLayout<T: UIView> {
    var wrappedValue: T {
        didSet {
            self.wrappedValue.translatesAutoresizingMaskIntoConstraints = false
        }
    }

    public init(wrappedValue: T) {
      self.wrappedValue = wrappedValue
    }
}
#endif
