//
//  SignUpViewController.swift
//  SignUP-Demo
//
//  Created by Sanghun Park on 2021/08/20.
//

import Foundation
import UIKit

class SignUpViewController: UIViewController, UINavigationControllerDelegate {
    
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
    @IBOutlet weak var introTextField: UITextField!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        navigationController?.isNavigationBarHidden = true
        
        self.addViewWithCode()
        
        // added action to use imagePicker with tapping imageView
        let tapProfileImage = UITapGestureRecognizer(target: self, action: #selector(self.didTappedProfileImageView))
        profileImageView.addGestureRecognizer(tapProfileImage)
        profileImageView.isUserInteractionEnabled = true
    }
    
    
    // MARK: - Methods
    
    
    // MARK: Custom Methods
    func presentImagePicker() {
        self.present(self.imagePicker, animated: true, completion: nil)
    }
    
    
    // MARK: View with code
    func addViewWithCode() {
        self.addProfileImageView()
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
    
    
    
    // MARK: IBActions
    @objc func didTappedProfileImageView(sender: UITapGestureRecognizer) {
        if sender.state == .ended {
            self.presentImagePicker()
            print("tapped")
        }
        
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


