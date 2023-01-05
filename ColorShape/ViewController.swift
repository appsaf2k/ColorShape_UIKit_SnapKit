//
//  ViewController.swift
//  ColorShape
//
//  Created by @andreev2k on 27.12.2022.
//

import SnapKit
import UIKit


class ViewController: UIViewController {
    var redValue: CGFloat   = 0
    var greenValue: CGFloat = 0
    var blueValue: CGFloat  = 0
    var alphaValue: CGFloat = 1.0
    
    //MARK: Rectangle for View
    let colorView: UIImageView = {
        let colorView = UIImageView()
        colorView.backgroundColor = .red
        colorView.layer.cornerRadius = 10
        colorView.translatesAutoresizingMaskIntoConstraints = false
        return colorView
    }()
    
    //MARK: Labels
    let redLabel: UILabel   = {
        let redLabel = UILabel()
        redLabel.text = "Red"
        redLabel.font = UIFont.systemFont(ofSize: 16)
        redLabel.textColor = .red
        redLabel.translatesAutoresizingMaskIntoConstraints = false
        return redLabel
    }()
    
    let greenLabel: UILabel = {
        let greenLabel = UILabel()
        greenLabel.text = "Green"
        greenLabel.font = UIFont.systemFont(ofSize: 16)
        greenLabel.textColor = .green
        greenLabel.translatesAutoresizingMaskIntoConstraints = false
        return greenLabel
    }()
    
    let blueLabel: UILabel = {
        let blueLabel = UILabel()
        blueLabel.text = "Blue"
        blueLabel.font = UIFont.systemFont(ofSize: 16)
        blueLabel.textColor = .blue
        blueLabel.translatesAutoresizingMaskIntoConstraints = false
        return blueLabel
    }()
    
    let alphaLabel: UILabel = {
        let alphaLabel = UILabel()
        alphaLabel.text = "Alpha"
        alphaLabel.font = UIFont.systemFont(ofSize: 16)
        alphaLabel.textColor = .gray
        alphaLabel.translatesAutoresizingMaskIntoConstraints = false
        return alphaLabel
    }()
    //MARK: Label Counts
    let redLabelCount: UILabel = {
        let redLabelCount = UILabel()
        redLabelCount.text = "255"
        redLabelCount.font = UIFont.systemFont(ofSize: 16)
        redLabelCount.textColor = .red
        redLabelCount.translatesAutoresizingMaskIntoConstraints = false
        return redLabelCount
    }()
    
    let greenLabelCount: UILabel = {
        let greenLabelCount = UILabel()
        greenLabelCount.text = "255"
        greenLabelCount.font = UIFont.systemFont(ofSize: 16)
        greenLabelCount.textColor = .green
        greenLabelCount.translatesAutoresizingMaskIntoConstraints = false
        return greenLabelCount
    }()
    
    let blueLabelCount: UILabel = {
        let blueLabelCount = UILabel()
        blueLabelCount.text = "255"
        blueLabelCount.font = UIFont.systemFont(ofSize: 16)
        blueLabelCount.textColor = .blue
        blueLabelCount.translatesAutoresizingMaskIntoConstraints = false
        return blueLabelCount
    }()
    
    let alphaLabelCount: UILabel = {
        let alphaLabelCount = UILabel()
        alphaLabelCount.text = "255"
        alphaLabelCount.font = UIFont.systemFont(ofSize: 16)
        alphaLabelCount.textColor = .gray
        alphaLabelCount.translatesAutoresizingMaskIntoConstraints = false
        return alphaLabelCount
    }()
    //MARK: Sliders
    lazy var redSlider: UISlider = {
        let redSlider = UISlider()
        redSlider.minimumTrackTintColor = .red
        redSlider.thumbTintColor = .red
        redSlider.minimumValue = 0
        redSlider.maximumValue = 255
        redSlider.translatesAutoresizingMaskIntoConstraints = false
        redSlider.addTarget(self, action: #selector(sliderValue), for: .allEvents)
        return redSlider
    }()
    
    lazy var greenSlider: UISlider = {
        let greenSlider = UISlider()
        greenSlider.minimumTrackTintColor = .green
        greenSlider.thumbTintColor = .green
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 255
        greenSlider.translatesAutoresizingMaskIntoConstraints = false
        greenSlider.addTarget(self, action: #selector(sliderValue), for: .allEvents)
        return greenSlider
    }()
    
    lazy var blueSlider: UISlider = {
        let blueSlider = UISlider()
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.thumbTintColor = .blue
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 255
        blueSlider.translatesAutoresizingMaskIntoConstraints = false
        blueSlider.addTarget(self, action: #selector(sliderValue), for: .allEvents)
        return blueSlider
    }()
    
    lazy var alphaSlider: UISlider = {
        let alphaSlider = UISlider()
        alphaSlider.minimumTrackTintColor = .gray
        alphaSlider.thumbTintColor = .gray
        alphaSlider.minimumValue = 0
        alphaSlider.maximumValue = 1
        alphaSlider.translatesAutoresizingMaskIntoConstraints = false
        alphaSlider.addTarget(self, action: #selector(sliderValue), for: .allEvents)
        return alphaSlider
    }()
    
    //MARK: StackView
    let stackViewLabel  = UIStackView()
    let stackViewCount  = UIStackView()
    let stackViewSlider = UIStackView()
    
    //MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        stackViewConfig()
        makeConstarints()
        sliderValue()
    }
}
