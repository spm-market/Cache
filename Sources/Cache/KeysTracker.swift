//
//  KeysTracker.swift
//  VLCDemo
//
//  Created by huanghong on 2023/12/27.
//

import Foundation

public final class KeysTracker<V>: NSObject, NSCacheDelegate {
    var keys = Set<String>()

    public func cache(_ cache: NSCache<AnyObject, AnyObject>, willEvictObject obj: Any) {
        guard let entry = obj as? CacheEntry<V> else {
            return
        }
        keys.remove(entry.key)
    }
}
