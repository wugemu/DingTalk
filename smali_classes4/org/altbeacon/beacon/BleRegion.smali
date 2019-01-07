.class public Lorg/altbeacon/beacon/BleRegion;
.super Lorg/altbeacon/beacon/Region;
.source "BleRegion.java"


# instance fields
.field private serviceUuId:I


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/Region;-><init>(Landroid/os/Parcel;)V

    .line 40
    invoke-direct {p0}, Lorg/altbeacon/beacon/BleRegion;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "bluetoothAddress"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lorg/altbeacon/beacon/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lorg/altbeacon/beacon/BleRegion;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "uniqueId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Identifier;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "identifiers":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Identifier;>;"
    invoke-direct {p0, p1, p2}, Lorg/altbeacon/beacon/Region;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 25
    invoke-direct {p0}, Lorg/altbeacon/beacon/BleRegion;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p3, "bluetoothAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Identifier;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "identifiers":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Identifier;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/altbeacon/beacon/Region;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lorg/altbeacon/beacon/BleRegion;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/altbeacon/beacon/Identifier;Lorg/altbeacon/beacon/Identifier;Lorg/altbeacon/beacon/Identifier;)V
    .locals 0
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "id1"    # Lorg/altbeacon/beacon/Identifier;
    .param p3, "id2"    # Lorg/altbeacon/beacon/Identifier;
    .param p4, "id3"    # Lorg/altbeacon/beacon/Identifier;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/altbeacon/beacon/Region;-><init>(Ljava/lang/String;Lorg/altbeacon/beacon/Identifier;Lorg/altbeacon/beacon/Identifier;Lorg/altbeacon/beacon/Identifier;)V

    .line 19
    invoke-direct {p0}, Lorg/altbeacon/beacon/BleRegion;->init()V

    .line 21
    return-void
.end method

.method private static getServiceIdentifierFromParcelUuid(Ljava/util/UUID;)I
    .locals 6
    .param p0, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 68
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    const-wide v4, 0xffff00000000L

    and-long/2addr v2, v4

    const/16 v4, 0x20

    ushr-long v0, v2, v4

    .line 69
    .local v0, "value":J
    long-to-int v2, v0

    return v2
.end method

.method private init()V
    .locals 4

    .prologue
    .line 44
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/altbeacon/beacon/BleRegion;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v1

    .line 45
    .local v1, "id1":Lorg/altbeacon/beacon/Identifier;
    if-eqz v1, :cond_0

    .line 47
    :try_start_0
    invoke-virtual {v1}, Lorg/altbeacon/beacon/Identifier;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "uuid":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-static {v3}, Lorg/altbeacon/beacon/BleRegion;->getServiceIdentifierFromParcelUuid(Ljava/util/UUID;)I

    move-result v3

    iput v3, p0, Lorg/altbeacon/beacon/BleRegion;->serviceUuId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v2    # "uuid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public matchesBeacon(Lorg/altbeacon/beacon/Beacon;)Z
    .locals 4
    .param p1, "beacon"    # Lorg/altbeacon/beacon/Beacon;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-virtual {p1, v2}, Lorg/altbeacon/beacon/Beacon;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v0

    .line 58
    .local v0, "beaconId1":Lorg/altbeacon/beacon/Identifier;
    if-nez v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v2

    .line 62
    :cond_1
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getServiceUuid()I

    move-result v1

    .line 64
    .local v1, "beaconServiceUuid":I
    iget v3, p0, Lorg/altbeacon/beacon/BleRegion;->serviceUuId:I

    if-ne v3, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method
