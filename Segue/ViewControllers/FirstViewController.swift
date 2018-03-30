//
//  FirstViewController.swift
//  Segue
//
//  Created by SK on 3/28/18.
//  Copyright © 2018 SK. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var navigationTitle = ""

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationItem.title = navigationTitle
    }
    

    // MARK: - Unwind segue to come from second controller
    @IBAction func unwindfromSecondView(_ sender: UIStoryboardSegue) {
        navigationItem.title = navigationTitle
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "showSecondController") { // showSecondController: identifier on your created segue
            guard let secondController = segue.destination as? SecondViewController else { return }
            secondController.navigationTitle = "SecondViewController"
        }
    }
}
