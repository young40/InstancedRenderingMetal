//
//  TerrainMesh.swift
//  InstancedRendering
//
//  Created by 杨世玲 on 2019/3/14.
//  Copyright © 2019 杨世玲. All rights reserved.
//

import MetalKit

class TerrainMesh: MyMesh {
    var device: MTLDevice
    
    var width: Float
    var height: Float
    var depth: Float
    var smoothness: Float
    var iterations: UInt16
    
    
    init(_width: Float,
         _height: Float,
         _iterations: UInt16,
         _smoothness: Float,
         _device: MTLDevice) {
        
        width  = _width
        depth  = _width
        height = _height
        device = _device
        
        smoothness = _smoothness
        iterations = _iterations
        
        let (vertexBuffer, indexBuffer) = TerrainMesh.generateTerrain(device: device)
        
        super.init(vertexBuff: vertexBuffer, indexBuff: indexBuffer)
    }
    
    class func generateTerrain(device: MTLDevice) -> (MTLBuffer, MTLBuffer) {
        var vertexBuffer = device.makeBuffer(length: 10, options: [])!
        var indexBuffer  = device.makeBuffer(length: 10, options: [])!
        
        return (vertexBuffer, indexBuffer)
    }
}
