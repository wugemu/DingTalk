.class public Lcom/alibaba/doraemon/impl/bluetooth/IBeaconBroadcast;
.super Ljava/lang/Object;
.source "IBeaconBroadcast.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IBeaconBroadcast"


# instance fields
.field private beaconTransmitter:Lorg/altbeacon/beacon/BeaconTransmitter;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 27
    :try_start_0
    new-instance v2, Lorg/altbeacon/beacon/BeaconParser;

    invoke-direct {v2}, Lorg/altbeacon/beacon/BeaconParser;-><init>()V

    const-string/jumbo v3, "m:2-3=0215,i:4-19,i:20-21,i:22-23,p:24-24"

    invoke-virtual {v2, v3}, Lorg/altbeacon/beacon/BeaconParser;->setBeaconLayout(Ljava/lang/String;)Lorg/altbeacon/beacon/BeaconParser;

    move-result-object v0

    .line 28
    .local v0, "beaconParser":Lorg/altbeacon/beacon/BeaconParser;
    new-instance v2, Lorg/altbeacon/beacon/BeaconTransmitter;

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/altbeacon/beacon/BeaconTransmitter;-><init>(Landroid/content/Context;Lorg/altbeacon/beacon/BeaconParser;)V

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/IBeaconBroadcast;->beaconTransmitter:Lorg/altbeacon/beacon/BeaconTransmitter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v0    # "beaconParser":Lorg/altbeacon/beacon/BeaconParser;
    :cond_0
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v1

    .line 30
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public broadcast(Ljava/lang/String;III)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "version1"    # I
    .param p3, "version2"    # I
    .param p4, "txPower"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 49
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v1, Lorg/altbeacon/beacon/Beacon$Builder;

    invoke-direct {v1}, Lorg/altbeacon/beacon/Beacon$Builder;-><init>()V

    .line 41
    invoke-virtual {v1, p1}, Lorg/altbeacon/beacon/Beacon$Builder;->setId1(Ljava/lang/String;)Lorg/altbeacon/beacon/Beacon$Builder;

    move-result-object v1

    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/altbeacon/beacon/Beacon$Builder;->setId2(Ljava/lang/String;)Lorg/altbeacon/beacon/Beacon$Builder;

    move-result-object v1

    .line 43
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/altbeacon/beacon/Beacon$Builder;->setId3(Ljava/lang/String;)Lorg/altbeacon/beacon/Beacon$Builder;

    move-result-object v1

    const/16 v2, 0x4c

    .line 44
    invoke-virtual {v1, v2}, Lorg/altbeacon/beacon/Beacon$Builder;->setManufacturer(I)Lorg/altbeacon/beacon/Beacon$Builder;

    move-result-object v1

    .line 45
    invoke-virtual {v1, p4}, Lorg/altbeacon/beacon/Beacon$Builder;->setTxPower(I)Lorg/altbeacon/beacon/Beacon$Builder;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lorg/altbeacon/beacon/Beacon$Builder;->build()Lorg/altbeacon/beacon/Beacon;

    move-result-object v0

    .line 48
    .local v0, "beacon":Lorg/altbeacon/beacon/Beacon;
    invoke-virtual {p0, v0}, Lcom/alibaba/doraemon/impl/bluetooth/IBeaconBroadcast;->broadcast(Lorg/altbeacon/beacon/Beacon;)V

    goto :goto_0
.end method

.method public broadcast(Lorg/altbeacon/beacon/Beacon;)V
    .locals 2
    .param p1, "beacon"    # Lorg/altbeacon/beacon/Beacon;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/IBeaconBroadcast;->beaconTransmitter:Lorg/altbeacon/beacon/BeaconTransmitter;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/IBeaconBroadcast;->beaconTransmitter:Lorg/altbeacon/beacon/BeaconTransmitter;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/BeaconTransmitter;->stopAdvertising()V

    .line 57
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/IBeaconBroadcast;->beaconTransmitter:Lorg/altbeacon/beacon/BeaconTransmitter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/BeaconTransmitter;->setAdvertiseMode(I)V

    .line 58
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/IBeaconBroadcast;->beaconTransmitter:Lorg/altbeacon/beacon/BeaconTransmitter;

    new-instance v1, Lcom/alibaba/doraemon/impl/bluetooth/IBeaconBroadcast$1;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/impl/bluetooth/IBeaconBroadcast$1;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/IBeaconBroadcast;)V

    invoke-virtual {v0, p1, v1}, Lorg/altbeacon/beacon/BeaconTransmitter;->startAdvertising(Lorg/altbeacon/beacon/Beacon;Landroid/bluetooth/le/AdvertiseCallback;)V

    goto :goto_0
.end method

.method public stopBroadcast()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/IBeaconBroadcast;->beaconTransmitter:Lorg/altbeacon/beacon/BeaconTransmitter;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/IBeaconBroadcast;->beaconTransmitter:Lorg/altbeacon/beacon/BeaconTransmitter;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/BeaconTransmitter;->stopAdvertising()V

    goto :goto_0
.end method
