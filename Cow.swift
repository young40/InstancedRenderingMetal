//
//  Cow.swift
//  InstancedRendering iOS
//
//  Created by 杨世玲 on 2019/3/11.
//  Copyright © 2019 杨世玲. All rights reserved.
//

import Foundation
import simd

class Cow {
    var position: vector_float3;
    var targetHeading: Float;
    var heading: Float;

    init(position: vector_float3, targetHeading: Float, heading: Float) {
        self.position = position
        self.targetHeading = targetHeading
        self.heading = heading
    }
}
