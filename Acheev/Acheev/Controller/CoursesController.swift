//
//  CoursesController.swift
//  Acheev
//
//  Created by Roman Salazar Lopez on 8/30/18.
//  Copyright © 2018 Roman Salazar Lopez. All rights reserved.
//

import UIKit

class CoursesController: UIViewController {
    
    
    @IBOutlet weak var mainContainerView: UIStackView!
    @IBOutlet weak var featuredContainerView: UIView!
    @IBOutlet weak var myCoursesContainerView: UIView!
    @IBOutlet weak var cousesTableView: UITableView!
    @IBOutlet weak var myCoursesCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myCoursesCollectionView.delegate = self
        myCoursesCollectionView.dataSource = self
//        myCoursesCollectionView.register(CoursesCell.self, forCellWithReuseIdentifier: "myCoursesCell")
        myCoursesCollectionView.register(CoursesCell.self, forCellWithReuseIdentifier: "myCoursesCell")
    }

}

extension CoursesController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCoursesCell", for: indexPath) as? CoursesCell
        cell?.courseImageView.backgroundColor = .red
        cell?.courseTitle.backgroundColor = .cyan
        cell?.courseAuthor.backgroundColor = .green
        return cell!
    }
    
    
    
    
}
