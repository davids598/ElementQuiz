//
//  ViewController.swift
//  ElementQuiz
//
//  Created by David Strathman on 6/11/19.
//  Copyright © 2019 David Strathman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerView: UILabel!

    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    var currentElementIndex = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateElement()
    }
    
    func updateElement()
    {
        answerView.text = "?"
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
    }
    
    @IBAction func goToNextElement(_ sender: UIButton) {
        currentElementIndex += 1
        if (currentElementIndex >= elementList.count)
        {
            currentElementIndex = 0
        }
        updateElement()
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        answerView.text = elementList[currentElementIndex]
    }
    
}

