//
//  RegistrationViewController.swift
//  Profile
//
//  Created by Студент on 08.11.2023.
//

import UIKit

//class RegistrationViewController: UIViewController {
//    let titleLabel = UILabel()
//    let emailTextField = UITextField()
//    let loginTextField = UITextField()
//    let passwordTextField = UITextField()
//    let registerButton = UIButton()
//    let errorLabel = UILabel()
//        
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = Colors.white.uiColor
//        setupTitleLabel()
//        setupLoginTextField()
//        setupEmailTextField()
//        setupErrorLabel()
//        setupPasswordTextField()
//        setupRegistrationButton()
//    }
//    
//    private func setupTitleLabel() {
//        titleLabel.text = "Регистрация"
//        titleLabel.font = Constants.fontH1
//        titleLabel.textAlignment = .center
//        view.addSubview(titleLabel)
//        
//        titleLabel.translatesAutoresizingMaskIntoConstraints = false
//        titleLabel.pinTop(to: self.view, Constants.inset1 * 3)
//        //titleLabel.pinLeft(to: self.view.safeAreaLayoutGuide.leadingAnchor, Constants.inset)
//        titleLabel.pinHorizontal(to: self.view, Constants.inset1)
//    }
//
//    
//    private func setupLoginTextField() {
//        loginTextField.placeholder = "Имя пользователя"
//        loginTextField.borderStyle = .roundedRect
//        loginTextField.autocorrectionType = .no
//        view.addSubview(loginTextField)
//        
//        loginTextField.pinTop(to: titleLabel.bottomAnchor, Constants.inset1 * 2)
//        loginTextField.pinLeft(to: self.view, Constants.inset1)
//        loginTextField.pinRight(to: self.view, Constants.inset1)
//        loginTextField.setHeight(50)
//        
//        loginTextField.delegate = self
//    }
//    
//
//    private func setupEmailTextField() {
//        emailTextField.placeholder = "E-mail"
//        emailTextField.borderStyle = .roundedRect
//        emailTextField.autocorrectionType = .no
//        view.addSubview(emailTextField)
//        
//        emailTextField.pinTop(to: loginTextField.bottomAnchor, Constants.inset1 * 0.5)
//        emailTextField.pinLeft(to: self.view, Constants.inset1)
//        emailTextField.pinRight(to: self.view, Constants.inset1)
//        emailTextField.setHeight(50)
//        
//        emailTextField.delegate = self
//    }
//
//
//    private func setupErrorLabel() {
//        errorLabel.text = "Такое имя уже занято"
//        errorLabel.textAlignment = .center
//        errorLabel.textColor = .red
//        view.addSubview(errorLabel)
//        
//        errorLabel.pinBottom(to: loginTextField.topAnchor, 16)
//        errorLabel.pinCenterX(to: self.view)
//
//        errorLabel.isHidden = true
//    }
//
//    
//    private func setupPasswordTextField() {
//        passwordTextField.placeholder = "Пароль"
//        passwordTextField.borderStyle = .roundedRect
//        passwordTextField.isSecureTextEntry = true
//        view.addSubview(passwordTextField)
//        
//        passwordTextField.pinTop(to: emailTextField.bottomAnchor, Constants.inset1 * 0.5)
//        passwordTextField.pinHorizontal(to: self.view, Constants.inset1)
//        passwordTextField.setHeight(50)
//        
//        passwordTextField.delegate = self
//    }
//    
//    
//    private func setupRegistrationButton() {
//        registerButton.setTitle("Создать аккаунт".uppercased(), for: .normal)
//        registerButton.backgroundColor = Colors.black.uiColor
//        view.addSubview(registerButton)
//        
//        registerButton.pinTop(to: passwordTextField.bottomAnchor, Constants.inset1 * 2)
////        registerButton.pinLeft(to: self.view, Constants.inset)
//        registerButton.pinHorizontal(to: self.view, Constants.inset1)
//        registerButton.setHeight(50)
//        
//        registerButton.addTarget(self, action: #selector(registerButtonTapped), for: .touchUpInside)
//    }
//
//    @objc func registerButtonTapped() {
////        print("Register")
//        var isCorrect = true
//        if loginTextField.text == "" {
//            loginTextField.layer.borderColor = UIColor.red.cgColor
//            loginTextField.layer.borderWidth = 1
//            isCorrect = false
//        }
//        
//        if emailTextField.text == "" {
//            emailTextField.layer.borderColor = UIColor.red.cgColor
//            emailTextField.layer.borderWidth = 1
//            isCorrect = false
//        }
//        
//        if passwordTextField.text == "" {
//            passwordTextField.layer.borderColor = UIColor.red.cgColor
//            passwordTextField.layer.borderWidth = 1
//            isCorrect = false
//        }
//        
//        if isCorrect {
//            // check registration
//        } else {
//            errorLabel.text = "Заполните все поля"
//            errorLabel.isHidden = false
//        }
//        
//    }
//    
//    
//    
//}

//extension RegistrationViewController: UITextFieldDelegate {
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        textField.resignFirstResponder()
//        return true
//    }
//    
//    @objc private func dissmissKeyboard() {
//        view.endEditing(true)
//    }
//    
//    private func addTapGesture() {
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dissmissKeyboard))
//        view.addGestureRecognizer(tapGesture)
//    }
//    
//}
