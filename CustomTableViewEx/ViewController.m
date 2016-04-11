//
//  ViewController.m
//  CustomTableViewEx
//
//  Created by Tops on 2/25/16.
//  Copyright (c) 2016 Tops. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize tbl_vw;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    tbl_vw.dataSource=self;
    tbl_vw.delegate=self;
    
    arr_title=[NSArray arrayWithObjects:@"Batman v Superman",@"Vinyl",@"American Crime Story",@"Captain America: Civil War", nil];
    arr_desc=[NSArray arrayWithObjects:@"Fearing the actions of Superman are left unchecked, Batman takes on Superman, while the world wrestles with what kind of a hero it really needs. With Batman and Superman fighting each other, a new threat, Doomsday, is created by Lex Luthor. It's up to Superman and Batman to set aside their differences along with Wonder Woman to stop Lex Luthor and Doomsday from destroying Metropolis.",@"A New York music executive in the late 1970s hustles to make a career out of the city's diverse music scene.",@"An anthology series centered around some of history's most famous criminals",@"Political interference in the Avengers' activities causes a rift between former allies Captain America and Iron Man.", nil];
    arr_img=[NSArray arrayWithObjects:@"batmanvssuperman.jpg",@"vinyl.jpg",@"american.jpg",@"caption.jpg", nil];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arr_img.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MYTableViewCell *cell=nil;
    cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.lbl_nm.text=[arr_title objectAtIndex:indexPath.row];
    cell.img_vw.image=[UIImage imageNamed:[arr_img objectAtIndex:indexPath.row]];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIAlertView *alrt=[[UIAlertView alloc]initWithTitle:@"Description" message:[arr_desc objectAtIndex:indexPath.row] delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    [alrt show];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
