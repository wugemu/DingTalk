.class public Lcom/ut/mini/module/traffic/UTTrafficItem;
.super Ljava/lang/Object;
.source "UTTrafficItem.java"


# instance fields
.field private mRX:J

.field private mTX:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide v0, p0, Lcom/ut/mini/module/traffic/UTTrafficItem;->mTX:J

    .line 5
    iput-wide v0, p0, Lcom/ut/mini/module/traffic/UTTrafficItem;->mRX:J

    return-void
.end method


# virtual methods
.method public getRX()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/ut/mini/module/traffic/UTTrafficItem;->mRX:J

    return-wide v0
.end method

.method public getTX()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 8
    iget-wide v0, p0, Lcom/ut/mini/module/traffic/UTTrafficItem;->mTX:J

    return-wide v0
.end method

.method public getTotal()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/ut/mini/module/traffic/UTTrafficItem;->mRX:J

    iget-wide v2, p0, Lcom/ut/mini/module/traffic/UTTrafficItem;->mTX:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public increaseRx(J)V
    .locals 3
    .param p1, "aRx"    # J

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/ut/mini/module/traffic/UTTrafficItem;->mRX:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/ut/mini/module/traffic/UTTrafficItem;->mRX:J

    .line 25
    return-void
.end method

.method public increaseTx(J)V
    .locals 3
    .param p1, "aTx"    # J

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/ut/mini/module/traffic/UTTrafficItem;->mTX:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/ut/mini/module/traffic/UTTrafficItem;->mTX:J

    .line 29
    return-void
.end method

.method public setRX(J)V
    .locals 1
    .param p1, "aRX"    # J

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/ut/mini/module/traffic/UTTrafficItem;->mRX:J

    .line 21
    return-void
.end method

.method public setTX(J)V
    .locals 1
    .param p1, "aTX"    # J

    .prologue
    .line 12
    iput-wide p1, p0, Lcom/ut/mini/module/traffic/UTTrafficItem;->mTX:J

    .line 13
    return-void
.end method
