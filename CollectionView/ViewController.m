//
//  ViewController.m
//  CollectionView
//
//  Created by BSA univ 8 on 29/05/14.
//  Copyright (c) 2014 Hispark. All rights reserved.
//

#import "ViewController.h"
#import "Collection.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    natureImagename = [[NSArray alloc] initWithObjects:@"1.jpeg",@"2.jpeg",@"3.jpeg",@"4.jpeg",@"5.jpeg",@"6.jpeg",@"7.jpeg",@"8.jpeg",@"9.jpeg",@"10.jpeg", nil];
    
    natureLabel = [[NSArray alloc]initWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10", nil];
    
}

- (void)didReceiveMemoryWarning

{
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView

{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [natureImagename count];
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellID =@"CellID";
    
    Collection  *mycell = (Collection *)[collectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];
    mycell.imageCell.image= [UIImage imageNamed:[natureImagename objectAtIndex:indexPath.item ]];
    mycell.LabelCell.text= [natureLabel objectAtIndex:indexPath.item];
    
    return mycell;
    
    
}


@end
