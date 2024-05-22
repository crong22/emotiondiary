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
    @IBOutlet var resetButton: UIButton!
    
    var num = [0,0,0,0,0,0,0,0,0]
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
        
        //값 저장
        let numresult0 = UserDefaults.standard.integer(forKey: "result0")
        emotion1Label.text = "\(numresult0)"
        num[0] = numresult0
        print(numresult0)

        let numresult1 = UserDefaults.standard.integer(forKey: "result1")
        emotion2Label.text = "\(numresult1)"
        num[1] = numresult1
        print(numresult1)
        
        let numresult2 = UserDefaults.standard.integer(forKey: "result2")
        emotion3Label.text = "\(numresult2)"
        num[2] = numresult2
        print(numresult2)
        
        let numresult3 = UserDefaults.standard.integer(forKey: "result3")
        emotion4Label.text = "\(numresult3)"
        num[3] = numresult3
        print(numresult3)
        
        let numresult4 = UserDefaults.standard.integer(forKey: "result4")
        emotion5Label.text = "\(numresult4)"
        num[4] = numresult4
        print(numresult4)
        
        let numresult5 = UserDefaults.standard.integer(forKey: "result5")
        emotion6Label.text = "\(numresult5)"
        num[5] = numresult5
        print(numresult5)
        
        let numresult6 = UserDefaults.standard.integer(forKey: "result6")
        emotion7Label.text = "\(numresult6)"
        num[6] = numresult6
        print(numresult6)
        
        let numresult7 = UserDefaults.standard.integer(forKey: "result7")
        emotion8Label.text = "\(numresult7)"
        num[7] = numresult7
        print(numresult7)
        
        let numresult8 = UserDefaults.standard.integer(forKey: "result8")
        emotion9Label.text = "\(numresult8)"
        num[8] = numresult8
        print(numresult8)
        
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
    
//    @IBAction func EmotionButtonClicked(_ sender: UIButton) {
//        //버튼 마다 tag를 지정해준다 (9개면 0~8)
//        //num이라는 변수를 list로 하여 모두 0으로 선언해주고, n번 째 행을 사용하여 한줄의 코드로 간소화
//        num[sender.tag] = num[sender.tag] + 1
//        print("sender.tag \(num[sender.tag])")
//        
//        labelList[sender.tag].text = "\(num[sender.tag])"
//        
//        
//        
////        UserDefaults.standard.setValue(labelList[sender.tag].text, forKey: "result0")
//
////
//    }
    @IBAction func ButtonTapped(_ sender: UIButton) {
        num[0] = num[0] + 1
        emotion1Label.text = "\(num[0])"
        UserDefaults.standard.setValue(emotion1Label.text , forKey: "result0")
    }
    @IBAction func Button1Tapped(_ sender: UIButton) {
        num[1] = num[1] + 1
        emotion2Label.text = "\(num[1])"
        UserDefaults.standard.setValue(emotion2Label.text , forKey: "result1")
    }
    @IBAction func Button2Tapped(_ sender: UIButton) {
        num[2] = num[2] + 1
        emotion3Label.text = "\(num[2])"
        UserDefaults.standard.setValue(emotion3Label.text , forKey: "result2")
    }
    
    @IBAction func Button3Tapped(_ sender: UIButton) {
        num[3] = num[3] + 1
        emotion4Label.text = "\(num[3])"
        UserDefaults.standard.setValue(emotion4Label.text , forKey: "result3")
    }
    @IBAction func Button4Tapped(_ sender: UIButton) {
        num[4] = num[4] + 1
        emotion5Label.text = "\(num[4])"
        UserDefaults.standard.setValue(emotion5Label.text , forKey: "result4")
    }
    @IBAction func Button5Tapped(_ sender: UIButton) {
        num[5] = num[5] + 1
        emotion6Label.text = "\(num[5])"
        UserDefaults.standard.setValue(emotion6Label.text , forKey: "result5")
    }
    
    @IBAction func Button6Tapped(_ sender: UIButton) {
        num[6] = num[6] + 1
        emotion7Label.text = "\(num[6])"
        UserDefaults.standard.setValue(emotion7Label.text , forKey: "result6")
    }
    @IBAction func Button7Tapped(_ sender: UIButton) {
        num[7] = num[7] + 1
        emotion8Label.text = "\(num[7])"
        UserDefaults.standard.setValue(emotion8Label.text , forKey: "result7")
    }
    @IBAction func Button8Tapped(_ sender: UIButton) {
        num[8] = num[8] + 1
        emotion9Label.text = "\(num[8])"
        UserDefaults.standard.setValue(emotion9Label.text , forKey: "result8")
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        UserDefaults.standard.removeObject(forKey: "result0")
        UserDefaults.standard.removeObject(forKey: "result1")
        UserDefaults.standard.removeObject(forKey: "result2")
        UserDefaults.standard.removeObject(forKey: "result3")
        UserDefaults.standard.removeObject(forKey: "result4")
        UserDefaults.standard.removeObject(forKey: "result5")
        UserDefaults.standard.removeObject(forKey: "result6")
        UserDefaults.standard.removeObject(forKey: "result7")
        UserDefaults.standard.removeObject(forKey: "result8")
        

        //1.
        //빈칸으로 넣으려면 nil
        let alert = UIAlertController(title:"RESET", message: nil, preferredStyle: .alert)
        
        //2.
        
        let close = UIAlertAction(title: "CLOSE", style: .cancel)
        
        //3. 버튼 합치기
        alert.addAction(close)
        
        //4.
        present(alert, animated : true)
    }
    
}
