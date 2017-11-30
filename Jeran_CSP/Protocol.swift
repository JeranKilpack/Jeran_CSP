//
//  Protocol.swift
//  Jeran_CSP
//
//  Created by Kilpack, Jeran on 11/20/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import Foundation
public protocol Touchable
{
    var touchedState : Bool {get set}
    func touch() -> Void
    func isTouched() -> Bool
}


