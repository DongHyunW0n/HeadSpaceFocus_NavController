//
//  QuickFocusListViewController.swift
//  HeadSpaceFocus
//
//  Created by WonDongHyun on 2023/03/21.
//

import UIKit

class QuickFocusListViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let brathingList = QuickFocus.breathing
    let walkingList = QuickFocus.walking
    
    enum Section : CaseIterable {
        
        case breathe
        case walking
        
        var title : String {
            
            
            switch self{
            case .breathe : return "Breathing exercises"
            case .walking : return "Mindful walks"
            }
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        typealias Item = QuickFocus
        
        var datasource : UICollectionViewDiffableDataSource<Section ,Item>!
        
        
        
        datasource = UICollectionViewDiffableDataSource(collectionView: collectionView, cellProvider: { collectionView, indexPath, itemIdentifier in
            
            
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "QuickFocusCell", for: indexPath) as? QuickFocusCell else{
                return nil
            }
            return cell
        })
        
        
        var snapshot = NSDiffableDataSourceSnapshot<Section ,Item>()
        
        snapshot.appendSections(Section.allCases)
        snapshot.appendItems(brathingList, toSection: .breathe)
        snapshot.appendItems(walkingList ,toSection: .walking)
        datasource.apply(snapshot)
        
        collectionView.collectionViewLayout = layout()
        
    }
    
    
    private func layout() -> UICollectionViewCompositionalLayout{
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: ., subitems: <#T##[NSCollectionLayoutItem]#>)
        
        let section = NSCollectionLayoutSection(group:  )
        
        let layout = UICollectionViewCompositionalLayout(section: section)
        
        return layout
        
    }
    
    
    
    
}
                                                        
