# simpleDataSource_iOs
Ejemplo para separar datasource del UITableViewController iOS  // Example to separate datasource iOS UITableViewController

Un poco de código //  A simple code from proyecto

  NSArray *words = [[NSArray alloc] initWithObjects:primera, segunda,nil];

    self.datosDataSourcer = [[DatosDataSourcer alloc] initWithItems:words
                                                         cellIdentifier:WordCellIdentifier
                                                     configureCellBlock:configureCell];
 
    self.tableView.dataSource = self.datosDataSourcer;

    [self.tableView registerNib:[WordCell nib] forCellReuseIdentifier:WordCellIdentifier];
    
    
