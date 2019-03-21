# SGNetworkSpeed
时时网速监控

使用方法：

-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
   
   //启动网络监听
    
    [[SGNetworkSpeed shareNetworkSpeed] start];
}

- (void)viewWillDisappear:(BOOL)animated{

    [super viewWillDisappear:animated];
    
    //停止网络监听
    
    [[SGNetworkSpeed shareNetworkSpeed] stop];
}

//使用通知接收数据

 [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(networkSpeed:) name:GSDownloadNetworkSpeedNotificationKey object:nil];
 

//网速通知
- (void)networkSpeed:(NSNotification *)notification{

    NSString *str = notification.object;
    
    _bufferLabel.text = [NSString stringWithFormat:@"正在缓冲，请稍等...\n%@",str];
    
}


参考链接：https://www.jianshu.com/p/92cdf01c291a
