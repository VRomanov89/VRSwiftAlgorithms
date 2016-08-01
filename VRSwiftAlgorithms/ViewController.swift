//
//  ViewController.swift
//  VRSwiftAlgorithms
//
//  Created by Volodymyr Romanov on 8/1/16.
//  Copyright © 2016 Volodymyr Romanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let algorithmBrain = VRAlgorithms()

    override func viewDidLoad() {
        super.viewDidLoad()
        for string in algorithmBrain.myStrings {
            print(algorithmBrain.stringToURL(string))
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

