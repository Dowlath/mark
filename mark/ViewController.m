//
//  ViewController.m
//  mark
//
//  Created by Mubashir Meddekar on 8/28/14.
//  Copyright (c) 2014 Hibrise Technologies. All rights reserved.
//

#import "ViewController.h"
#import "details.h"

@interface ViewController ()
{
    NSMutableArray *newobj;
    details *oldobj;
}
@end

@implementation ViewController
@synthesize name,mark1,mark3,mark2,mark4,mark5,total,average;
- (void)viewDidLoad
{
    newobj=[[NSMutableArray alloc]init];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)save:(id)sender {
    oldobj=[[details alloc]init];
    oldobj.marks=[[NSMutableArray alloc]init];
    oldobj.name=name.text;
    oldobj.total=total.text;
    oldobj.average=average.text;
    [oldobj.marks addObject:mark1.text];
     [oldobj.marks addObject:mark2.text];
     [oldobj.marks addObject:mark3.text];
     [oldobj.marks addObject:mark4.text];
     [oldobj.marks addObject:mark5.text];
    [newobj addObject: oldobj];
}
- (IBAction)calc:(id)sender
{
    int inp1,inp2,inp3,inp4,inp5,tot;
    float avg;
    inp1=[[mark1 text]intValue];
    inp2=[[mark2 text]intValue];
    inp3=[[mark3 text]intValue];
    inp4=[[mark4 text]intValue];
    inp5=[[mark5 text]intValue];
    tot=inp1+inp2+inp3+inp4+inp5;
    avg=tot/5;
    [total setText:[NSString stringWithFormat:@"%d",tot]];
    [average setText:[NSString stringWithFormat:@"%g",avg]];}

- (IBAction)view:(id)sender
{
    
    details *get1=[newobj objectAtIndex:0];
    NSMutableString *string=[NSMutableString string];
    [string appendString:[NSString stringWithFormat:@"%@\n",get1.name]];
    [string appendString:[NSString stringWithFormat:@"%@\n",get1.total]];
    [string appendString:[NSString stringWithFormat:@"%@\n",get1.average]];
    _display.text=string;
    NSMutableArray *get2=[get1 marks];
    for (int i=0; i<[get2 count]; i++) {
        [string appendString:[NSString stringWithFormat:@"%@\n",[get2 objectAtIndex:i ]]];
        NSLog(@"%@",[get2 objectAtIndex:i ]);
        _display.text=string;
    }
//    NSString *get3=[get2 objectAtIndex:2];
//    NSLog(@"%@",get3);
//    
}

@end
