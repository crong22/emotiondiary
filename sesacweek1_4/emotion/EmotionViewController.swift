//
//  EmotionViewController.swift
//  sesacweek1_4
//
//  Created by 여누 on 5/19/24.
//

import UIKit

class EmotionViewController: UIViewController {
    @IBOutlet var mainView: UIView! //뷰
    
    @IBOutlet var mainTitleLabel: UILabel! //제목
    @IBOutlet var listButton: UIButton! //리스트버튼
    
    //버튼
    @IBOutlet var emotion1Button: UIButton!
    @IBOutlet var emotion2Button: UIButton!
    @IBOutlet var emotion3Button: UIButton!
    @IBOutlet var emotion4Button: UIButton!
    @IBOutlet var emotion5Button: UIButton!
    @IBOutlet var emotion6Button: UIButton!
    @IBOutlet var emotion7Button: UIButton!
    @IBOutlet var emotion8Button: UIButton!
    @IBOutlet var emotion9Button: UIButton!
    
    
    //버튼 Label
    @IBOutlet var buttonTitle1Label: UILabel!
    @IBOutlet var buttonTitle2Label: UILabel!
    @IBOutlet var buttonTitle3Label: UILabel!
    @IBOutlet var buttonTitle4Label: UILabel!
    @IBOutlet var buttonTitle5Label: UILabel!
    @IBOutlet var buttonTitle6Label: UILabel!
    @IBOutlet var buttonTitle7Label: UILabel!
    @IBOutlet var buttonTitle8Label: UILabel!
    @IBOutlet var buttonTitle9Label: UILabel!
    
    //숫자
    @IBOutlet var emotion1Label: UILabel!
    @IBOutlet var emotion2Label: UILabel!
    @IBOutlet var emotion3Label: UILabel!
    @IBOutlet var emotion4Label: UILabel!
    @IBOutlet var emotion5Label: UILabel!
    @IBOutlet var emotion6Label: UILabel!
    @IBOutlet var emotion7Label: UILabel!
    @IBOutlet var emotion8Label: UILabel!
    @IBOutlet var emotion9Label: UILabel!
    
    var num1 = 0
    var num1string = ""
    var num2 = 0
    var num2string = ""
    var num3 = 0
    var num3string = ""
    var num4 = 0
    var num4string = ""
    var num5 = 0
    var num5string = ""
    var num6 = 0
    var num6string = ""
    var num7 = 0
    var num7string = ""
    var num8 = 0
    var num8string = ""
    var num9 = 0
    var num9string = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //배경
        //mainView.backgroundColor = .yellow
        
        //목록버튼
        listButton.setImage(UIImage(systemName: "list.dash"), for: .normal)
        
        //타이틀
        mainTitleLabel.text = "감정 다이어리"
        mainTitleLabel.font = .systemFont(ofSize: 18, weight: .bold)
        mainTitleLabel.textAlignment = .center
        
        //1번버튼
        emotion1Button.setImage(UIImage(named: "slime1"), for: .normal)
        
        buttonTitle1Label.text = "행복해"
        buttonTitle1Label.font = .systemFont(ofSize: 12)
        buttonTitle1Label.textAlignment = .center

        num1string = "\(num1)"
        emotion1Label.text = num1string
        emotion1Label.font = .systemFont(ofSize: 12)
        //2번버튼
        emotion2Button.setImage(UIImage(named: "slime2"), for: .normal)
        
        buttonTitle2Label.text = "사랑해"
        buttonTitle2Label.font = .systemFont(ofSize: 12)
        buttonTitle2Label.textAlignment = .center
        
        num2string = "\(num2)"
        emotion2Label.text = num2string
        emotion2Label.font = .systemFont(ofSize: 12)
        //3번버튼
        emotion3Button.setImage(UIImage(named: "slime3"), for: .normal)
        
        buttonTitle3Label.text = "좋아해"
        buttonTitle3Label.font = .systemFont(ofSize: 12)
        buttonTitle3Label.textAlignment = .center
        
        num3string = "\(num3)"
        emotion3Label.text = num3string
        emotion3Label.font = .systemFont(ofSize: 12)
        //4번버튼
        emotion4Button.setImage(UIImage(named: "slime4"), for: .normal)
        
        buttonTitle4Label.text = "당황해"
        buttonTitle4Label.font = .systemFont(ofSize: 12)
        buttonTitle4Label.textAlignment = .center
        
        num4string = "\(num4)"
        emotion4Label.text = num4string
        emotion4Label.font = .systemFont(ofSize: 12)
        //5번버튼
        emotion5Button.setImage(UIImage(named: "slime5"), for: .normal)
        
        buttonTitle5Label.text = "속상해"
        buttonTitle5Label.font = .systemFont(ofSize: 12)
        buttonTitle5Label.textAlignment = .center
        
        num5string = "\(num5)"
        emotion5Label.text = num5string
        emotion5Label.font = .systemFont(ofSize: 12)
        //6번버튼
        emotion6Button.setImage(UIImage(named: "slime6"), for: .normal)
        
        buttonTitle6Label.text = "우울해"
        buttonTitle6Label.font = .systemFont(ofSize: 12)
        buttonTitle6Label.textAlignment = .center
        
        num6string = "\(num6)"
        emotion6Label.text = num6string
        emotion6Label.font = .systemFont(ofSize: 12)
        //7번버튼
        emotion7Button.setImage(UIImage(named: "slime7"), for: .normal)
      
        buttonTitle7Label.text = "심심해"
        buttonTitle7Label.font = .systemFont(ofSize: 12)
        buttonTitle7Label.textAlignment = .center
        
        num7string = "\(num7)"
        emotion7Label.text = num7string
        emotion7Label.font = .systemFont(ofSize: 12)
        //8번버튼
        emotion8Button.setImage(UIImage(named: "slime8"), for: .normal)
      
        buttonTitle8Label.text = "싫어해"
        buttonTitle8Label.font = .systemFont(ofSize: 12)
        buttonTitle8Label.textAlignment = .center
        
        num8string = "\(num8)"
        emotion8Label.text = num8string
        emotion8Label.font = .systemFont(ofSize: 12)
        //9번버튼
        emotion9Button.setImage(UIImage(named: "slime9"), for: .normal)
      
        buttonTitle9Label.text = "증오해"
        buttonTitle9Label.font = .systemFont(ofSize: 12)
        buttonTitle9Label.textAlignment = .center
        
        num9string = "\(num9)"
        emotion9Label.text = num9string
        emotion9Label.font = .systemFont(ofSize: 12)
        
    }
    
    @IBAction func emotion1Tapped(_ sender: UIButton) {
        num1 = num1 + 1
        num1string = "\(num1)"
        
        emotion1Label.text = num1string
    }
    
    @IBAction func emtion2Tapeed(_ sender: UIButton) {
        num2 = num2 + 1
        num2string = "\(num2)"
        
        emotion2Label.text = num2string
    }
    
    @IBAction func emtion3Tapeed(_ sender: UIButton) {
        num3 = num3 + 1
        num3string = "\(num3)"
        
        emotion3Label.text = num3string
    }
    
    @IBAction func emtion4Tapeed(_ sender: UIButton) {
        num4 = num4 + 1
        num4string = "\(num4)"
        
        emotion4Label.text = num4string
    }
    
    @IBAction func emotion5Tapped(_ sender: UIButton) {
        num5 = num5 + 1
        num5string = "\(num5)"
        
        emotion5Label.text = num5string
    }
    
    @IBAction func emtion6Tapped(_ sender: UIButton) {
        num6 = num6 + 1
        num6string = "\(num6)"
        
        emotion6Label.text = num6string
    }
    
    @IBAction func emotion7Tapped(_ sender: UIButton) {
        num7 = num7 + 1
        num7string = "\(num7)"
        
        emotion7Label.text = num7string
    }
    
    @IBAction func emotion8Tapped(_ sender: UIButton) {
        num8 = num8 + 1
        num8string = "\(num8)"
        
        emotion8Label.text = num8string
    }
    
    @IBAction func emotion9Tapped(_ sender: UIButton) {
        num9 = num9 + 1
        num9string = "\(num9)"
        
        emotion9Label.text = num9string
    }
}
