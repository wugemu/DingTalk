.class public Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;
.super Ljava/lang/Object;
.source "UTGetTrafficStatisticResult.java"


# instance fields
.field private mMobileItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

.field private mWifiItem:Lcom/ut/mini/module/traffic/UTTrafficItem;


# direct methods
.method public constructor <init>(Lcom/ut/mini/module/traffic/UTPhoneTraffic;)V
    .locals 4
    .param p1, "aPhoneTraffic"    # Lcom/ut/mini/module/traffic/UTPhoneTraffic;

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;->mWifiItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    .line 7
    iput-object v0, p0, Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;->mMobileItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    .line 10
    invoke-virtual {p1}, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->getWifiItem()Lcom/ut/mini/module/traffic/UTTrafficItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-direct {v0}, Lcom/ut/mini/module/traffic/UTTrafficItem;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;->mWifiItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    .line 12
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;->mWifiItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-virtual {p1}, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->getWifiItem()Lcom/ut/mini/module/traffic/UTTrafficItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/module/traffic/UTTrafficItem;->getRX()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ut/mini/module/traffic/UTTrafficItem;->setRX(J)V

    .line 13
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;->mWifiItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-virtual {p1}, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->getWifiItem()Lcom/ut/mini/module/traffic/UTTrafficItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/module/traffic/UTTrafficItem;->getTX()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ut/mini/module/traffic/UTTrafficItem;->setTX(J)V

    .line 18
    :goto_0
    invoke-virtual {p1}, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->getMobileItem()Lcom/ut/mini/module/traffic/UTTrafficItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 19
    new-instance v0, Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-direct {v0}, Lcom/ut/mini/module/traffic/UTTrafficItem;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;->mMobileItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    .line 20
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;->mMobileItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-virtual {p1}, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->getMobileItem()Lcom/ut/mini/module/traffic/UTTrafficItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/module/traffic/UTTrafficItem;->getRX()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ut/mini/module/traffic/UTTrafficItem;->setRX(J)V

    .line 21
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;->mMobileItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-virtual {p1}, Lcom/ut/mini/module/traffic/UTPhoneTraffic;->getMobileItem()Lcom/ut/mini/module/traffic/UTTrafficItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/module/traffic/UTTrafficItem;->getTX()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ut/mini/module/traffic/UTTrafficItem;->setTX(J)V

    .line 25
    :goto_1
    return-void

    .line 15
    :cond_0
    new-instance v0, Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-direct {v0}, Lcom/ut/mini/module/traffic/UTTrafficItem;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;->mWifiItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-direct {v0}, Lcom/ut/mini/module/traffic/UTTrafficItem;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;->mMobileItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    goto :goto_1
.end method


# virtual methods
.method public getMobileResult()Lcom/ut/mini/module/traffic/UTTrafficItem;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;->mMobileItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    return-object v0
.end method

.method public getMobileRx()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;->mMobileItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-virtual {v0}, Lcom/ut/mini/module/traffic/UTTrafficItem;->getRX()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMobileTotal()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;->mMobileItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-virtual {v0}, Lcom/ut/mini/module/traffic/UTTrafficItem;->getTotal()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMobileTx()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;->mMobileItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-virtual {v0}, Lcom/ut/mini/module/traffic/UTTrafficItem;->getTX()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotal()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;->mMobileItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-virtual {v0}, Lcom/ut/mini/module/traffic/UTTrafficItem;->getTotal()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;->mWifiItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-virtual {v2}, Lcom/ut/mini/module/traffic/UTTrafficItem;->getTotal()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getWifiResult()Lcom/ut/mini/module/traffic/UTTrafficItem;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;->mWifiItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    return-object v0
.end method

.method public getWifiRx()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;->mWifiItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-virtual {v0}, Lcom/ut/mini/module/traffic/UTTrafficItem;->getRX()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiTotal()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;->mWifiItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-virtual {v0}, Lcom/ut/mini/module/traffic/UTTrafficItem;->getTotal()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiTx()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;->mWifiItem:Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-virtual {v0}, Lcom/ut/mini/module/traffic/UTTrafficItem;->getTX()J

    move-result-wide v0

    return-wide v0
.end method
