//
//  ViewController.swift
//  TicTacToe
//
//  Created by DCS on 05/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    private let myImageView: UIImageView = {
        let bg = UIImageView()
        bg.image = UIImage(named: "bg2.png")
        return bg
    }()
    private let myButton:UIButton = {
        let button = UIButton()
        button.setTitle("Start Game", for: .normal)
        button.addTarget(self, action: #selector(handleButtonClick), for: .touchUpInside)
        button.backgroundColor = .black
        button.layer.cornerRadius = 25
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.addSubview(bgimage)
        view.addSubview(myImageView)
        view.addSubview(myButton)
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myImageView.frame = CGRect(x: 40, y:view.height/2-180, width: view.width - 80, height: 290)
        myButton.frame = CGRect(x: 40, y:view.height/2+150, width: view.width - 80, height: 60)
    }
    
    @objc func handleButtonClick() {
        let vc = TicTacToeVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}


