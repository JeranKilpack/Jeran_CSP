//
//  Flyable.swift
//  Jeran_CSP
//
//  Created by Kilpack, Jeran on 12/5/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import Foundation
public protocol Flyable
{
    var flyState : Bool {get set}
    func fly() -> Void
    func isFlying() -> Bool
}
