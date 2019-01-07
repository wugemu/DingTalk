.class public Lcom/ut/mini/module/traffic/UTPhoneTraffic;
.super Ljava/lang/Object;
.source "UTPhoneTraffic.java"


# instance fields
.field private mTrafficItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

.field private mTsMobile:Lcom/ut/mini/module/traffic/UTTrafficItem;

.field private mTsWifi:Lcom/ut/mini/module/traffic/UTTrafficItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTsMobile:Lcom/ut/mini/module/traffic/UTTrafficItem;

    .line 5
    iput-object v0, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTsWifi:Lcom/ut/mini/module/traffic/UTTrafficItem;

    .line 6
    iput-object v0, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTrafficItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    .line 9
    new-instance v0, Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-direct {v0}, Lcom/ut/mini/module/traffic/UTTrafficItem;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTsMobile:Lcom/ut/mini/module/traffic/UTTrafficItem;

    .line 10
    new-instance v0, Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-direct {v0}, Lcom/ut/mini/module/traffic/UTTrafficItem;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTsWifi:Lcom/ut/mini/module/traffic/UTTrafficItem;

    .line 11
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTsMobile:Lcom/ut/mini/module/traffic/UTTrafficItem;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTsMobile:Lcom/ut/mini/module/traffic/UTTrafficItem;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/ut/mini/module/traffic/UTTrafficItem;->setRX(J)V

    .line 99
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTsMobile:Lcom/ut/mini/module/traffic/UTTrafficItem;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/ut/mini/module/traffic/UTTrafficItem;->setTX(J)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTsWifi:Lcom/ut/mini/module/traffic/UTTrafficItem;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTsWifi:Lcom/ut/mini/module/traffic/UTTrafficItem;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/ut/mini/module/traffic/UTTrafficItem;->setRX(J)V

    .line 103
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTsWifi:Lcom/ut/mini/module/traffic/UTTrafficItem;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/ut/mini/module/traffic/UTTrafficItem;->setTX(J)V

    .line 105
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTrafficItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    .line 106
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doMobileIncrement(Lcom/ut/mini/module/traffic/UTTrafficItem;)V
    .locals 10
    .param p1, "pTrafficItem"    # Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 64
    monitor-enter p0

    .line 65
    if-eqz p1, :cond_1

    .line 66
    :try_start_0
    iget-object v4, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTrafficItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    if-eqz v4, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/ut/mini/module/traffic/UTTrafficItem;->getRX()J

    move-result-wide v4

    iget-object v6, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTrafficItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-virtual {v6}, Lcom/ut/mini/module/traffic/UTTrafficItem;->getRX()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 68
    .local v0, "rx":J
    invoke-virtual {p1}, Lcom/ut/mini/module/traffic/UTTrafficItem;->getTX()J

    move-result-wide v4

    iget-object v6, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTrafficItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-virtual {v6}, Lcom/ut/mini/module/traffic/UTTrafficItem;->getTX()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 69
    .local v2, "tx":J
    cmp-long v4, v2, v8

    if-lez v4, :cond_0

    cmp-long v4, v0, v8

    if-lez v4, :cond_0

    .line 70
    iget-object v4, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTsMobile:Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-virtual {v4, v0, v1}, Lcom/ut/mini/module/traffic/UTTrafficItem;->increaseRx(J)V

    .line 71
    iget-object v4, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTsMobile:Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-virtual {v4, v2, v3}, Lcom/ut/mini/module/traffic/UTTrafficItem;->increaseTx(J)V

    .line 74
    .end local v0    # "rx":J
    .end local v2    # "tx":J
    :cond_0
    iput-object p1, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTrafficItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    .line 76
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public doWifiIncrement(Lcom/ut/mini/module/traffic/UTTrafficItem;)V
    .locals 10
    .param p1, "pTrafficItem"    # Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 80
    monitor-enter p0

    .line 81
    if-eqz p1, :cond_1

    .line 82
    :try_start_0
    iget-object v4, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTrafficItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    if-eqz v4, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/ut/mini/module/traffic/UTTrafficItem;->getRX()J

    move-result-wide v4

    iget-object v6, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTrafficItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-virtual {v6}, Lcom/ut/mini/module/traffic/UTTrafficItem;->getRX()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 84
    .local v0, "rx":J
    invoke-virtual {p1}, Lcom/ut/mini/module/traffic/UTTrafficItem;->getTX()J

    move-result-wide v4

    iget-object v6, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTrafficItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-virtual {v6}, Lcom/ut/mini/module/traffic/UTTrafficItem;->getTX()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 85
    .local v2, "tx":J
    cmp-long v4, v2, v8

    if-lez v4, :cond_0

    cmp-long v4, v0, v8

    if-lez v4, :cond_0

    .line 86
    iget-object v4, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTsWifi:Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-virtual {v4, v0, v1}, Lcom/ut/mini/module/traffic/UTTrafficItem;->increaseRx(J)V

    .line 87
    iget-object v4, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTsWifi:Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-virtual {v4, v2, v3}, Lcom/ut/mini/module/traffic/UTTrafficItem;->increaseTx(J)V

    .line 90
    .end local v0    # "rx":J
    .end local v2    # "tx":J
    :cond_0
    iput-object p1, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTrafficItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    .line 92
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public declared-synchronized getMobileItem()Lcom/ut/mini/module/traffic/UTTrafficItem;
    .locals 1

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTsMobile:Lcom/ut/mini/module/traffic/UTTrafficItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMobileRx()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTsMobile:Lcom/ut/mini/module/traffic/UTTrafficItem;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTsMobile:Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-virtual {v0}, Lcom/ut/mini/module/traffic/UTTrafficItem;->getRX()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 31
    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMobileTotal()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 14
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTsMobile:Lcom/ut/mini/module/traffic/UTTrafficItem;

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTsMobile:Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-virtual {v0}, Lcom/ut/mini/module/traffic/UTTrafficItem;->getTotal()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 17
    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMobileTx()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTsMobile:Lcom/ut/mini/module/traffic/UTTrafficItem;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTsMobile:Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-virtual {v0}, Lcom/ut/mini/module/traffic/UTTrafficItem;->getTX()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 38
    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWifiItem()Lcom/ut/mini/module/traffic/UTTrafficItem;
    .locals 1

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTsWifi:Lcom/ut/mini/module/traffic/UTTrafficItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWifiRx()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTsWifi:Lcom/ut/mini/module/traffic/UTTrafficItem;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTsWifi:Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-virtual {v0}, Lcom/ut/mini/module/traffic/UTTrafficItem;->getRX()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 45
    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWifiTotal()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 21
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTsWifi:Lcom/ut/mini/module/traffic/UTTrafficItem;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTsWifi:Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-virtual {v0}, Lcom/ut/mini/module/traffic/UTTrafficItem;->getTotal()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 24
    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWifiTx()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTsWifi:Lcom/ut/mini/module/traffic/UTTrafficItem;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->mTsWifi:Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-virtual {v0}, Lcom/ut/mini/module/traffic/UTTrafficItem;->getTX()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 52
    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
