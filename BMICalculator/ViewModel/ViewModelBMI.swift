//
//  ViewModelBMI.swift
//  BMICalculator
//
//  Created by İbrahim Bayram on 13.01.2023.
//

import UIKit

class ViewModelBMI {
    
    func calculateBMI(height : Float, weight : Float) -> BMI {
        let value = weight / (height * height)
        var advice = ""
        var color : UIColor?
        if value < 18.5 {
            advice = "İdeal kilonuzun altındasınız.Besin içeriği yüksek gıdalar tüketmeye dikkat edin"
            color = .cyan
        }else if value < 25 {
            advice = "Kilonuz ideal.Dikketli ve dengeli beslenerek formunuzu korumalısınız"
            color = .green
        }else {
            advice = "İdeal kilonuzun üstündesiniz.Diyete başlayıp sıkılaşabilirsiniz."
            color = .red
        }
        let resultBMI = BMI(value: value, advice: advice, color: color!)
        return resultBMI
    }
    func resultAlert(bmi : BMI) -> UIAlertController{
        let alert = UIAlertController(title: String(format: "%.1f", bmi.value!), message: bmi.advice!, preferredStyle: UIAlertController.Style.alert)
        alert.view.subviews.first?.subviews.first?.subviews.first?.backgroundColor = bmi.color!
        let okButton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.cancel)
        alert.addAction(okButton)
        
        return alert
    }
    func LabelChanger(slider : UISlider, label : UILabel, format : String) {
        let value = String(format: format, slider.value)
        label.text = "\(value)m"
    }
    
}
