//
//  Models.swift
//  ColorShape
//
//  Created by @andreev2k on 05.01.2023.
//

import Foundation
import UIKit

extension ViewController {
    //MARK: Adding StackView to the View
    func stackViewConfig() {
        view.addSubview(stackViewLabel)
        stackViewLabel.axis         = .vertical
        stackViewLabel.distribution = .fillEqually
        stackViewLabel.spacing      = 25
        addLabel()
        
        view.addSubview(stackViewCount)
        stackViewCount.axis         = .vertical
        stackViewCount.distribution = .fillEqually
        stackViewCount.spacing      = 25
        addLabelCount()
        
        view.addSubview(stackViewSlider)
        stackViewSlider.axis         = .vertical
        stackViewSlider.distribution = .fillEqually
        stackViewSlider.spacing      = 13
        addLabelSlider()
    }
    
    //MARK: Adding Label Name in StackView
    func addLabel() {
        stackViewLabel.addArrangedSubview(redLabel)
        stackViewLabel.addArrangedSubview(greenLabel)
        stackViewLabel.addArrangedSubview(blueLabel)
        stackViewLabel.addArrangedSubview(alphaLabel)
    }
    //MARK: Adding Label Count in StavkView
    func addLabelCount() {
        stackViewCount.addArrangedSubview(redLabelCount)
        stackViewCount.addArrangedSubview(greenLabelCount)
        stackViewCount.addArrangedSubview(blueLabelCount)
        stackViewCount.addArrangedSubview(alphaLabelCount)
    }
    //MARK: Adding Label Slider in Stack View
    func addLabelSlider() {
        stackViewSlider.addArrangedSubview(redSlider)
        stackViewSlider.addArrangedSubview(greenSlider)
        stackViewSlider.addArrangedSubview(blueSlider)
        stackViewSlider.addArrangedSubview(alphaSlider)
    }
    
    //MARK: Adding Constraints
    func makeConstarints() {
        view.addSubview(colorView)
        colorView.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(60)
            make.left.right.equalToSuperview().inset(16)
            make.height.equalTo(300)
        }
        
        stackViewLabel.snp.makeConstraints { make in
            make.top.equalTo(colorView.snp.bottom).offset(30)
            make.left.equalToSuperview().inset(16)
            make.width.equalTo(45)
        }
        
        stackViewCount.snp.makeConstraints { make in
            make.top.equalTo(colorView.snp.bottom).offset(30)
            make.left.equalTo(stackViewLabel.snp.right).offset(16)
            make.width.equalTo(40)
        }
        
        stackViewSlider.snp.makeConstraints { make in
            make.top.equalTo(colorView.snp.bottom).offset(25)
            make.left.equalTo(stackViewCount.snp.right).offset(16)
            make.right.equalToSuperview().inset(16)
        }
    }
    
    @objc func sliderValue() {
        redLabelCount.text = String(Int(redSlider.value))
        greenLabelCount.text = String(Int(greenSlider.value))
        blueLabelCount.text = String(Int(blueSlider.value))
        alphaLabelCount.text = String(Double(1 - alphaSlider.value))
        
        redValue = CGFloat(Int(redSlider.value))
        greenValue = CGFloat(Int(greenSlider.value))
        blueValue = CGFloat(Int(blueSlider.value))
        alphaValue = CGFloat(Double(1 - alphaSlider.value))
        colorView.backgroundColor = UIColor(red: redValue/255, green: greenValue/255, blue: blueValue/255, alpha: alphaValue)
    }
}
