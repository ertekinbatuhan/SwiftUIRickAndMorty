//
//  CacheManager.swift
//  SwiftUIRickAndMorty
//
//  Created by Görkem Gür on 11.12.2024.
//

import Foundation

protocol CacheService {
    func setImageCache(url: NSString, data: Data)
    func retrieveImageFromCache(with url: NSString) -> Data?
    func clearAllCache()
}

final class CacheManager: CacheService {
    private let cache: CacheService
    
    init(cache: CacheService = UserDefaultsCacheManager()) {
        self.cache = cache
    }
    
    func setImageCache(url: NSString, data: Data) {
        cache.setImageCache(url: url, data: data)
    }
    
    func retrieveImageFromCache(with url: NSString) -> Data? {
        return cache.retrieveImageFromCache(with: url)
    }
    
    func clearAllCache() {
        cache.clearAllCache()
    }
}
