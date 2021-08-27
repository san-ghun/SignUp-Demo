//
//  ViewController.swift
//  SignUP-Demo
//
//  Created by Sanghun Park on 2021/08/20.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - Properties
    
    // MARK: IBOutlets
    @IBOutlet weak var titleImageView: UIImageView!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwdTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.addViewsWithCode()
    }
    
    
    
    // MARK: - Methods
    
    // MARK: Custom Methods
    
    // MARK: View with code
    func addViewsWithCode() {
        self.addTitleImageView()
    }
    
    func addTitleImageView() {
        let imageView: UIImageView = UIImageView(image: UIImage(named: "apple"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(imageView)
        
        let centerX: NSLayoutConstraint
        centerX = imageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        
        let centerY: NSLayoutConstraint
        centerY = NSLayoutConstraint(item: imageView, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.view, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 0.8, constant: 0)
        
        let width: NSLayoutConstraint
        width = imageView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.3)
        
        let ratio: NSLayoutConstraint
        ratio = imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor, multiplier: 1)
        
        centerX.isActive = true
        centerY.isActive = true
        width.isActive = true
        ratio.isActive = true
        
        self.titleImageView = imageView
    }
    
    func addIdTextField() {
        
    }
    
    func addPwdTextField() {
        
    }
    
    func addSignInButton() {
        let button: UIButton = UIButton(type: UIButton.ButtonType.custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    func addSignUpButton() {
        let button: UIButton = UIButton(type: UIButton.ButtonType.custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        
    }
    // MARK: IBActions


}

