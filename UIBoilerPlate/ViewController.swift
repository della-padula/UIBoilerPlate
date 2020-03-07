//
//  ViewController.swift
//  UIBoilerPlate
//
//  Created by TaeinKim on 2020/03/06.
//  Copyright © 2020 TaeinKim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var topSection: UIView!
    @IBOutlet weak var searchSection: UIView!
    @IBOutlet var tfSearchKeyword: UITextField!
    @IBOutlet var scrollView: UIScrollView!
    
    @IBAction func onClickSearch(_ sender: UIButton) {
        print("Modify Search")
    }
    
    @IBAction func onClickModifyDept(_ sender: Any) {
        print("Modify Dept")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        topSection.setGradientBackground(colorTop: UIColor(hex: "#02d6f0", alpha: 1.0), colorBottom: UIColor(hex: "#01addd", alpha: 1.0))
        topSection.roundCorners(corners: [.bottomLeft, .bottomRight], radius: 40)
        
        searchSection.layer.cornerRadius = 22
        searchSection.layer.borderColor = UIColor(hex: "#c5dbf1", alpha: 1.0).cgColor
        searchSection.layer.borderWidth = 1.5
        
        tfSearchKeyword.textColor = UIColor(hex: "#d0d0d0", alpha: 1.0)
        tfSearchKeyword.placeholder = "내가 찾고싶은 공지"
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tapGestureRecognizer.numberOfTapsRequired = 1
        tapGestureRecognizer.isEnabled = true
        tapGestureRecognizer.cancelsTouchesInView = false
        scrollView.addGestureRecognizer(tapGestureRecognizer)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("View Touch!")
        self.view.endEditing(true)
    }
    
    @objc func dismissKeyboard(sender: UITapGestureRecognizer) {
        print("Scroll View Touch!")
        self.view.endEditing(true)
    }
}
