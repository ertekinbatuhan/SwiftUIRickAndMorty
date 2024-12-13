//
//  UserDefaultsCacheManager.swift
//  SwiftUIRickAndMorty
//
//  Created by Batuhan Berk Ertekin on 13.12.2024.
//

import SwiftUI

final class UserDefaultsCacheManager: CacheService {
    private let defaults = UserDefaults.standard
    
    func setImageCache(url: NSString, data: Data) {
        defaults.set(data, forKey: url as String)
    }
    
    func retrieveImageFromCache(with url: NSString) -> Data? {
        return defaults.data(forKey: url as String)
    }
    
    func clearAllCache() {
        for key in defaults.dictionaryRepresentation().keys {
            defaults.removeObject(forKey: key)
        }
    }
}
