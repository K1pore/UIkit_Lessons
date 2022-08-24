//
//  ViewController.swift
//  UIKit урок номер 4 - UISwitch,addTarget,#selector,frame,CGRect
//
//  Created by Cyril on 20.08.2022.
import UIKit

class ViewController: UIViewController {
    
    // view sign in
    let labelSignIn = UILabel()
    let labelEmail = UILabel()
    let labelPassword = UILabel()
    let labelCompanyName = UILabel()
    // textField
    let textEmail = UITextField()
    let textPassword = UITextField()
    // button
    let buttonShowPassword = UIButton()
    let buttonCreateAccount = UIButton()
    // Images
    let imageClouds = UIImage(named: "imageCloud.png")
    var imageViewClouds = UIImageView()
    let imagePassword = UIImage(named: "show.png")
    var imageViewPassword = UIImageView()
    let imageNil = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        //MARK: Apple company logo
        imageViewClouds.frame = CGRect(x: 110, y: 100,
                                            width: 160, height: 100)
        imageViewClouds.image = self.imageClouds
        view.addSubview(imageViewClouds)
        //label
        labelCompanyName.textColor = .systemGray
        labelCompanyName.text = "Apple Company"
        labelCompanyName.frame = CGRect(x: 130, y: 210,
                                             width: 150, height: 20)
        view.addSubview(labelCompanyName)
        //MARK: Button register in system
        buttonCreateAccount.setTitle("Войти", for: .normal)
        view.addSubview(buttonCreateAccount)
        //button label font
        buttonCreateAccount.titleLabel?.font = .preferredFont(forTextStyle: .title1)
        buttonCreateAccount.backgroundColor = .systemPink
        buttonCreateAccount.frame = CGRect(x: 50, y: 500,
                                                width: 280, height:55)
        buttonCreateAccount.addTarget(self, action: #selector(nextPageTwo),
                                      for: .touchUpInside)
        
        //MARK: label Sign in
        labelSignIn.frame = CGRect(x: 50, y: 210,
                                        width: 100, height: 100)
        labelSignIn.font = .preferredFont(forTextStyle: .title3)
        labelSignIn.font = .boldSystemFont(ofSize: 30)
        labelSignIn.text = "Sign In"
        view.addSubview(labelSignIn)
        
        //MARK: E-mail
        //label
        labelEmail.text = "Email"
        labelEmail.frame = CGRect(x: 50, y: 250,
                                       width: 100, height: 100)
        labelEmail.font = .boldSystemFont(ofSize: 30)
        labelEmail.font = .preferredFont(forTextStyle: .subheadline)
        labelEmail.textColor = .systemPink
        view.addSubview(labelEmail)
        //TextField
        textEmail.frame = CGRect(x: 50, y: 320,
                                      width: 240, height: 20)
        view.addSubview(textEmail)
        textEmail.borderStyle = .bezel
        textEmail.keyboardType = .emailAddress
        
        //MARK: Password
        //label
        labelPassword.text = "Password"
        labelPassword.textColor = .systemPink
        labelPassword.frame = CGRect(x: 50, y: 330,
                                          width: 100, height: 100)
        view.addSubview(labelPassword)
        labelPassword.font = .preferredFont(forTextStyle: .subheadline)
        //TextField
        textPassword.frame = CGRect(x: 50, y: 400,
                                      width: 240, height: 20)
        view.addSubview(textPassword)
        textPassword.borderStyle = .bezel
        textPassword.isSecureTextEntry = true
        //button
        buttonShowPassword.frame = CGRect(x: 300, y: 400,
                                               width: 20, height: 20)
        view.addSubview(buttonShowPassword)
        buttonShowPassword.setImage(imagePassword, for: .normal)
        buttonShowPassword.setImage(imageNil, for: .highlighted)
        buttonShowPassword.addTarget(self, action: #selector(showPasswordButton(_:)),
                                          for: .touchUpInside)
     
    }

  //  MARK: Target button
    @objc func nextPageTwo() -> Void  {
        let secondVC = CreateAccountVC()
        let navVC = UINavigationController(rootViewController: secondVC)
        navVC.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(secondVC, animated: true)
        present(navVC, animated: true)
 }
    
    @objc func showPasswordButton(_ parametrs: UIButton) -> Void  {
        if parametrs.isTouchInside {
            textPassword.isSecureTextEntry = false
        } else {
            textPassword.isSecureTextEntry = true
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches,
                           with: event)
        self.view.endEditing(true)
    }
    
    //MARK: Alerts add next time
    func alert() {
        
        //alert
        let alertIsNil = UIAlertController(title: "Данные не введены", message: "Введите логин и пароль", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .cancel)
        let alertPasswordError = UIAlertController(title: "Не правильный логин или пароль", message: "Повторите попытку", preferredStyle: .alert)
        
    }
}

