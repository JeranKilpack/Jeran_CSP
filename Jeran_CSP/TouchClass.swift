//
//  TouchClass.swift
//  Jeran_CSP
//
//  Created by Kilpack, Jeran on 11/20/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
public class object : Touchable
{
    public var touchedState: Bool
    
    public init()
    {
        self.touchedState = false
    }
    
    public func touch() -> Void
    {
        print("It is touchable")
        touchedState = true
    }
}
