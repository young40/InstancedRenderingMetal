//
//  MyMesh.swift
//  InstancedRendering
//
//  Created by 杨世玲 on 2019/3/14.
//  Copyright © 2019 杨世玲. All rights reserved.
//

import MetalKit

class MyMesh {
    var vertexBuffer: MTLBuffer
    var indexBuffer: MTLBuffer
    
    init(vertexBuff: MTLBuffer, indexBuff: MTLBuffer) {
        vertexBuffer = vertexBuff
        indexBuffer  = indexBuff
    }
}
