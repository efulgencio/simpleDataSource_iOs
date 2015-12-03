//
//  WordsViewController.m
//  WordsEngEFC
//
//  Created by eduardo fulgencio on 1/12/15.
//  Copyright © 2015 eduardo fulgencio. All rights reserved.
//

#import "WordsViewController.h"
#import "DatosDataSourcer.h"
#import "WordCell.h"
#import "Word.h"
#import "WordCell+ConfigureForWord.h"

static NSString * const WordCellIdentifier = @"WordCell";

@interface WordsViewController ()  <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) DatosDataSourcer *datosDataSourcer;
@end

@implementation WordsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"Words";
    [self setupTableView];
}

- (void)setupTableView 
{
    
    // Aquí obtendríamos los datos a mostrar
    Word *primera = [[Word alloc] init];
    primera.castellano = @"uno";
    primera.ingles = @"one";
    Word *segunda = [[Word alloc] init];
    segunda.castellano = @"dos";
    segunda.ingles = @"two";
    
    TableViewCellConfigureBlock configureCell = ^(WordCell *cell, Word *word) {
        [cell configureForWord:word];
    };
    
    NSArray *words = [[NSArray alloc] initWithObjects:primera, segunda,nil];

    self.datosDataSourcer = [[DatosDataSourcer alloc] initWithItems:words
                                                         cellIdentifier:WordCellIdentifier
                                                     configureCellBlock:configureCell];
 
    self.tableView.dataSource = self.datosDataSourcer;

    [self.tableView registerNib:[WordCell nib] forCellReuseIdentifier:WordCellIdentifier];
    
}

// Queda el tema en el que se selecciona una línea


@end
