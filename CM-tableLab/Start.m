//
//  ViewController.m
//  CM-tableLab
//
//  Created by chava on 6/17/15.
//  Copyright (c) 2015 fuentess. All rights reserved.
//

#import "Start.h"
#import "mainTableCell.h"
//#import "CharacterDetails.h"
#import "Declarations.h"


@interface Start ()

@end

@implementation Start

/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-------------------------------------------------------------------------------
-(void)initController {
    //Initialize arrays
    maNames         = [[NSMutableArray alloc] initWithObjects: @"Eddard Start", @"Catelyn Stark", @"Sansa Stark", @"Arya Stark", @"Robb Stark", nil];
    maAges          = [[NSMutableArray alloc] initWithObjects: @"35", @"30", @"11", @"9", @"14", nil];
    maImgs          = [[NSMutableArray alloc] initWithObjects: @"eddard.png", @"catelyn.png", @"sansa.png", @"arya.png", @"robb.png", nil];
}
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return maNames.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Initialize cells
    mainTableCell *cell = (mainTableCell *)[tableView dequeueReusableCellWithIdentifier:@"mainTableCell"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"mainTableCell" bundle:nil] forCellReuseIdentifier:@"mainTableCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"mainTableCell"];
    }
    //Fill cell with info from arrays
    cell.nameLabel.text   = maNames[indexPath.row];
    cell.ageLabel.text   = maAges[indexPath.row];
    cell.userImg.image  = [UIImage imageNamed:maImgs[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    miCharacterIndex = (int)indexPath.row;
    //CharacterDetails *viewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"CharacterDetails"];
    
    //[self presentViewController:viewController animated:YES completion:nil];
    
}


@end
