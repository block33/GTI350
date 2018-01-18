//
//  ViewController.m
//  ExempleUI
//
//  Created by Hakim, Antoine on 2018-01-17.
//  Copyright © 2018 Hakim, Antoine. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *champsPrenom;
@property (weak, nonatomic) IBOutlet UILabel *nomAChanger;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)AlloButton:(id)sender {
    
    _nomAChanger.text = self.champsPrenom.text;
    NSLog(@"Log dans la methode AlloButton");
    [self.champsPrenom resignFirstResponder];
    
    UIAlertController* alert = [UIAlertController
            alertControllerWithTitle:(@"Une alerte de base")
                                message:@"Ceci est une alerte!" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK"
                                                style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}

-(IBAction)textfieldReturn:(id)sender {
    [sender resignFirstResponder];
}

@end
