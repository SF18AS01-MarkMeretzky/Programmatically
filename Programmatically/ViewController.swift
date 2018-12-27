//
//  ViewController.swift
//  Programmatically
//
//  Created by Instructor on 12/27/18.
//  Copyright © 2018 Instructor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let label: UILabel = UILabel();
    
    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view, typically from a nib.
        let s: String = """
        Clint Eastwood said \"Make my day\"
        in Sudden Impact.
        """;
        print(s);
        
        
        
        label.backgroundColor = .yellow;
        label.numberOfLines = 0;   //0 permits any number of lines
        
        let greeting: String = "Hello, world!"

        if greeting.hasPrefix("Hello".lowercased()) {
            label.text = "It begins with Hello";
        } else {
            label.text = "It doesn't begin with Hello";
        }
        
        
        label.frame.origin = CGPoint(x: 50, y: 100);  //frame is a CGRect.
        label.frame.size = label.intrinsicContentSize; //needed if not using constraints
        print("label.frame = \(label.frame)");         //(100.0, 100.0, 169.0, 61.0)
        print(view.subviews.count);
        view.addSubview(label);
        print(view.subviews.count);
    }

    @IBAction func returnButtonPressed(_ sender: UITextField) {
        
        sender.resignFirstResponder();
        
        if sender.text!.lowercased().hasPrefix("hello") {
            label.text = "Friendly!"
        } else {
            label.text = "Unfriendly!"
        }
    }
    
}

