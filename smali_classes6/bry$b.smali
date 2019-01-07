.class public final Lbry$b;
.super Ljava/lang/Object;
.source "DeviceBeaconHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lorg/altbeacon/beacon/BleBeacon;

.field public b:Lbsg;

.field public c:Ljava/lang/Runnable;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    iput-object p1, p0, Lbry$b;->d:Ljava/lang/String;

    .line 507
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 515
    iget-object v1, p0, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    if-eqz v1, :cond_0

    .line 516
    iget-object v1, p0, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    iget-byte v1, v1, Lorg/altbeacon/beacon/BleBeacon;->mState:B

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 518
    :cond_0
    return v0
.end method

.method public final a(Lbry$b;)Z
    .locals 4
    .param p1, "data"    # Lbry$b;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 583
    if-eqz p1, :cond_0

    iget-object v2, p1, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 590
    :cond_1
    :goto_0
    return v0

    .line 587
    :cond_2
    iget-object v2, p0, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    if-eqz v2, :cond_1

    .line 590
    iget-object v2, p0, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    invoke-virtual {v2}, Lorg/altbeacon/beacon/BleBeacon;->getRssi()I

    move-result v2

    iget-object v3, p1, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    invoke-virtual {v3}, Lorg/altbeacon/beacon/BleBeacon;->getRssi()I

    move-result v3

    if-le v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/BleBeacon;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    .line 529
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    iget v0, v0, Lorg/altbeacon/beacon/BleBeacon;->mDeviceServiceId:I

    .line 557
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    iget v0, v0, Lorg/altbeacon/beacon/BleBeacon;->mDeviceId:I

    .line 564
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
