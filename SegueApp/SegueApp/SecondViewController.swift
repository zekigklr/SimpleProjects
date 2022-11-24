//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Zeki Gökler on 24.11.2022.
//

import UIKit

class SecondViewController: UIViewController {

    var myName = ""
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        myLabel.text = myName
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
