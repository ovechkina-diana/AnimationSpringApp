//
//  ViewController.swift
//  AnimationSpringApp
//
//  Created by Диана Овечкина on 12.01.2022.
//

import Spring

class ViewController: UIViewController {
    @IBOutlet var spingAnimationView: SpringView!
    @IBOutlet var descriptionLabel: UILabel!
    
    private var animation = ViewAnimation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionLabel.text = animation.description
    }

    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        
        spingAnimationView.animation = animation.preset
        spingAnimationView.curve = animation.curve
        spingAnimationView.force = animation.force
        spingAnimationView.duration = animation.duration
        spingAnimationView.delay = animation.delay
        spingAnimationView.animate()
        
        descriptionLabel.text = animation.description
        
        animation = ViewAnimation.getAnimation()
        
        sender.setTitle(animation.preset, for: .normal)
    }
    
}

