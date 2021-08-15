

private enum ObjCTryCatchError: Error {
  case unexpectedValue
}

public func objc_tryCatch<T>(_ execute: @escaping () throws -> T) throws -> T {
  var value: T?
  var caughtError: Error?
  try ObjC.catchException {
    do { value = try execute() } catch { caughtError = error }
  }
  if let caughtError = caughtError { throw caughtError }
  if let value = value { return value }
  throw ObjCTryCatchError.unexpectedValue
}
