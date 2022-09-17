//
//  ViewController.swift
//  CombineInSwiftUI
//
//  Created by ahmad shiddiq on 17/09/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 45))
        view.addSubview(button)
        button.center = view.center
        button.setTitle("Register", for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(registerTapped), for: .touchUpInside)
    }
    @objc func registerTapped() {
        let vc = UIHostingController(rootView: Register())
        present(vc, animated: true, completion: nil)
    }
}

