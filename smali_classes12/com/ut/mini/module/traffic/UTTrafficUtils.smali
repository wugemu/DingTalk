.class public Lcom/ut/mini/module/traffic/UTTrafficUtils;
.super Ljava/lang/Object;
.source "UTTrafficUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _getUidRxBytes(I)J
    .locals 2
    .param p0, "aUid"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 15
    invoke-static {p0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static _getUidTxBytes(I)J
    .locals 2
    .param p0, "aUid"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 20
    invoke-static {p0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTrafficStatistic(I)Lcom/ut/mini/module/traffic/UTTrafficItem;
    .locals 4
    .param p0, "aUid"    # I

    .prologue
    .line 44
    new-instance v0, Lcom/ut/mini/module/traffic/UTTrafficItem;

    invoke-direct {v0}, Lcom/ut/mini/module/traffic/UTTrafficItem;-><init>()V

    .line 45
    .local v0, "ts":Lcom/ut/mini/module/traffic/UTTrafficItem;
    invoke-static {p0}, Lcom/ut/mini/module/traffic/UTTrafficUtils;->getUidTxBytes(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ut/mini/module/traffic/UTTrafficItem;->setTX(J)V

    .line 46
    invoke-static {p0}, Lcom/ut/mini/module/traffic/UTTrafficUtils;->getUidRxBytes(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ut/mini/module/traffic/UTTrafficItem;->setRX(J)V

    .line 47
    return-object v0
.end method

.method public static getUidRxBytes(I)J
    .locals 6
    .param p0, "aUid"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 24
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x8

    if-lt v4, v5, :cond_0

    .line 25
    invoke-static {p0}, Lcom/ut/mini/module/traffic/UTTrafficUtils;->_getUidRxBytes(I)J

    move-result-wide v0

    .line 26
    .local v0, "bytes":J
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 30
    .end local v0    # "bytes":J
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public static getUidTxBytes(I)J
    .locals 6
    .param p0, "aUid"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 34
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x8

    if-lt v4, v5, :cond_0

    .line 35
    invoke-static {p0}, Lcom/ut/mini/module/traffic/UTTrafficUtils;->_getUidTxBytes(I)J

    move-result-wide v0

    .line 36
    .local v0, "bytes":J
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 40
    .end local v0    # "bytes":J
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method
