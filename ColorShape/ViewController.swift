//
//  ViewController.swift
//  ColorShape
//
//  Created by @andreev2k on 27.12.2022.
//

import SnapKit
import UIKit


class ViewController: UIViewController {
    var redValue: CGFloat = 0
    var greenValue: CGFloat = 0
    var blueValue: CGFloat = 0
    var alphaValue: CGFloat = 0.0
    
    //MARK: Rectangle for View
    let colorView: UIImageView = {
        let colorView = UIImageView()
        colorView.backgroundColor = .red
        colorView.layer.cornerRadius = 10
        colorView.translatesAutoresizingMaskIntoConstraints = false
        return colorView
    }()
    
    //MARK: Red color slider
    let redLabel: UILabel = {
        let redLabel = UILabel()
        redLabel.text = "Red"
        redLabel.font = UIFont.systemFont(ofSize: 16)
        redLabel.textColor = .red
        redLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return redLabel
    }()
    
    let redLabelCount: UILabel = {
        let redLabelCount = UILabel()
        redLabelCount.text = ""
        redLabelCount.font = UIFont.systemFont(ofSize: 16)
        redLabelCount.textColor = .red
        redLabelCount.translatesAutoresizingMaskIntoConstraints = false
        
        return redLabelCount
    }()
    
    lazy var redSlider: UISlider = {
        let redSlider = UISlider()
        redSlider.translatesAutoresizingMaskIntoConstraints = false
        redSlider.minimumTrackTintColor = .red
        redSlider.thumbTintColor = .red
        redSlider.minimumValue = 0
        redSlider.maximumValue = 255
        redSlider.addTarget(self, action: #selector(sliderValue), for: .allEvents)
        return redSlider
    }()
    
    //MARK: Green color slider
    let greenLabel: UILabel = {
        let greenLabel = UILabel()
        greenLabel.text = "Green"
        greenLabel.font = UIFont.systemFont(ofSize: 16)
        greenLabel.textColor = .green
        greenLabel.translatesAutoresizingMaskIntoConstraints = false
        return greenLabel
    }()
    
    let greenLabelCount: UILabel = {
        let greenLabelCount = UILabel()
        greenLabelCount.text = ""
        greenLabelCount.font = UIFont.systemFont(ofSize: 16)
        greenLabelCount.textColor = .green
        greenLabelCount.translatesAutoresizingMaskIntoConstraints = false
        return greenLabelCount
    }()
    
    lazy var greenSlider: UISlider = {
        let greenSlider = UISlider()
        greenSlider.translatesAutoresizingMaskIntoConstraints = false
        greenSlider.minimumTrackTintColor = .green
        greenSlider.thumbTintColor = .green
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 255
        greenSlider.addTarget(self, action: #selector(sliderValue), for: .allEvents)
        return greenSlider
    }()
    
    //MARK: Blue color slider
    let blueLabel: UILabel = {
        let blueLabel = UILabel()
        blueLabel.text = "Blue"
        blueLabel.font = UIFont.systemFont(ofSize: 16)
        blueLabel.textColor = .blue
        blueLabel.translatesAutoresizingMaskIntoConstraints = false
        return blueLabel
    }()
    
    let blueLabelCount: UILabel = {
        let blueLabelCount = UILabel()
        blueLabelCount.text = ""
        blueLabelCount.font = UIFont.systemFont(ofSize: 16)
        blueLabelCount.textColor = .blue
        blueLabelCount.translatesAutoresizingMaskIntoConstraints = false
        return blueLabelCount
    }()
    
    lazy var blueSlider: UISlider = {
        let blueSlider = UISlider()
        blueSlider.translatesAutoresizingMaskIntoConstraints = false
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.thumbTintColor = .blue
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 255
        blueSlider.addTarget(self, action: #selector(sliderValue), for: .allEvents)
        return blueSlider
    }()
    
    //MARK: Alpha slider
    let alphaLabel: UILabel = {
        let alphaLabel = UILabel()
        alphaLabel.text = "Alpha"
        alphaLabel.font = UIFont.systemFont(ofSize: 16)
        alphaLabel.textColor = .gray
        alphaLabel.translatesAutoresizingMaskIntoConstraints = false
        return alphaLabel
    }()
    
    let alphaLabelCount: UILabel = {
        let alphaLabelCount = UILabel()
        alphaLabelCount.text = ""
        alphaLabelCount.font = UIFont.systemFont(ofSize: 16)
        alphaLabelCount.textColor = .gray
        alphaLabelCount.translatesAutoresizingMaskIntoConstraints = false
        return alphaLabelCount
    }()
    
    lazy var alphaSlider: UISlider = {
        let alphaSlider = UISlider()
        alphaSlider.translatesAutoresizingMaskIntoConstraints = false
        alphaSlider.minimumTrackTintColor = .gray
        alphaSlider.thumbTintColor = .gray
        alphaSlider.minimumValue = 0
        alphaSlider.maximumValue = 1
        alphaSlider.addTarget(self, action: #selector(sliderValue), for: .allEvents)
        return alphaSlider
    }()
    
    //MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubview()
        sliderValue()
    }
    
    func addSubview() {
        view.addSubview(colorView)
        colorView.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(60)
            make.left.right.equalToSuperview().inset(16)
            make.height.equalTo(300)
        }
        view.addSubview(redLabel)
        redLabel.snp.makeConstraints { make in
            make.top.equalTo(colorView.snp.bottom).offset(30)
            make.left.equalToSuperview().inset(16)
            make.width.equalTo(45)
        }
        view.addSubview(redLabelCount)
        redLabelCount.snp.makeConstraints { make in
            make.top.equalTo(colorView.snp.bottom).offset(30)
            make.left.equalTo(redLabel.snp.right).offset(16)
            make.width.equalTo(30)
        }
        view.addSubview(redSlider)
        redSlider.snp.makeConstraints { make in
            make.top.equalTo(colorView.snp.bottom).offset(25)
            make.left.equalTo(redLabelCount.snp.right).offset(16)
            make.right.equalToSuperview().inset(16)
        }
        view.addSubview(greenLabel)
        greenLabel.snp.makeConstraints { make in
            make.top.equalTo(redLabel.snp.bottom).offset(25)
            make.left.equalToSuperview().inset(16)
            make.width.equalTo(45)
        }
        view.addSubview(greenLabelCount)
        greenLabelCount.snp.makeConstraints { make in
            make.top.equalTo(redLabelCount.snp.bottom).offset(25)
            make.left.equalTo(greenLabel.snp.right).offset(16)
            make.width.equalTo(30)
        }
        view.addSubview(greenSlider)
        greenSlider.snp.makeConstraints { make in
            make.top.equalTo(redSlider.snp.bottom).offset(13)
            make.left.equalTo(redLabelCount.snp.right).offset(16)
            make.right.equalToSuperview().inset(16)
        }
        view.addSubview(blueLabel)
        blueLabel.snp.makeConstraints { make in
            make.top.equalTo(greenLabel.snp.bottom).offset(25)
            make.left.equalToSuperview().inset(16)
            make.width.equalTo(45)
        }
        view.addSubview(blueLabelCount)
        blueLabelCount.snp.makeConstraints { make in
            make.top.equalTo(greenLabelCount.snp.bottom).offset(25)
            make.left.equalTo(blueLabel.snp.right).offset(16)
            make.width.equalTo(30)
        }
        view.addSubview(blueSlider)
        blueSlider.snp.makeConstraints { make in
            make.top.equalTo(greenSlider.snp.bottom).offset(13)
            make.left.equalTo(blueLabelCount.snp.right).offset(16)
            make.right.equalToSuperview().inset(16)
        }
        view.addSubview(alphaLabel)
        alphaLabel.snp.makeConstraints { make in
            make.top.equalTo(blueLabel.snp.bottom).offset(25)
            make.left.equalToSuperview().inset(16)
            make.width.equalTo(45)
        }
        view.addSubview(alphaLabelCount)
        alphaLabelCount.snp.makeConstraints { make in
            make.top.equalTo(blueLabelCount.snp.bottom).offset(25)
            make.left.equalTo(alphaLabel.snp.right).offset(16)
            make.width.equalTo(30)
        }
        view.addSubview(alphaSlider)
        alphaSlider.snp.makeConstraints { make in
            make.top.equalTo(blueSlider.snp.bottom).offset(13)
            make.left.equalTo(alphaLabelCount.snp.right).offset(16)
            make.right.equalToSuperview().inset(16)
        }
    }
    
    @objc func sliderValue() {
        redLabelCount.text = String(Int(redSlider.value))
        redValue = CGFloat(Int(redSlider.value))
        greenLabelCount.text = String(Int(greenSlider.value))
        greenValue = CGFloat(Int(greenSlider.value))
        blueLabelCount.text = String(Int(blueSlider.value))
        blueValue = CGFloat(Int(blueSlider.value))
        alphaLabelCount.text = String(Double(1 - alphaSlider.value))
        alphaValue = CGFloat(Double(1 - alphaSlider.value))
        colorView.backgroundColor = UIColor(red: redValue/255, green: greenValue/255, blue: blueValue/255, alpha: alphaValue)
    }
}


// MARK: Constraint for ViewController
//extension ViewController {
//
//    func setConstraints() {
//        view.addSubview(colorView)
//        NSLayoutConstraint.activate([
//            colorView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
//            colorView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
//            colorView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
//            colorView.heightAnchor.constraint(equalToConstant: 300)
//        ])
//
//        //MARK: Constraints for Red Color
//        view.addSubview(redLabel)
//        NSLayoutConstraint.activate([
//            redLabel.topAnchor.constraint(equalTo: colorView.bottomAnchor, constant: 50),
//            redLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
//            redLabel.widthAnchor.constraint(equalToConstant: 45)
//        ])
//
//        view.addSubview(redLabelCount)
//        NSLayoutConstraint.activate([
//            redLabelCount.topAnchor.constraint(equalTo: colorView.bottomAnchor, constant: 50),
//            redLabelCount.leadingAnchor.constraint(equalTo: redLabel.trailingAnchor, constant: 16),
//            redLabelCount.widthAnchor.constraint(equalToConstant: 45)
//        ])
//
//        view.addSubview(redSlider)
//        NSLayoutConstraint.activate([
//            redSlider.topAnchor.constraint(equalTo: colorView.bottomAnchor, constant: 45),
//            redSlider.leadingAnchor.constraint(equalTo: redLabelCount.trailingAnchor, constant: 16),
//            redSlider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
//        ])
//
//        //MARK: Constraints for Green Color
//        view.addSubview(greenLabel)
//        NSLayoutConstraint.activate([
//            greenLabel.topAnchor.constraint(equalTo: redLabel.bottomAnchor, constant: 20),
//            greenLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
//            greenLabel.widthAnchor.constraint(equalToConstant: 45)
//        ])
//
//        view.addSubview(greenLabelCount)
//        NSLayoutConstraint.activate([
//            greenLabelCount.topAnchor.constraint(equalTo: redLabel.bottomAnchor, constant: 20),
//            greenLabelCount.leadingAnchor.constraint(equalTo: greenLabel.trailingAnchor, constant: 16),
//            greenLabelCount.widthAnchor.constraint(equalToConstant: 45)
//        ])
//
//        view.addSubview(greenSlider)
//        NSLayoutConstraint.activate([
//            greenSlider.topAnchor.constraint(equalTo: redLabel.bottomAnchor, constant: 15),
//            greenSlider.leadingAnchor.constraint(equalTo: greenLabelCount.trailingAnchor, constant: 16),
//            greenSlider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
//        ])
//
//        //MARK: Constraints for Blue Color
//        view.addSubview(blueLabel)
//        NSLayoutConstraint.activate([
//            blueLabel.topAnchor.constraint(equalTo: greenLabel.bottomAnchor, constant: 20),
//            blueLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
//            blueLabel.widthAnchor.constraint(equalToConstant: 45)
//        ])
//
//        view.addSubview(blueLabelCount)
//        NSLayoutConstraint.activate([
//            blueLabelCount.topAnchor.constraint(equalTo: greenLabel.bottomAnchor, constant: 20),
//            blueLabelCount.leadingAnchor.constraint(equalTo: blueLabel.trailingAnchor, constant: 16),
//            blueLabelCount.widthAnchor.constraint(equalToConstant: 45)
//
//        ])
//
//        view.addSubview(blueSlider)
//        NSLayoutConstraint.activate([
//            blueSlider.topAnchor.constraint(equalTo: greenLabel.bottomAnchor, constant: 15),
//            blueSlider.leadingAnchor.constraint(equalTo: blueLabelCount.trailingAnchor, constant: 16),
//            blueSlider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
//        ])
//
//        //MARK: Constraints for Alpha
//        view.addSubview(alphaLabel)
//        NSLayoutConstraint.activate([
//            alphaLabel.topAnchor.constraint(equalTo: blueLabel.bottomAnchor, constant: 20),
//            alphaLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
//            alphaLabel.widthAnchor.constraint(equalToConstant: 45)
//        ])
//
//        view.addSubview(alphaLabelCount)
//        NSLayoutConstraint.activate([
//            alphaLabelCount.topAnchor.constraint(equalTo: blueLabel.bottomAnchor, constant: 20),
//            alphaLabelCount.leadingAnchor.constraint(equalTo: alphaLabel.trailingAnchor, constant: 16),
//            alphaLabelCount.widthAnchor.constraint(equalToConstant: 45)
//
//        ])
//
//        view.addSubview(alphaSlider)
//        NSLayoutConstraint.activate([
//            alphaSlider.topAnchor.constraint(equalTo: blueLabel.bottomAnchor, constant: 15),
//            alphaSlider.leadingAnchor.constraint(equalTo: alphaLabelCount.trailingAnchor, constant: 16),
//            alphaSlider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
//        ])
//    }
//}
