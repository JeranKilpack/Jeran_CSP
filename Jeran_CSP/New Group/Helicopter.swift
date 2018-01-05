//
//  Helicopter.swift
//  Jeran_CSP
//
//  Created by Kilpack, Jeran on 12/5/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import Foundation
public class Helicopter : Flyable
{
    public var flyState : Bool
    
    public init()
    {
        self.flyState = false
    }
    public func fly() -> Void
    {
        print("I can fly")
        flyState = true
    }
    public func isFlying() -> Bool
    {
        if(flyState)
        {
            print("Flying")
        }
        else
        {
            print("On the ground")
        }
        return flyState
    }
}
