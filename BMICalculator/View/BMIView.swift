//
//  ViewController.swift
//  BMICalculator
//
//  Created by İbrahim Bayram on 13.01.2023.
//

import UIKit

class BMIView: UIViewController {
    var ViewModel = ViewModelBMI()
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        heightSlider.value = 1.5
    }
    @IBAction func heightSliderAction(_ sender: UISlider) {
        ViewModel.LabelChanger(slider: sender, label: heightLabel, format: "%.2f")
    }
    @IBAction func weightSliderAction(_ sender: UISlider) {
        ViewModel.LabelChanger(slider: sender, label: weightLabel, format: "%.1f")
    }
    
    @IBAction func calculateClicked(_ sender: Any) {
        present(ViewModel.resultAlert(bmi: ViewModel.calculateBMI(height: heightSlider.value, weight: weightSlider.value)), animated: true)
    }

    
}

