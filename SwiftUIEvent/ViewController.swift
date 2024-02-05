//
//  ViewController.swift
//  SwiftUIEvent
//
//  Created by Weidong Gu on 2/1/24.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let button = UIButton()
    button.setTitle("go test", for: .normal)
    button.setTitleColor(.red, for: .normal)
    button.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
    button.center = view.center
    button.addTarget(self, action: #selector(goNext), for: .touchUpInside)
    view.addSubview(button)
  }

  @objc func goNext() {
    let host = UIHostingController(rootView: HelloUIView())

    let button1 = UIButton()
    button1.setTitle("UIKit Button (All blue area)", for: .normal)
    button1.setTitleColor(.red, for: .normal)
    button1.frame = CGRect(x: 0, y: 0, width: 400, height: 1000)
    button1.addTarget(self, action: #selector(onUIKitButtonClick), for: .touchUpInside)
    button1.backgroundColor = .blue.withAlphaComponent(0.5)
    host.view.addSubview(button1)

    host.modalPresentationStyle = .fullScreen
    present(host, animated: true)
  }

  @objc func onUIKitButtonClick() {
    print("Top-level UIKit button is clicked")
  }
}
