//
//  CheckVC.swift
//  UIKit урок номер 4 - UISwitch,addTarget,#selector,frame,CGRect
//
//  Created by Cyril on 24.08.2022.
//

import UIKit

class CheckVC: UIViewController {
    
    let labelNameFood = UILabel()
    let labelStrucFood = UILabel()
    let labelPrice = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Ваш счет:"
        
        //name food
        labelNameFood.text = "Салат цезарь"
        labelNameFood.font = .boldSystemFont(ofSize: 20)
        view.addSubview(labelNameFood)
        labelNameFood.frame = CGRect(x: 40, y: 100,
                                     width: 180, height: 25)
        //struct food
        labelStrucFood.text = "Помидоры, Куриное филе, Соус «Цезарь»..."
        labelStrucFood.textColor = .systemGray3
        labelStrucFood.font = .italicSystemFont(ofSize: 13)
        view.addSubview(labelStrucFood)
        labelStrucFood.frame = CGRect(x: 40, y: 130,
                                     width: 300, height: 25)
        //price
        labelPrice.text = "700"
        labelPrice.font = .systemFont(ofSize: 18)
        view.addSubview(labelPrice)
        labelPrice.frame = CGRect(x: 300, y: 100, width: 40, height: 25)
    }
}
