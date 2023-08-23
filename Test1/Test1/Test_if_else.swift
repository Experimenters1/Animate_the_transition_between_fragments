//
//  Test_if_else.swift
//  Test1
//
//  Created by Huy Vu on 8/23/23.
//

import UIKit

class Test_if_else: UIViewController {
    
    var is_Audio_Converter: Bool = false
    var is_check_VideoCompress: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func showIntermediateScreen(is_Audio_Converter: Bool, is_check_VideoCompress: Bool) {
        let videoPlayerViewController = ViewController.makeSelf(withAlbumName: is_Audio_Converter, is_check_VideoCompress: is_check_VideoCompress)
        videoPlayerViewController.modalPresentationStyle = .fullScreen

        CATransaction.begin()
        CATransaction.setAnimationDuration(0.5) // Độ dài của animation có thể thay đổi

        let transition = CATransition()
        transition.type = CATransitionType(rawValue: "flip")
        transition.subtype = CATransitionSubtype.fromLeft
        self.navigationController?.view.layer.add(transition, forKey: kCATransition)
        
        self.navigationController?.pushViewController(videoPlayerViewController, animated: false) // Không sử dụng animated mặc định
        
        CATransaction.commit()
    }

    
    @IBAction func True(_ sender: Any) {
        is_Audio_Converter = true // Cập nhật giá trị
        is_check_VideoCompress = false
        showIntermediateScreen(is_Audio_Converter: is_Audio_Converter, is_check_VideoCompress: is_check_VideoCompress)
        print("the result : \(is_Audio_Converter)")
    }
    
    
    @IBAction func False(_ sender: Any) {
        is_Audio_Converter = false // Cập nhật giá trị
        is_check_VideoCompress = false
        showIntermediateScreen(is_Audio_Converter: is_Audio_Converter, is_check_VideoCompress: is_check_VideoCompress)
        print("the result : \(is_Audio_Converter)")
    }
    
    @IBAction func Other_value(_ sender: Any) {
        is_Audio_Converter = false // Cập nhật giá trị
        is_check_VideoCompress = true
        showIntermediateScreen(is_Audio_Converter: is_Audio_Converter, is_check_VideoCompress: is_check_VideoCompress)
    }
    
    

}
