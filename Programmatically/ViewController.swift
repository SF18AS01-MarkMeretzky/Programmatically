//
//  ViewController.swift
//  Programmatically
//
//  Created by Instructor on 12/27/18.
//  Copyright © 2018 Instructor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view, typically from a nib.
        let label: UILabel = UILabel();
        label.backgroundColor = .yellow;
        label.numberOfLines = 0;   //0 permits any number of lines
        
        label.text = """
        Close one eye.
        Stare at the black dot.
        Do not blink.
        """;
        
        label.frame.origin = CGPoint(x: 100, y: 100);  //frame is a CGRect.
        label.frame.size = label.intrinsicContentSize; //needed if not using constraints
        print("label.frame = \(label.frame)");         //(100.0, 100.0, 169.0, 61.0)
        print(view.subviews.count);
        view.addSubview(label);
        print(view.subviews.count);
    }


}

