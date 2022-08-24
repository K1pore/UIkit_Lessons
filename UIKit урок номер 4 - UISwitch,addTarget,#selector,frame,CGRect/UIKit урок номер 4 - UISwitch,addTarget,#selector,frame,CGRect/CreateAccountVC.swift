//
//  CreateAccountVC.swift
//  UIKit урок номер 4 - UISwitch,addTarget,#selector,frame,CGRect
//
//  Created by Cyril on 22.08.2022.
//

import UIKit

class CreateAccountVC: UIViewController {
    
    //label
    let labelNameUsers = UILabel()
    let labelCountGuests = UILabel()
    let labelTableNumber = UILabel()
    let labelTableReservation = UILabel()
    let labelPrepayment = UILabel()
    let labelRoomVip = UILabel()
    //textFields
    let textNameUsers = UITextField()
    let textCountGuests = UITextField()
    let textTableNumber = UITextField()
    //switch
    let switchesTableReservation = UISwitch()
    let switchesPrepayment = UISwitch()
    let switchesRoomVip = UISwitch()
    //buttons
    let buttonPaymentReceipt = UIButton()
    let buttonBackVC = UIViewController()
    //tips next time
    let labelTips = UILabel()
    let pickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Setings view
        view.backgroundColor = .white
        title = "Cafe Mario"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Выход",
                                                            style: .done,
                                                            target: self,
                                                            action: #selector(doneRight))
        
        //MARK: Name User
        labelNameUsers.text = "ФИО:"
        labelNameUsers.textColor = .systemPink
        labelNameUsers.frame = CGRect(x: 50, y: 120,
                                      width: 180, height: 20)
        labelNameUsers.font = .boldSystemFont(ofSize: 14)
        view.addSubview(labelNameUsers)
        textNameUsers.placeholder = "Введите ФИО"
        textNameUsers.borderStyle = .bezel
        textNameUsers.font = .systemFont(ofSize: 13)
        textNameUsers.frame = CGRect(x: 50, y: 150,
                                     width: 180, height: 20)
        textNameUsers.backgroundColor = .white
        view.addSubview(textNameUsers)

        //MARK: Count Guests
        labelCountGuests.text = "Колличество гостей:"
        labelCountGuests.textColor = .systemPink
        labelCountGuests.frame = CGRect(x: 50, y: 200,
                                        width: 180, height: 20)
        labelCountGuests.font = .boldSystemFont(ofSize: 14)
        view.addSubview(labelCountGuests)
        textCountGuests.placeholder = "Введите коллиство"
        textCountGuests.borderStyle = .bezel
        textCountGuests.frame = CGRect(x: 50, y: 230,
                                       width: 180, height: 20)
        textCountGuests.backgroundColor = .white
        textCountGuests.font = .systemFont(ofSize: 13)
        textCountGuests.keyboardType = .numberPad
        view.addSubview(textCountGuests)
        
        //MARK: Table number
        labelTableNumber.text = "Номер стола:"
        labelTableNumber.textColor = .systemPink
        labelTableNumber.frame = CGRect(x: 50, y: 280,
                                      width: 180, height: 20)
        labelTableNumber.font = .boldSystemFont(ofSize: 14)
        view.addSubview(labelTableNumber)
        textTableNumber.placeholder = "Введите номер стола"
        textTableNumber.borderStyle = .bezel
        textTableNumber.keyboardType = .numberPad
        textTableNumber.font = .systemFont(ofSize: 13)
        textTableNumber.frame = CGRect(x: 50, y: 310,
                                     width: 180, height: 20)
        textTableNumber.backgroundColor = .white
        textTableNumber.font = .systemFont(ofSize: 13)
        view.addSubview(textTableNumber)
        
        //MARK: Table reservation
        labelTableReservation.text = "Бронировали стол?"
        labelTableReservation.textColor = .systemPink
        labelTableReservation.frame = CGRect(x: 50, y: 365,
                                             width: 180, height: 20)
        labelTableReservation.font = .boldSystemFont(ofSize: 14)
        view.addSubview(labelTableReservation)
        switchesTableReservation.frame = CGRect(x: 260, y: 360,
                                                width: 0, height: 0)
        view.addSubview(switchesTableReservation)
        
        //MARK: Prepayment
        labelPrepayment.text = "Предоплата?"
        labelPrepayment.textColor = .systemPink
        labelPrepayment.frame = CGRect(x: 50, y: 435,
                                       width: 180, height: 20)
        labelPrepayment.font = .boldSystemFont(ofSize: 14)
        view.addSubview(labelPrepayment)
        switchesPrepayment.frame = CGRect(x: 260, y: 430,
                                          width: 0, height: 0)
        view.addSubview(switchesPrepayment)
        
        //MARK: VIP room
        labelRoomVip.text = "VIP комната?"
        labelRoomVip.textColor = .systemPink
        labelRoomVip.frame = CGRect(x: 50, y: 505,
                                    width: 180, height: 20)
        labelRoomVip.font = .boldSystemFont(ofSize: 14)
        view.addSubview(labelRoomVip)
        switchesRoomVip.frame = CGRect(x: 260, y: 500,
                                       width: 0, height: 0)
        view.addSubview(switchesRoomVip)
        
        //MARK: Button payment receipt
        buttonPaymentReceipt.setTitle("Выставить счет", for: .normal)
        view.addSubview(buttonPaymentReceipt)
        //button label
        buttonPaymentReceipt.titleLabel?.font = .preferredFont(forTextStyle: .title1)
        buttonPaymentReceipt.backgroundColor = .systemPink
        buttonPaymentReceipt.frame = CGRect(x: 50, y: 630,
                                                width: 280, height:55)
        buttonPaymentReceipt.addTarget(self, action: #selector(aletPayment),for: .touchUpInside)
        
        // picker
        //add next time
    }
    
    @objc func aletPayment() {
        
        let alertMessage = UIAlertController(title: "Отправить чек?", message: nil, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Да", style: .default) { (alertAction) in
            let checkVC = CheckVC()
            let vcNavCheck = UINavigationController(rootViewController: checkVC)
            vcNavCheck.modalPresentationStyle = .fullScreen
            self.navigationController?.pushViewController(checkVC, animated: true)
        }
        let alertDis = UIAlertAction(title: "Отмена", style: .cancel, handler: nil)
        alertMessage.addAction(alertAction)
        alertMessage.addAction(alertDis)
        present(alertMessage, animated: true)
    }
    //Exit button
    @objc func doneRight() {
        dismiss(animated: true, completion: nil)
    }
    // that hidden keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches,
                           with: event)
        self.view.endEditing(true)
    }
}
