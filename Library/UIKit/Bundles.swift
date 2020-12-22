//
//  Bundles.swift
//  
//
//  Created by George Tsifrikas on 22/12/20.
//

import Foundation

public class ResourceBundles {
    public private(set) static var available: [Bundle] = [.main]
    
    public static func addAdditional(bundle: Bundle) {
        available += [bundle]
    }
}
