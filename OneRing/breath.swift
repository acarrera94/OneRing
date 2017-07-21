//
//  breath.swift
//  OneRing
//
//  Created by Apple Mac on 6/8/16.
//  Copyright © 2016 Carrera. All rights reserved.
//

import Foundation


class breath {
    fileprivate var _timer = 5.0
    fileprivate var _capacity = 1.0
    
    var timer: Double {
        get{
            return _timer
        }
    }
    
    var capacity: Double{
        get{
            return _capacity
        }
    }
    
    init(startingTimer: Double, startingCapacity: Double){
        self._timer = startingTimer
        self._capacity = startingCapacity
    }
    
    
}
