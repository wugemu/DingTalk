.class public Lcom/ut/mini/module/traffic/UTTrafficStatistic;
.super Ljava/lang/Object;
.source "UTTrafficStatistic.java"

# interfaces
.implements Lale;


# instance fields
.field private mPhoneTraffic:Lcom/ut/mini/module/traffic/UTPhoneTraffic;

.field private mStrCurrentNetwork:Ljava/lang/String;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/ut/mini/module/traffic/UTPhoneTraffic;

    invoke-direct {v0}, Lcom/ut/mini/module/traffic/UTPhoneTraffic;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/module/traffic/UTTrafficStatistic;->mPhoneTraffic:Lcom/ut/mini/module/traffic/UTPhoneTraffic;

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ut/mini/module/traffic/UTTrafficStatistic;->mStrCurrentNetwork:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/ut/mini/module/traffic/UTTrafficStatistic;->mUid:I

    .line 16
    return-void
.end method

.method private _doTrafficIncrement(Ljava/lang/String;Lcom/ut/mini/module/traffic/UTTrafficItem;)V
    .locals 1
    .param p1, "aAccess"    # Ljava/lang/String;
    .param p2, "aTi"    # Lcom/ut/mini/module/traffic/UTTrafficItem;

    .prologue
    .line 50
    if-eqz p2, :cond_0

    .line 2205
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 51
    if-nez v0, :cond_0

    .line 52
    const-string/jumbo v0, "Wi-Fi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTTrafficStatistic;->mPhoneTraffic:Lcom/ut/mini/module/traffic/UTPhoneTraffic;

    invoke-virtual {v0, p2}, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->doWifiIncrement(Lcom/ut/mini/module/traffic/UTTrafficItem;)V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTTrafficStatistic;->mPhoneTraffic:Lcom/ut/mini/module/traffic/UTPhoneTraffic;

    invoke-virtual {v0, p2}, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->doMobileIncrement(Lcom/ut/mini/module/traffic/UTTrafficItem;)V

    goto :goto_0
.end method

.method private _reset()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    iget-object v1, p0, Lcom/ut/mini/module/traffic/UTTrafficStatistic;->mPhoneTraffic:Lcom/ut/mini/module/traffic/UTPhoneTraffic;

    invoke-virtual {v1}, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->clear()V

    .line 32
    iget v1, p0, Lcom/ut/mini/module/traffic/UTTrafficStatistic;->mUid:I

    invoke-static {v1}, Lcom/ut/mini/module/traffic/UTTrafficUtils;->getTrafficStatistic(I)Lcom/ut/mini/module/traffic/UTTrafficItem;

    move-result-object v0

    .line 33
    .local v0, "ti":Lcom/ut/mini/module/traffic/UTTrafficItem;
    iget-object v1, p0, Lcom/ut/mini/module/traffic/UTTrafficStatistic;->mStrCurrentNetwork:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/ut/mini/module/traffic/UTTrafficStatistic;->_doTrafficIncrement(Ljava/lang/String;Lcom/ut/mini/module/traffic/UTTrafficItem;)V

    .line 34
    return-void
.end method


# virtual methods
.method public declared-synchronized finish()Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 23
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/ut/mini/module/traffic/UTTrafficStatistic;->mUid:I

    invoke-static {v2}, Lcom/ut/mini/module/traffic/UTTrafficUtils;->getTrafficStatistic(I)Lcom/ut/mini/module/traffic/UTTrafficItem;

    move-result-object v1

    .line 24
    .local v1, "ti":Lcom/ut/mini/module/traffic/UTTrafficItem;
    iget-object v2, p0, Lcom/ut/mini/module/traffic/UTTrafficStatistic;->mStrCurrentNetwork:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/ut/mini/module/traffic/UTTrafficStatistic;->_doTrafficIncrement(Ljava/lang/String;Lcom/ut/mini/module/traffic/UTTrafficItem;)V

    .line 25
    new-instance v0, Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;

    iget-object v2, p0, Lcom/ut/mini/module/traffic/UTTrafficStatistic;->mPhoneTraffic:Lcom/ut/mini/module/traffic/UTPhoneTraffic;

    invoke-direct {v0, v2}, Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;-><init>(Lcom/ut/mini/module/traffic/UTPhoneTraffic;)V

    .line 26
    .local v0, "lResult":Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;
    invoke-direct {p0}, Lcom/ut/mini/module/traffic/UTTrafficStatistic;->_reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-object v0

    .line 23
    .end local v0    # "lResult":Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;
    .end local v1    # "ti":Lcom/ut/mini/module/traffic/UTTrafficItem;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onConnectionChange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAccess"    # Ljava/lang/String;
    .param p3, "aAccessSubType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/ut/mini/module/traffic/UTTrafficStatistic;->mUid:I

    invoke-static {v1}, Lcom/ut/mini/module/traffic/UTTrafficUtils;->getTrafficStatistic(I)Lcom/ut/mini/module/traffic/UTTrafficItem;

    move-result-object v0

    .line 39
    .local v0, "ti":Lcom/ut/mini/module/traffic/UTTrafficItem;
    if-eqz v0, :cond_0

    .line 40
    iget-object v1, p0, Lcom/ut/mini/module/traffic/UTTrafficStatistic;->mStrCurrentNetwork:Ljava/lang/String;

    .line 1205
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/ut/mini/module/traffic/UTTrafficStatistic;->mStrCurrentNetwork:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/ut/mini/module/traffic/UTTrafficStatistic;->_doTrafficIncrement(Ljava/lang/String;Lcom/ut/mini/module/traffic/UTTrafficItem;)V

    .line 46
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/ut/mini/module/traffic/UTTrafficStatistic;->mStrCurrentNetwork:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 43
    :cond_1
    :try_start_1
    invoke-direct {p0, p2, v0}, Lcom/ut/mini/module/traffic/UTTrafficStatistic;->_doTrafficIncrement(Ljava/lang/String;Lcom/ut/mini/module/traffic/UTTrafficItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 38
    .end local v0    # "ti":Lcom/ut/mini/module/traffic/UTTrafficItem;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setUid(I)V
    .locals 1
    .param p1, "aUid"    # I

    .prologue
    .line 19
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/ut/mini/module/traffic/UTTrafficStatistic;->mUid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
