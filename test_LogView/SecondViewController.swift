//
//  SecondViewController.swift
//  test_LogView
//
//  Created by Gennadiy Glotov on 05.09.2018.
//  Copyright © 2018 Gennadiy Glotov. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textViewYellowView: UITextView!
    
    let nameView = "желтый "
    
    var arrLogChangeView: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Экран: \(nameView) - функция: \(#function)\n")
        arrLogChangeView = arrLogChangeView + "Экран:\(nameView) - функция: \(#function)\n"
        textViewYellowView.text = arrLogChangeView
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Экран: \(nameView) - функция: \(#function)\n")
        arrLogChangeView = arrLogChangeView + "Экран:\(nameView) - функция: \(#function)\n"
        textViewYellowView.text = arrLogChangeView
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Экран: \(nameView) - функция: \(#function)\n")
        arrLogChangeView = arrLogChangeView + "Экран:\(nameView) - функция: \(#function)\n"
        textViewYellowView.text = arrLogChangeView
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Экран: \(nameView) - функция: \(#function)\n")
        arrLogChangeView = arrLogChangeView + "Экран:\(nameView) - функция: \(#function)\n"
        textViewYellowView.text = arrLogChangeView
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Экран: \(nameView) - функция: \(#function)\n")
        arrLogChangeView = arrLogChangeView + "Экран:\(nameView) - функция: \(#function)\n"
        textViewYellowView.text = arrLogChangeView
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("Экран: \(nameView) - функция: \(#function)\n")
        arrLogChangeView = arrLogChangeView + "Экран:\(nameView) - функция: \(#function)\n"
        textViewYellowView.text = arrLogChangeView
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("Экран: \(nameView) - функция: \(#function)\n")
        arrLogChangeView = arrLogChangeView + "Экран:\(nameView) - функция: \(#function)\n"
        textViewYellowView.text = arrLogChangeView
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SecondToThird" {
            let thirdVC = segue.destination as! ThirdViewController
            thirdVC.arrLogChangeView = self.arrLogChangeView
        }
        
        if segue.identifier == "SecondToFirst" {
            let firstVC = segue.destination as! FirstViewController
            firstVC.arrLogChangeView = self.arrLogChangeView
        }
    }
    
    

}
