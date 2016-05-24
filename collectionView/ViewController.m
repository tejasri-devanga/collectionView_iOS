//
//  ViewController.m
//  collectionView
//
//  Created by Mac on 24/05/16.
//  Copyright (c) 2016 Mac. All rights reserved.
//

#import "ViewController.h"
#import "patternViewCell.h"
@interface ViewController ()

@property(nonatomic,strong)NSArray *patternArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.patternArray=@[@"i1.png",@"i4.jpeg",@"i2.jpeg",@"i5.jpeg",@"i6.jpeg",@"i7.jpeg",@"images.jpeg",@"images-2.jpeg",@"images-3.jpeg"];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(150.0,150.0);
}

-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(5,5,5,5);
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [self.patternArray count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    patternViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"patternIdentifier" forIndexPath:indexPath];
    NSString *mypattern=[self.patternArray objectAtIndex:indexPath.row];
    cell.patternImageView.image=[UIImage imageNamed:mypattern];
    return cell;
}

@end
