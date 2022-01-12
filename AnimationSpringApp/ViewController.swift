//
//  ViewController.swift
//  AnimationSpringApp
//
//  Created by Диана Овечкина on 12.01.2022.
//

import Spring

class ViewController: UIViewController {
    @IBOutlet var spingAnimationView: SpringView!
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        let animation = ViewAnimation.getAnimation()
       // let animationNext = ViewAnimation.getAnimation()
        
        spingAnimationView.animation = animation.preset
        spingAnimationView.curve = animation.curve
        spingAnimationView.force = animation.force
        spingAnimationView.duration = animation.duration
        spingAnimationView.delay = animation.delay
        spingAnimationView.animate()
        
        presetLabel.text = "Preset: \(animation.preset)"
        curveLabel.text = "Curve: \(animation.curve)"
        forceLabel.text = "Force: \(String(format: "%.2f", animation.force))"
        durationLabel.text = "Duration: \(String(format: "%.2f",animation.duration))"
        delayLabel.text = "Delay: \(String(format: "%.2f", animation.delay))"
        
        sender.setTitle(animation.preset, for: .normal)
    }
    
}

