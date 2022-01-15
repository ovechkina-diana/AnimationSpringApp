//
//  SpringAnimation.swift
//  AnimationSpringApp
//
//  Created by Диана Овечкина on 12.01.2022.
//

import Spring

struct ViewAnimation {
    let preset: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    static func getAnimation() -> ViewAnimation {

        return ViewAnimation(preset: DataManager.shared.animationsPreset.randomElement()?.rawValue ?? "shake",
                             curve:
            DataManager.shared.animationsCurve.randomElement()?.rawValue ?? "easeIn",
                             force: CGFloat.random(in: 0...1),
                             duration: CGFloat.random(in: 0...1),
                             delay: CGFloat.random(in: 0...1))
        }
}


