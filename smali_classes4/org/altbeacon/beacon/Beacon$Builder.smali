.class public Lorg/altbeacon/beacon/Beacon$Builder;
.super Ljava/lang/Object;
.source "Beacon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/Beacon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final mBeacon:Lorg/altbeacon/beacon/Beacon;

.field private mId1:Lorg/altbeacon/beacon/Identifier;

.field private mId2:Lorg/altbeacon/beacon/Identifier;

.field private mId3:Lorg/altbeacon/beacon/Identifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    new-instance v0, Lorg/altbeacon/beacon/Beacon;

    invoke-direct {v0}, Lorg/altbeacon/beacon/Beacon;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    .line 609
    return-void
.end method


# virtual methods
.method public build()Lorg/altbeacon/beacon/Beacon;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 616
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mId1:Lorg/altbeacon/beacon/Identifier;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iget-object v0, v0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    iget-object v1, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mId1:Lorg/altbeacon/beacon/Identifier;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mId2:Lorg/altbeacon/beacon/Identifier;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iget-object v0, v0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    iget-object v1, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mId2:Lorg/altbeacon/beacon/Identifier;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mId3:Lorg/altbeacon/beacon/Identifier;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iget-object v0, v0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    iget-object v1, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mId3:Lorg/altbeacon/beacon/Identifier;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    return-object v0
.end method

.method public copyBeaconFields(Lorg/altbeacon/beacon/Beacon;)Lorg/altbeacon/beacon/Beacon$Builder;
    .locals 1
    .param p1, "beacon"    # Lorg/altbeacon/beacon/Beacon;

    .prologue
    .line 633
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getIdentifiers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/Beacon$Builder;->setIdentifiers(Ljava/util/List;)Lorg/altbeacon/beacon/Beacon$Builder;

    .line 634
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getBeaconTypeCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/Beacon$Builder;->setBeaconTypeCode(I)Lorg/altbeacon/beacon/Beacon$Builder;

    .line 635
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getDataFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/Beacon$Builder;->setDataFields(Ljava/util/List;)Lorg/altbeacon/beacon/Beacon$Builder;

    .line 636
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/Beacon$Builder;->setBluetoothAddress(Ljava/lang/String;)Lorg/altbeacon/beacon/Beacon$Builder;

    .line 637
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getBluetoothName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/Beacon$Builder;->setBluetoothName(Ljava/lang/String;)Lorg/altbeacon/beacon/Beacon$Builder;

    .line 638
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getExtraDataFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/Beacon$Builder;->setExtraDataFields(Ljava/util/List;)Lorg/altbeacon/beacon/Beacon$Builder;

    .line 639
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getManufacturer()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/Beacon$Builder;->setManufacturer(I)Lorg/altbeacon/beacon/Beacon$Builder;

    .line 640
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getTxPower()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/Beacon$Builder;->setTxPower(I)Lorg/altbeacon/beacon/Beacon$Builder;

    .line 641
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getRssi()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/Beacon$Builder;->setRssi(I)Lorg/altbeacon/beacon/Beacon$Builder;

    .line 642
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getServiceUuid()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/Beacon$Builder;->setServiceUuid(I)Lorg/altbeacon/beacon/Beacon$Builder;

    .line 643
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->isMultiFrameBeacon()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/Beacon$Builder;->setMultiFrameBeacon(Z)Lorg/altbeacon/beacon/Beacon$Builder;

    .line 644
    return-object p0
.end method

.method public setBeaconTypeCode(I)Lorg/altbeacon/beacon/Beacon$Builder;
    .locals 1
    .param p1, "beaconTypeCode"    # I

    .prologue
    .line 719
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iput p1, v0, Lorg/altbeacon/beacon/Beacon;->mBeaconTypeCode:I

    .line 720
    return-object p0
.end method

.method public setBluetoothAddress(Ljava/lang/String;)Lorg/altbeacon/beacon/Beacon$Builder;
    .locals 1
    .param p1, "bluetoothAddress"    # Ljava/lang/String;

    .prologue
    .line 739
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iput-object p1, v0, Lorg/altbeacon/beacon/Beacon;->mBluetoothAddress:Ljava/lang/String;

    .line 740
    return-object p0
.end method

.method public setBluetoothName(Ljava/lang/String;)Lorg/altbeacon/beacon/Beacon$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 779
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iput-object p1, v0, Lorg/altbeacon/beacon/Beacon;->mBluetoothName:Ljava/lang/String;

    .line 780
    return-object p0
.end method

.method public setDataFields(Ljava/util/List;)Lorg/altbeacon/beacon/Beacon$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/altbeacon/beacon/Beacon$Builder;"
        }
    .end annotation

    .prologue
    .line 749
    .local p1, "dataFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iput-object p1, v0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    .line 750
    return-object p0
.end method

.method public setExtraDataFields(Ljava/util/List;)Lorg/altbeacon/beacon/Beacon$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/altbeacon/beacon/Beacon$Builder;"
        }
    .end annotation

    .prologue
    .line 759
    .local p1, "extraDataFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iput-object p1, v0, Lorg/altbeacon/beacon/Beacon;->mExtraDataFields:Ljava/util/List;

    .line 760
    return-object p0
.end method

.method public setId1(Ljava/lang/String;)Lorg/altbeacon/beacon/Beacon$Builder;
    .locals 1
    .param p1, "id1String"    # Ljava/lang/String;

    .prologue
    .line 667
    invoke-static {p1}, Lorg/altbeacon/beacon/Identifier;->parse(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mId1:Lorg/altbeacon/beacon/Identifier;

    .line 668
    return-object p0
.end method

.method public setId2(Ljava/lang/String;)Lorg/altbeacon/beacon/Beacon$Builder;
    .locals 1
    .param p1, "id2String"    # Ljava/lang/String;

    .prologue
    .line 678
    invoke-static {p1}, Lorg/altbeacon/beacon/Identifier;->parse(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mId2:Lorg/altbeacon/beacon/Identifier;

    .line 679
    return-object p0
.end method

.method public setId3(Ljava/lang/String;)Lorg/altbeacon/beacon/Beacon$Builder;
    .locals 1
    .param p1, "id3String"    # Ljava/lang/String;

    .prologue
    .line 689
    invoke-static {p1}, Lorg/altbeacon/beacon/Identifier;->parse(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mId3:Lorg/altbeacon/beacon/Identifier;

    .line 690
    return-object p0
.end method

.method public setIdentifiers(Ljava/util/List;)Lorg/altbeacon/beacon/Beacon$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Identifier;",
            ">;)",
            "Lorg/altbeacon/beacon/Beacon$Builder;"
        }
    .end annotation

    .prologue
    .local p1, "identifiers":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Identifier;>;"
    const/4 v0, 0x0

    .line 653
    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mId1:Lorg/altbeacon/beacon/Identifier;

    .line 654
    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mId2:Lorg/altbeacon/beacon/Identifier;

    .line 655
    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mId3:Lorg/altbeacon/beacon/Identifier;

    .line 656
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iput-object p1, v0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    .line 657
    return-object p0
.end method

.method public setManufacturer(I)Lorg/altbeacon/beacon/Beacon$Builder;
    .locals 1
    .param p1, "manufacturer"    # I

    .prologue
    .line 769
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iput p1, v0, Lorg/altbeacon/beacon/Beacon;->mManufacturer:I

    .line 770
    return-object p0
.end method

.method public setMultiFrameBeacon(Z)Lorg/altbeacon/beacon/Beacon$Builder;
    .locals 1
    .param p1, "multiFrameBeacon"    # Z

    .prologue
    .line 799
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iput-boolean p1, v0, Lorg/altbeacon/beacon/Beacon;->mMultiFrameBeacon:Z

    .line 800
    return-object p0
.end method

.method public setParserIdentifier(Ljava/lang/String;)Lorg/altbeacon/beacon/Beacon$Builder;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 789
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iput-object p1, v0, Lorg/altbeacon/beacon/Beacon;->mParserIdentifier:Ljava/lang/String;

    .line 790
    return-object p0
.end method

.method public setRssi(I)Lorg/altbeacon/beacon/Beacon$Builder;
    .locals 1
    .param p1, "rssi"    # I

    .prologue
    .line 699
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iput p1, v0, Lorg/altbeacon/beacon/Beacon;->mRssi:I

    .line 700
    return-object p0
.end method

.method public setServiceUuid(I)Lorg/altbeacon/beacon/Beacon$Builder;
    .locals 1
    .param p1, "serviceUuid"    # I

    .prologue
    .line 729
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iput p1, v0, Lorg/altbeacon/beacon/Beacon;->mServiceUuid:I

    .line 730
    return-object p0
.end method

.method public setTxPower(I)Lorg/altbeacon/beacon/Beacon$Builder;
    .locals 1
    .param p1, "txPower"    # I

    .prologue
    .line 709
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iput p1, v0, Lorg/altbeacon/beacon/Beacon;->mTxPower:I

    .line 710
    return-object p0
.end method
