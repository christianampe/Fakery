import Foundation

public final class Provider {
  var translations: [String: Data] = [:]

  // MARK: - Locale data

  public func dataForLocale(_ locale: String) -> Data? {
    if let translationData = translations[locale] {
        return translationData
    }
    
    let bundle = Bundle.module
    
    guard let path = bundle.path(forResource: locale, ofType: Config.pathExtension) else {
        return nil
    }
    
    let url = URL(fileURLWithPath: path)
    
    guard let data = try? Data(contentsOf: url) else {
        return nil
    }
    
    translations[locale] = data
    
    return data
  }
}
