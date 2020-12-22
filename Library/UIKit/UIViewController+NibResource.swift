//
//  UIViewController+NibResource.swift
//  R.swift Library
//
//  Created by Mathijs Kadijk on 06-12-15.
//  From: https://github.com/mac-cain13/R.swift.Library
//  License: MIT License
//

import Foundation
import UIKit

public extension UIViewController {
  /**
   Returns a newly initialized view controller with the nib resource (R.nib.*).
   
   - parameter nib: The nib resource (R.nib.*) to associate with the view controller.
   
   - returns: A newly initialized UIViewController object.
  */
  convenience init(nib: NibResourceType) {
    
    let candidateBundles = [nib.bundle] + ResourceBundles.available
    
    for candidateBundle in candidateBundles {
        if candidateBundle.url(forResource: nib.name, withExtension: "nib") != nil {
            self.init(nibName: nib.name, bundle: candidateBundle)
        }
    }
    
    self.init(nibName: nib.name, bundle: nib.bundle)
  }
}
