//
//  ViewController.swift
//  UpDownGame
//
//  Created by 이조은 on 2022/07/02.
//

import UIKit

class ViewController: UIViewController {
    
//  스토리에 있는 요소와 연결하는 어노테이션
    @IBOutlet weak var slider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        slider.setThumbImage(#imageLiteral(resourceName: "yagom_symbol"), for: .normal)
    }

//  이벤트에 반응하는 액션
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func touchUpHitButton(_ sender: UIButton) {
        print(slider.value)
    }
    
    @IBAction func touchUpResetButton(_ sender: UIButton) {
        print("touch up reset button")
    }

}

