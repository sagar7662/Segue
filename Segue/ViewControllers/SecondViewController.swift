//
//  SecondViewController.swift
//  Segue
//
//  Created by SK on 3/28/18.
//  Copyright © 2018 SK. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var navigationTitle = ""
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationItem.title = navigationTitle
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "unwindSegue") {
            guard let firstViewController = segue.destination as? FirstViewController else { return }
            firstViewController.navigationTitle = "FirstViewController"
        }
    }
}
