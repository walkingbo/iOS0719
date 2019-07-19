//
//  ViewController.swift
//  iOS0719
//
//  Created by 503_18 on 19/07/2019.
//  Copyright © 2019 503_18. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
 
    @IBOutlet weak var label2: UILabel!
    
    @IBAction func click(_ sender: Any) {
        
        self.label2.text = "피카추"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(timer:Timer)->Void in
            //현재 시간 가져오기
            let date = Date()
            //날짜를 문자여로 만들어 주는 클래스이 인스턴스 생성
            let formatter = DateFormatter()
            //포맷 설정
            formatter.dateFormat = "yyyy-MM-dd ccc hh:mm:ss"
            //출력내용 만들기
            let msg = formatter.string(from: date)
            //레이블에 msg를 출력
            //클로저 안에서 인스턴스 변수를 사용할 때는 self.을 추가해야 합니다.
            self.label.text = msg
            //레이블의 경계선 설정
            //뷰의 속성으로 설정이 안되는 UI는 layer 속성이용
            self.label.layer.borderWidth = 4
            self.label.layer.borderColor = UIColor.red.cgColor
            
            
        })
        //timer.fire()
    }


}

