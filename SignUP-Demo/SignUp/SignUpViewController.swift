//
//  SignUpViewController.swift
//  SignUP-Demo
//
//  Created by Sanghun Park on 2021/08/20.
//

import Foundation
import UIKit

class SignUpViewController: UIViewController, UINavigationControllerDelegate {
    
    // TODO: make model to store id, pwd and discription
    // TODO: make id and pwd validation checker
    // TODO: make SignUpSecondViewController
    // TODO: Link the signup data with UserInformation
    
    // MARK: - Properties
    lazy var imagePicker: UIImagePickerController = {
        let picker: UIImagePickerController = UIImagePickerController()
        picker.sourceType = .savedPhotosAlbum
        picker.delegate = self
        return picker
    }()

    
    // MARK: IBOutlets
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwdTextField: UITextField!
    @IBOutlet weak var secondPwdTextField: UITextField!
    @IBOutlet weak var introTextView: UITextView!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        navigationController?.isNavigationBarHidden = true
        
        self.addViewWithCode()
        
        // UITapGestureRecognizer to profileImageView
        let tapProfileImage = UITapGestureRecognizer(target: self, action: #selector(self.didTappedProfileImageView))
        profileImageView.addGestureRecognizer(tapProfileImage)
        profileImageView.isUserInteractionEnabled = true
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tapView))
        self.view.addGestureRecognizer(tapGesture)
    }
    
    
    // MARK: - Methods
    
    
    // MARK: Custom Methods
    func presentImagePicker() {
        self.present(self.imagePicker, animated: true, completion: nil)
    }
    
    
    // MARK: View with code
    func addViewWithCode() {
        self.addProfileImageView()
        self.addIdTextField()
        self.addPwdTextField()
        self.addSecondPwdTextField()
        self.addDescriptionTextView()
        self.addCancelButton()
        self.addNextButton()
    }
    
    func addProfileImageView() {
        let imageView: UIImageView = UIImageView(image: .add)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(imageView)
        
        let left: NSLayoutConstraint
        left = imageView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 10)
        
        let top: NSLayoutConstraint
        top = imageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 60)
        
        let width: NSLayoutConstraint
        width = imageView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.4)
        
        let ratio: NSLayoutConstraint
        ratio = imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor, multiplier: 1)
        
        left.isActive = true
        top.isActive = true
        width.isActive = true
        ratio.isActive = true
        
        self.profileImageView = imageView
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
        
        let left: NSLayoutConstraint
        left = textField.leftAnchor.constraint(equalTo: self.profileImageView.rightAnchor, constant: 10)
        
        let top: NSLayoutConstraint
        top = textField.topAnchor.constraint(equalTo: self.profileImageView.topAnchor, constant: 10)
        
        let width: NSLayoutConstraint
        width = textField.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.525)
        
        let height: NSLayoutConstraint
        height = textField.heightAnchor.constraint(equalTo: self.profileImageView.heightAnchor, multiplier: 0.25)
        
        left.isActive = true
        top.isActive = true
        width.isActive = true
        height.isActive = true
        
        self.idTextField = textField
    }
    
    func addPwdTextField() {
        let textField: UITextField = UITextField(frame: CGRect(x: 0, y: 0, width: 300, height: 30))
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(textField)
        
        textField.textContentType = .password
        textField.textAlignment = .left
        textField.isSecureTextEntry = true
        textField.placeholder = "Type Password"
        textField.autocapitalizationType = .none
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.backgroundColor = UIColor.white
        textField.textColor = UIColor.black
        
        let left: NSLayoutConstraint
        left = textField.leftAnchor.constraint(equalTo: self.idTextField.leftAnchor)
        
        let top: NSLayoutConstraint
        top = textField.topAnchor.constraint(equalTo: self.idTextField.bottomAnchor, constant: 10)
        
        let width: NSLayoutConstraint
        width = textField.widthAnchor.constraint(equalTo: self.idTextField.widthAnchor)
        
        let height: NSLayoutConstraint
        height = textField.heightAnchor.constraint(equalTo: self.idTextField.heightAnchor)
        
        left.isActive = true
        top.isActive = true
        width.isActive = true
        height.isActive = true

        self.pwdTextField = textField
    }
    
    func addSecondPwdTextField() {
        let textField: UITextField = UITextField(frame: CGRect(x: 0, y: 0, width: 300, height: 30))
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(textField)
        
        textField.textContentType = .password
        textField.textAlignment = .left
        textField.isSecureTextEntry = true
        textField.placeholder = "Confirm Password"
        textField.autocapitalizationType = .none
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.backgroundColor = UIColor.white
        textField.textColor = UIColor.black
        
        let left: NSLayoutConstraint
        left = textField.leftAnchor.constraint(equalTo: self.idTextField.leftAnchor)
        
        let top: NSLayoutConstraint
        top = textField.topAnchor.constraint(equalTo: self.pwdTextField.bottomAnchor, constant: 10)
        
        let width: NSLayoutConstraint
        width = textField.widthAnchor.constraint(equalTo: self.idTextField.widthAnchor)
        
        let height: NSLayoutConstraint
        height = textField.heightAnchor.constraint(equalTo: self.idTextField.heightAnchor)
        
        left.isActive = true
        top.isActive = true
        width.isActive = true
        height.isActive = true

        self.secondPwdTextField = textField
    }
    
    func addDescriptionTextView() {
        let testView: UITextView = UITextView(frame: CGRect(x: 0, y: 0, width: 300, height: 30))
        testView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(testView)
        
        testView.textContentType = .none
        testView.textAlignment = .left
        testView.autocapitalizationType = .sentences
        testView.backgroundColor = UIColor.lightGray
        testView.textColor = UIColor.black
        
        let left: NSLayoutConstraint
        left = testView.leftAnchor.constraint(equalTo: self.profileImageView.leftAnchor)
        
        let top: NSLayoutConstraint
        top = testView.topAnchor.constraint(equalTo: self.profileImageView.bottomAnchor, constant: 10)
        
        let width: NSLayoutConstraint
        width = testView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.95)
        
        let height: NSLayoutConstraint
        height = testView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.6)
        
        left.isActive = true
        top.isActive = true
        width.isActive = true
        height.isActive = true

        self.introTextView = testView
    }
    
    func addCancelButton() {
        let button: UIButton = UIButton(type: UIButton.ButtonType.custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(button)
        
        button.setTitle("Cancel", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        
        button.addTarget(self, action: #selector(dismissSelf), for: UIControl.Event.touchUpInside)
        
        let top: NSLayoutConstraint
        top = button.topAnchor.constraint(equalTo: self.introTextView.bottomAnchor)
        
        let left: NSLayoutConstraint
        left = button.leftAnchor.constraint(equalTo: self.introTextView.leftAnchor)
        
        let bottom: NSLayoutConstraint
        bottom = button.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)
        
        let right: NSLayoutConstraint
        right = button.rightAnchor.constraint(equalToSystemSpacingAfter: self.view.centerXAnchor, multiplier: 0.5)
        
        top.isActive = true
        left.isActive = true
        bottom.isActive = true
        right.isActive = true

        self.cancelButton = button
    }
    
    func addNextButton() {
        let button: UIButton = UIButton(type: UIButton.ButtonType.custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(button)
        
        button.setTitle("Next", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        
        button.addTarget(self, action: #selector(didTappedNextButton), for: UIControl.Event.touchUpInside)
        
        let top: NSLayoutConstraint
        top = button.topAnchor.constraint(equalTo: self.introTextView.bottomAnchor)
        
        let left: NSLayoutConstraint
        left = button.leftAnchor.constraint(equalToSystemSpacingAfter: self.view.centerXAnchor, multiplier: 0.5)
        
        let bottom: NSLayoutConstraint
        bottom = button.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)
        
        let right: NSLayoutConstraint
        right = button.rightAnchor.constraint(equalTo: self.introTextView.rightAnchor)
        
        top.isActive = true
        left.isActive = true
        bottom.isActive = true
        right.isActive = true

        self.nextButton = button
    }
    
    
    // MARK: IBActions
    @objc func didTappedProfileImageView(sender: UITapGestureRecognizer) {
        self.presentImagePicker()
    }
    
    @objc func tapView(sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
    @objc func dismissSelf() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func didTappedNextButton() {
        let vc = SignUpSecondViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
}


extension SignUpViewController: UIImagePickerControllerDelegate {
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let originalImage: UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            self.profileImageView.image = originalImage
        }
        self.dismiss(animated: true, completion: nil)
    }
}


