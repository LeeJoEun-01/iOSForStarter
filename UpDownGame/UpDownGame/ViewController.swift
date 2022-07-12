//
//  ViewController.swift
//  UpDownGame
//
//  Created by 이조은 on 2022/07/02.
//

import UIKit

class ViewController: UIViewController {
    
    var randomValue: Int = 0
    var tryCount: Int = 0
    
//  스토리에 있는 요소와 연결하는 어노테이션
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var tryCountLabel: UILabel!
    @IBOutlet weak var sliderValueLabel: UILabel!
    @IBOutlet weak var minimumValueLabel: UILabel!
    @IBOutlet weak var maximumValueLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        slider.setThumbImage(UIImage(named: "slider_thumb"), for: .normal)
        reset()
    }

//  이벤트에 반응하는 액션
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
        let integerValue: Int = Int(sender.value) //형변환
        sliderValueLabel.text = String(integerValue)
    }
    
    func showAlert(message: String) {
        
        let alert = UIAlertController(title: nil, //nil = 아무것도 없다!
                                      message: message,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK",
                                     style: .default) { (action) in
            self.reset()
        }
        
        alert.addAction(okAction)
        present(alert,
                animated: true,
        completion: nil)
    }
    
    @IBAction func touchUpHitButton(_ sender: UIButton) {
        print(slider.value)
        // 형변환 ( 슬라이더는 원래 float인데 답은 Int 형태 임으로 int로 바꿨다가 float으로 형변환을 해주면 슬라이더가 12.00와 같은 이런 형태의 숫자로 슬라이더가 이동한다.)
        let hitValue: Int = Int(slider.value)
        slider.value = Float(hitValue)
        
        tryCount = tryCount + 1
        tryCountLabel.text = " \(tryCount) / 5 "
        
        if randomValue == hitValue {
            //print("You Hit!!")
            showAlert(message: "You Hit!!")
            reset()
        } else if tryCount >= 5 {
            //print("You Lose...")
            showAlert(message: "You Lose...")
            reset()
        } else if randomValue > hitValue {
            slider.maximumValue = Float(hitValue)
            minimumValueLabel.text = String(hitValue)
        } else if randomValue < hitValue {
            slider.maximumValue = Float(hitValue)
            maximumValueLabel.text = String(hitValue)
        }
    }
    
    @IBAction func touchUpResetButton(_ sender: UIButton) {
        print("touch up reset button")
        reset()
    }
    
    func reset() {
        print("reset!")
        randomValue = Int.random(in: 0...30)
        print(randomValue)
        tryCount = 0
        tryCountLabel.text = "0 / 5"
        slider.minimumValue = 0
        slider.maximumValue = 30
        slider.value = 15
        minimumValueLabel.text = "0"
        maximumValueLabel.text = "30"
        sliderValueLabel.text = "15"
    }

}

