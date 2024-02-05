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
    // Do any additional setup after loading the view.


    let button = UIButton()
    button.setTitle("go test", for: .normal)
    button.setTitleColor(.red, for: .normal)
    button.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
    button.center = view.center
    button.addTarget(self, action: #selector(goNext), for: .touchUpInside)
    view.addSubview(button)
  }

  @objc func goNext() {
    let host = NewHostingController(rootView: HelloUIView()) //homepage

    let button1 = UIButton() // colloection popup
    button1.setTitle("test from UIKit", for: .normal)
    button1.setTitleColor(.red, for: .normal)
    button1.frame = CGRect(x: 0, y: 0, width: 400, height: 1000)
    button1.addTarget(self, action: #selector(goRight), for: .touchUpInside)
//    let ges = UITapGestureRecognizer(target: self, action: #selector(goRight))
//    button1.addGestureRecognizer(ges)
    button1.backgroundColor = .blue.withAlphaComponent(0.5)
    host.view.addSubview(button1)

    host.modalPresentationStyle = .fullScreen
    present(host, animated: true)
  }

  @objc func goRight() {
    print("test from UIKit")
  }
}

class NewHostingController<Content>: UIHostingController<Content> where Content: View {


}
