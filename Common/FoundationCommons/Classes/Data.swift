
extension Data {
  public func hexEncodedString() -> String {
    return map { String(format: "%02hhx", $0) }.joined()
  }
}
