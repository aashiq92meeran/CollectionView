//
//  ViewController.h
//  CollectionView
//
//  Created by BSA univ 8 on 29/05/14.
//  Copyright (c) 2014 Hispark. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TaskViewController.h"

@interface ViewController : UICollectionViewController <UICollectionViewDataSource,UICollectionViewDelegate>


{
    NSArray * natureImagename ,* natureLabel;
    
}

@property (strong,nonatomic) TaskViewController * tObj;


- (IBAction)Setting:(id)sender;




@end
