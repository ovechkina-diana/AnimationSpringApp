//
//  SpringAnimation.swift
//  AnimationSpringApp
//
//  Created by Диана Овечкина on 12.01.2022.
//

import Spring

let animationsPreset = Spring.AnimationPreset.allCases
let animationsCurve = Spring.AnimationCurve.allCases

struct ViewAnimation {
    var preset: String
    var curve: String
    var force: CGFloat
    var duration: CGFloat
    var delay: CGFloat
    
    static func getAnimation() -> ViewAnimation {
        
        let animationsPreset = Spring.AnimationPreset.allCases
        let animationsCurve = Spring.AnimationCurve.allCases
        
        return ViewAnimation(preset: animationsPreset.randomElement()!.rawValue,
                             curve: animationsCurve.randomElement()!.rawValue,
                             force: CGFloat.random(in: 0...1),
                             duration: CGFloat.random(in: 0...1),
                             delay: CGFloat.random(in: 0...1))
   
    }
}


