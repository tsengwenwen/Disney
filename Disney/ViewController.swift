//
//  ViewController.swift
//  Disney
//
//  Created by TsengWen on 2024/5/5.
//

import UIKit

struct disney {
    let name: String
    let pic: String
}
   
class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var picImageView: UIImageView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    let mickey : [disney] = [disney(name: "米奇", pic: "米奇"),disney(name: "米妮", pic: "米妮"),disney(name: "唐老鴨", pic: "唐老鴨"),disney(name: "黛絲", pic: "黛絲"),disney(name: "高飛", pic: "高飛"),disney(name: "布魯托", pic: "布魯托")]
    
    let pooh : [disney] = [disney(name: "小熊維尼", pic: "小熊維尼"),disney(name: "小豬", pic: "小豬"),disney(name: "跳跳虎", pic: "跳跳虎"),disney(name: "屹耳", pic: "屹耳"),disney(name: "瑞比", pic: "瑞比"),disney(name: "克里斯多弗‧羅賓", pic: "克里斯多弗‧羅賓")]
    
    let princess : [disney] = [disney(name: "白雪公主", pic: "白雪公主"),disney(name: "奧蘿拉(睡美人)", pic: "奧蘿拉"),disney(name: "仙度瑞拉(灰姑娘)", pic: "仙度瑞拉"),disney(name: "貝兒(美女與野獸)", pic: "貝兒"),disney(name: "茉莉(阿拉丁)", pic: "茉莉"),disney(name: "愛麗兒(小美人魚)", pic: "愛麗兒")]
    
    
    func changeImage(){
        let role : disney
        if segmentedControl.selectedSegmentIndex == 0{
            role = mickey[pageControl.currentPage]
        }else if segmentedControl.selectedSegmentIndex == 1{
            role = pooh[pageControl.currentPage]
        }else {
                role = princess[pageControl.currentPage]
            }
            nameLabel.text = role.name
            picImageView.image = UIImage(named: role.pic)
            
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            
            picImageView.image = UIImage(named: "米奇")
            nameLabel.text = "米奇"
        }
        
        @IBAction func nextButton(_ sender: Any) {
            pageControl.currentPage += 1
            changeImage()
        }
        
        @IBAction func preButton(_ sender: Any) {
            pageControl.currentPage -= 1
            changeImage()
        }
        
        @IBAction func pageControl(_ sender: Any) {
            changeImage()
        }
        @IBAction func segmentedControl(_ sender: Any) {
            pageControl.currentPage = 0
            changeImage()
        }
        
    }
    
