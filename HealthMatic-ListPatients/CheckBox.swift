//
//  CheckBox.swift
//  HealthMatic
//
//  Created by Prashant Pol on 2016-10-17.
//  Copyright © 2016 MAPD-SPY. All rights reserved.
//

import UIKit

class CheckBox: UIButton {
    
    //images
    let checkedimage=UIImage(named:"checked")! as UIImage
    let uncheckedimage=UIImage(named:"unchecked")! as UIImage
    
    //bool property
    var isChecked: Bool=false{
        didSet{
            if isChecked==true
            {
                self.setImage(checkedimage,for:.normal)
            }
            else
            {
                self.setImage(uncheckedimage,for:.normal)
            }
        }
    }
    override func awakeFromNib(){
        self.addTarget(self,action:#selector(CheckBox.buttonClicked(_:)),for:UIControlEvents.touchUpInside)
        self.isChecked=false
    }
    
    func buttonClicked(_ sender:UIButton)
    {
        if (sender==self){
            if isChecked==true
            {
                isChecked=false
                
            }
            else{
                isChecked=true
            }
            }
    }
    

}
