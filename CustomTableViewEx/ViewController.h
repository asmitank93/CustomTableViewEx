//
//  ViewController.h
//  CustomTableViewEx
//
//  Created by Tops on 2/25/16.
//  Copyright (c) 2016 Tops. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MYTableViewCell.h"
@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *arr_title;
    NSArray *arr_desc;
    NSArray *arr_img;
}
@property (weak, nonatomic) IBOutlet UITableView *tbl_vw;
@end

