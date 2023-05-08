//
//  InitialViewController.swift
//  pinino
//
//  Created by Marcelo Aguilar Bravo on 08/05/23.
//

import UIKit

class InitialViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    
    var presenter: ArchiPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.loadInicialMessage()
        
    }
    
    @IBAction func show(_ sender: UIButton) {
        presenter?.loadInicialMessage()
    }
}

