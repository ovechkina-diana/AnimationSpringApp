//
//  DataManager.swift
//  AnimationSpringApp
//
//  Created by Диана Овечкина on 14.01.2022.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animationsPreset = Spring.AnimationPreset.allCases
    let animationsCurve = Spring.AnimationCurve.allCases
    
    private init() {}
    
}
