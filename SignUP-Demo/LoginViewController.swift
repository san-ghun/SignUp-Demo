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
        self.addIdTextField()
        self.addPwdTextField()
        self.addSignInButton()
        self.addSignUpButton()
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
        width = imageView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.6)
        
        let ratio: NSLayoutConstraint
        ratio = imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor, multiplier: 1)
        
        centerX.isActive = true
        centerY.isActive = true
        width.isActive = true
        ratio.isActive = true
        
        self.titleImageView = imageView
    }
    
    func addIdTextField() {
        let textField: UITextField = UITextField(frame: CGRect(x: 0, y: 0, width: 300, height: 30))
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(textField)
        
        textField.textContentType = .username
        textField.textAlignment = .left
        textField.placeholder = "ID"
        textField.autocapitalizationType = .none
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.backgroundColor = UIColor.white
        textField.textColor = UIColor.black
        
        let centerX: NSLayoutConstraint
        centerX = textField.centerXAnchor.constraint(equalTo: self.titleImageView.centerXAnchor)
        
        let top: NSLayoutConstraint
        top = textField.topAnchor.constraint(equalTo: self.titleImageView.bottomAnchor, constant: 8)
        
        let left: NSLayoutConstraint
        left = textField.leftAnchor.constraint(equalTo: self.titleImageView.leftAnchor, constant: 5)
        
        centerX.isActive = true
        top.isActive = true
        left.isActive = true
        
        self.idTextField = textField
    }
    
    func addPwdTextField() {
        let textField: UITextField = UITextField(frame: CGRect(x: 0, y: 0, width: 300, height: 30))
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(textField)
        
        textField.textContentType = .password
        textField.textAlignment = .left
        textField.isSecureTextEntry = true
        textField.placeholder = "Password"
        textField.autocapitalizationType = .none
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.backgroundColor = UIColor.white
        textField.textColor = UIColor.black
        
        let centerX: NSLayoutConstraint
        centerX = textField.centerXAnchor.constraint(equalTo: self.titleImageView.centerXAnchor)
        
        let top: NSLayoutConstraint
        top = textField.topAnchor.constraint(equalTo: self.idTextField.bottomAnchor, constant: 5)
        
        let left: NSLayoutConstraint
        left = textField.leftAnchor.constraint(equalTo: self.titleImageView.leftAnchor, constant: 5)
        
        centerX.isActive = true
        top.isActive = true
        left.isActive = true
        
        self.pwdTextField = textField
    }
    
    func addSignInButton() {
        let button: UIButton = UIButton(type: UIButton.ButtonType.custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(button)
        
        button.setTitle("Sign In", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        
        let top: NSLayoutConstraint
        top = button.topAnchor.constraint(equalTo: self.pwdTextField.bottomAnchor, constant: 5)
        
        let left: NSLayoutConstraint
        left = button.leftAnchor.constraint(equalTo: self.titleImageView.leftAnchor, constant: 20)
        
        top.isActive = true
        left.isActive = true
        
        self.signInButton = button
    }
    
    func addSignUpButton() {
        let button: UIButton = UIButton(type: UIButton.ButtonType.custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(button)
        
        button.setTitle("Sign Up", for: .normal)
        button.setTitleColor(UIColor.gray, for: .normal)
        
        let top: NSLayoutConstraint
        top = button.topAnchor.constraint(equalTo: self.pwdTextField.bottomAnchor, constant: 5)
        
        let right: NSLayoutConstraint
        right = button.rightAnchor.constraint(equalTo: self.titleImageView.rightAnchor, constant: -20)
        
        top.isActive = true
        right.isActive = true
        
        self.signUpButton = button
    }
    // MARK: IBActions


}

