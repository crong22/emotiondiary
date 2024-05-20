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
    
    
    //버튼 타이틀
    @IBOutlet var buttonTitle1Label: UILabel!
    @IBOutlet var buttonTitle2Label: UILabel!
    @IBOutlet var buttonTitle3Label: UILabel!
    @IBOutlet var buttonTitle4Label: UILabel!
    @IBOutlet var buttonTitle5Label: UILabel!
    @IBOutlet var buttonTitle6Label: UILabel!
    @IBOutlet var buttonTitle7Label: UILabel!
    @IBOutlet var buttonTitle8Label: UILabel!
    @IBOutlet var buttonTitle9Label: UILabel!
    
    //숫자 (카운트)
    @IBOutlet var emotion1Label: UILabel!
    @IBOutlet var emotion2Label: UILabel!
    @IBOutlet var emotion3Label: UILabel!
    @IBOutlet var emotion4Label: UILabel!
    @IBOutlet var emotion5Label: UILabel!
    @IBOutlet var emotion6Label: UILabel!
    @IBOutlet var emotion7Label: UILabel!
    @IBOutlet var emotion8Label: UILabel!
    @IBOutlet var emotion9Label: UILabel!
    
    @IBOutlet var labelList: [UILabel]!
    //0525 Tag 사용으로 코드 간소화
    var num = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
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
        buttonSetting(buttonImage : emotion1Button,buttonImageName : "slime1", buttonTitle : buttonTitle1Label, buttonName : "행복해", emotionCountLabel : emotion1Label)
        //2번버튼
        buttonSetting(buttonImage : emotion2Button,buttonImageName : "slime2", buttonTitle : buttonTitle2Label, buttonName : "사랑해", emotionCountLabel : emotion2Label)
        //3번버튼
        buttonSetting(buttonImage : emotion3Button,buttonImageName : "slime3", buttonTitle : buttonTitle3Label, buttonName : "좋아해", emotionCountLabel : emotion3Label)
        //4번버튼
        buttonSetting(buttonImage : emotion4Button,buttonImageName : "slime4", buttonTitle : buttonTitle4Label, buttonName : "당황해", emotionCountLabel : emotion4Label)
        //5번버튼
        buttonSetting(buttonImage : emotion5Button,buttonImageName : "slime5", buttonTitle : buttonTitle5Label, buttonName : "속상해", emotionCountLabel : emotion5Label)
        //6번버튼
        buttonSetting(buttonImage : emotion6Button,buttonImageName : "slime6", buttonTitle : buttonTitle6Label, buttonName : "우울해", emotionCountLabel : emotion6Label)
        //7번버튼
        buttonSetting(buttonImage : emotion7Button,buttonImageName : "slime7", buttonTitle : buttonTitle7Label, buttonName : "심심해", emotionCountLabel : emotion7Label)
        //8번버튼
        buttonSetting(buttonImage : emotion8Button,buttonImageName : "slime8", buttonTitle : buttonTitle8Label, buttonName : "싫어해", emotionCountLabel : emotion8Label)
        //9번버튼
        buttonSetting(buttonImage : emotion9Button ,buttonImageName : "slime9", buttonTitle : buttonTitle9Label, buttonName : "증오해", emotionCountLabel : emotion9Label)
        
        //기본 횟수 적기
        emotion1Label.text = "\(num[0])"
        emotion2Label.text = "\(num[1])"
        emotion3Label.text = "\(num[2])"
        emotion4Label.text = "\(num[3])"
        emotion5Label.text = "\(num[4])"
        emotion6Label.text = "\(num[5])"
        emotion7Label.text = "\(num[6])"
        emotion8Label.text = "\(num[7])"
        emotion9Label.text = "\(num[8])"
        
    }
    //0520 버튼이름및이미지/레이블설정함수
    func buttonSetting(buttonImage : UIButton, buttonImageName : String, buttonTitle : UILabel, buttonName : String, emotionCountLabel : UILabel ){
        buttonImage.setImage(UIImage(named: buttonImageName ), for: .normal)
      
        buttonTitle.text = buttonName
        buttonTitle.font = .systemFont(ofSize: 12)
        buttonTitle.textAlignment = .center
    
        //emotion9Label.text = "\(num)"
        emotionCountLabel.font = .systemFont(ofSize: 12)
    }
    
    @IBAction func EmotionButtonClicked(_ sender: UIButton) {
        //버튼 마다 tag를 지정해준다 (9개면 0~8)
        //num이라는 변수를 list로 하여 모두 0으로 선언해주고, n번 째 행을 사용하여 한줄의 코드로 간소화
        num[sender.tag] = num[sender.tag] + 1
        
        labelList[sender.tag].text = "\(num[sender.tag])"
    }
    
    
}
