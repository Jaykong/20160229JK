//
//  DetailViewController.h
//  Notfication
//
//  Created by trainer on 4/1/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

