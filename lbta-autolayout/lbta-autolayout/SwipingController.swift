//
//  SwipingController.swift
//  lbta-autolayout
//
//  Created by Maxim Tsyganov on 08.04.2022.
//

import UIKit

class SwipingController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    let pages = [
        Page(imageName: "bear_first", headerText: "Join us today in our fun and games!", bodyText: "Are you ready for loads and loads of fun? Don't wait any longer! We hope to see you in our stores soon."),
        Page(imageName: "heart_second", headerText: "Subscribe and get coupons on our daily events", bodyText: "Get notified of the savings immediately when we announce them on our website. Make sure to also give us any feedback you have."),
        Page(imageName: "leaf_third", headerText: "VIP members special services", bodyText: "Join the private club of elite customers will get you into select drawings and giveaways."),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.backgroundColor = .white
        collectionView.register(PageCell.self, forCellWithReuseIdentifier: "cellId")

        collectionView.isPagingEnabled = true
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pages.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! PageCell

        let page = pages[indexPath.item]
        cell.page = page

//
//        cell.bearImageView.image = UIImage(named: page.imageName)
//        cell.descriptionTextView.text = page.headerText

        return cell

    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }

}
