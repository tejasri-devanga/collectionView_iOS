//
//  ViewController.h
//  collectionView
//
//  Created by Mac on 24/05/16.
//  Copyright (c) 2016 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@property(nonatomic,weak)IBOutlet UICollectionView *myCollectionView;

@end

