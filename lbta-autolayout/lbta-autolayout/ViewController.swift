//
//  ViewController.swift
//  lbta-autolayout
//
//  Created by Maxim Tsyganov on 07.04.2022.
//

import UIKit

class ViewController: UIViewController {

    let bearImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "bear_first"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Join us today in our fun and games!"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(bearImageView)
        view.addSubview(descriptionTextView)

        setupLayout()

    }

    private func setupLayout() {
        bearImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bearImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        bearImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        bearImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true

        descriptionTextView.topAnchor.constraint(equalTo: bearImageView.bottomAnchor, constant: 120).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }


}

