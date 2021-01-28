//
//  FeedController.swift
//  InstagramApp
//
//  Created by Улитина Анастасия Сергеевна on 18.01.2021.
//

import UIKit

private let reuseIdentifier = "Cell"

class FeedController: UICollectionViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		collectionView.backgroundColor = .red
		collectionView.register(FeedCell.self, forCellWithReuseIdentifier: reuseIdentifier)
	}
}

extension FeedController {

	override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 5
	}

	override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! FeedCell
		return cell
	}

}

extension FeedController: UICollectionViewDelegateFlowLayout {
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return CGSize(width: view.frame.width, height: 200)
	}
}
