.class public Lorg/altbeacon/beacon/Beacon;
.super Ljava/lang/Object;
.source "Beacon.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/Beacon$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Beacon"

.field private static final UNMODIFIABLE_LIST_OF_IDENTIFIER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Identifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNMODIFIABLE_LIST_OF_LONG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected static beaconDataFactory:Lorg/altbeacon/beacon/client/BeaconDataFactory;

.field protected static sDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

.field protected static sHardwareEqualityEnforced:Z


# instance fields
.field protected mBeaconTypeCode:I

.field protected mBluetoothAddress:Ljava/lang/String;

.field protected mBluetoothName:Ljava/lang/String;

.field protected mDataFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mDistance:Ljava/lang/Double;

.field protected mExtraDataFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Identifier;",
            ">;"
        }
    .end annotation
.end field

.field protected mManufacturer:I

.field protected mMultiFrameBeacon:Z

.field protected mParserIdentifier:Ljava/lang/String;

.field protected mRssi:I

.field public mRunningAverageRssi:Ljava/lang/Double;

.field protected mServiceUuid:I

.field protected mTxPower:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/Beacon;->UNMODIFIABLE_LIST_OF_LONG:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/Beacon;->UNMODIFIABLE_LIST_OF_IDENTIFIER:Ljava/util/List;

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lorg/altbeacon/beacon/Beacon;->sHardwareEqualityEnforced:Z

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lorg/altbeacon/beacon/Beacon;->sDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    .line 121
    new-instance v0, Lorg/altbeacon/beacon/client/NullBeaconDataFactory;

    invoke-direct {v0}, Lorg/altbeacon/beacon/client/NullBeaconDataFactory;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/Beacon;->beaconDataFactory:Lorg/altbeacon/beacon/client/BeaconDataFactory;

    .line 171
    new-instance v0, Lorg/altbeacon/beacon/Beacon$1;

    invoke-direct {v0}, Lorg/altbeacon/beacon/Beacon$1;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/Beacon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mRunningAverageRssi:Ljava/lang/Double;

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lorg/altbeacon/beacon/Beacon;->mServiceUuid:I

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/altbeacon/beacon/Beacon;->mMultiFrameBeacon:Z

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mExtraDataFields:Ljava/util/List;

    .line 268
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/altbeacon/beacon/Beacon;->mRunningAverageRssi:Ljava/lang/Double;

    .line 145
    const/4 v5, -0x1

    iput v5, p0, Lorg/altbeacon/beacon/Beacon;->mServiceUuid:I

    .line 165
    iput-boolean v4, p0, Lorg/altbeacon/beacon/Beacon;->mMultiFrameBeacon:Z

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 215
    .local v3, "size":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    .line 216
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 217
    iget-object v5, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/altbeacon/beacon/Identifier;->parse(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lorg/altbeacon/beacon/Beacon;->mDistance:Ljava/lang/Double;

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lorg/altbeacon/beacon/Beacon;->mRssi:I

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lorg/altbeacon/beacon/Beacon;->mTxPower:I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/altbeacon/beacon/Beacon;->mBluetoothAddress:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lorg/altbeacon/beacon/Beacon;->mBeaconTypeCode:I

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lorg/altbeacon/beacon/Beacon;->mServiceUuid:I

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 226
    .local v0, "dataSize":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    .line 227
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 228
    iget-object v5, p0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 230
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 231
    .local v1, "extraDataSize":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lorg/altbeacon/beacon/Beacon;->mExtraDataFields:Ljava/util/List;

    .line 232
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_2

    .line 233
    iget-object v5, p0, Lorg/altbeacon/beacon/Beacon;->mExtraDataFields:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 235
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lorg/altbeacon/beacon/Beacon;->mManufacturer:I

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/altbeacon/beacon/Beacon;->mBluetoothName:Ljava/lang/String;

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/altbeacon/beacon/Beacon;->mParserIdentifier:Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    :cond_3
    iput-boolean v4, p0, Lorg/altbeacon/beacon/Beacon;->mMultiFrameBeacon:Z

    .line 239
    return-void
.end method

.method protected constructor <init>(Lorg/altbeacon/beacon/Beacon;)V
    .locals 2
    .param p1, "otherBeacon"    # Lorg/altbeacon/beacon/Beacon;

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mRunningAverageRssi:Ljava/lang/Double;

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lorg/altbeacon/beacon/Beacon;->mServiceUuid:I

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/altbeacon/beacon/Beacon;->mMultiFrameBeacon:Z

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/altbeacon/beacon/Beacon;->mExtraDataFields:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mExtraDataFields:Ljava/util/List;

    .line 250
    iget-object v0, p1, Lorg/altbeacon/beacon/Beacon;->mDistance:Ljava/lang/Double;

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mDistance:Ljava/lang/Double;

    .line 251
    iget-object v0, p1, Lorg/altbeacon/beacon/Beacon;->mRunningAverageRssi:Ljava/lang/Double;

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mRunningAverageRssi:Ljava/lang/Double;

    .line 252
    iget v0, p1, Lorg/altbeacon/beacon/Beacon;->mRssi:I

    iput v0, p0, Lorg/altbeacon/beacon/Beacon;->mRssi:I

    .line 253
    iget v0, p1, Lorg/altbeacon/beacon/Beacon;->mTxPower:I

    iput v0, p0, Lorg/altbeacon/beacon/Beacon;->mTxPower:I

    .line 254
    iget-object v0, p1, Lorg/altbeacon/beacon/Beacon;->mBluetoothAddress:Ljava/lang/String;

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mBluetoothAddress:Ljava/lang/String;

    .line 255
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getBeaconTypeCode()I

    move-result v0

    iput v0, p0, Lorg/altbeacon/beacon/Beacon;->mBeaconTypeCode:I

    .line 256
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getServiceUuid()I

    move-result v0

    iput v0, p0, Lorg/altbeacon/beacon/Beacon;->mServiceUuid:I

    .line 257
    iget-object v0, p1, Lorg/altbeacon/beacon/Beacon;->mBluetoothName:Ljava/lang/String;

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mBluetoothName:Ljava/lang/String;

    .line 258
    iget-object v0, p1, Lorg/altbeacon/beacon/Beacon;->mParserIdentifier:Ljava/lang/String;

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mParserIdentifier:Ljava/lang/String;

    .line 259
    return-void
.end method

.method protected static calculateDistance(ID)Ljava/lang/Double;
    .locals 3
    .param p0, "txPower"    # I
    .param p1, "bestRssiAvailable"    # D

    .prologue
    .line 577
    invoke-static {}, Lorg/altbeacon/beacon/Beacon;->getDistanceCalculator()Lorg/altbeacon/beacon/distance/DistanceCalculator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 578
    invoke-static {}, Lorg/altbeacon/beacon/Beacon;->getDistanceCalculator()Lorg/altbeacon/beacon/distance/DistanceCalculator;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lorg/altbeacon/beacon/distance/DistanceCalculator;->calculateDistance(ID)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 582
    :goto_0
    return-object v0

    .line 581
    :cond_0
    const-string/jumbo v0, "Beacon"

    const-string/jumbo v1, "Distance calculator not set.  Distance will bet set to -1"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 582
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDistanceCalculator()Lorg/altbeacon/beacon/distance/DistanceCalculator;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lorg/altbeacon/beacon/Beacon;->sDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    return-object v0
.end method

.method public static setDistanceCalculator(Lorg/altbeacon/beacon/distance/DistanceCalculator;)V
    .locals 0
    .param p0, "dc"    # Lorg/altbeacon/beacon/distance/DistanceCalculator;

    .prologue
    .line 187
    sput-object p0, Lorg/altbeacon/beacon/Beacon;->sDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    .line 188
    return-void
.end method

.method public static setHardwareEqualityEnforced(Z)V
    .locals 0
    .param p0, "e"    # Z

    .prologue
    .line 205
    sput-boolean p0, Lorg/altbeacon/beacon/Beacon;->sHardwareEqualityEnforced:Z

    .line 206
    return-void
.end method

.method private toStringBuilder()Ljava/lang/StringBuilder;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 505
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 506
    .local v0, "i":I
    iget-object v3, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/Identifier;

    .line 507
    .local v1, "identifier":Lorg/altbeacon/beacon/Identifier;
    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    .line 508
    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    :cond_0
    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 512
    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    if-nez v1, :cond_1

    const-string/jumbo v3, "null"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    add-int/lit8 v0, v0, 0x1

    .line 515
    goto :goto_0

    .line 513
    :cond_1
    invoke-virtual {v1}, Lorg/altbeacon/beacon/Identifier;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 516
    .end local v1    # "identifier":Lorg/altbeacon/beacon/Identifier;
    :cond_2
    iget-object v3, p0, Lorg/altbeacon/beacon/Beacon;->mParserIdentifier:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 517
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/altbeacon/beacon/Beacon;->mParserIdentifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    :cond_3
    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "that"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 473
    instance-of v2, p1, Lorg/altbeacon/beacon/Beacon;

    if-nez v2, :cond_1

    .line 481
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 476
    check-cast v0, Lorg/altbeacon/beacon/Beacon;

    .line 477
    .local v0, "thatBeacon":Lorg/altbeacon/beacon/Beacon;
    iget-object v2, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    iget-object v3, v0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 480
    sget-boolean v1, Lorg/altbeacon/beacon/Beacon;->sHardwareEqualityEnforced:Z

    if-eqz v1, :cond_2

    .line 481
    invoke-virtual {p0}, Lorg/altbeacon/beacon/Beacon;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/altbeacon/beacon/Beacon;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getBeaconTypeCode()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lorg/altbeacon/beacon/Beacon;->mBeaconTypeCode:I

    return v0
.end method

.method public getBluetoothAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mBluetoothAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBluetoothName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mBluetoothName:Ljava/lang/String;

    return-object v0
.end method

.method public getDataFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 342
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/altbeacon/beacon/Beacon;->UNMODIFIABLE_LIST_OF_LONG:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    .line 346
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getDistance()D
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 394
    iget-object v2, p0, Lorg/altbeacon/beacon/Beacon;->mDistance:Ljava/lang/Double;

    if-nez v2, :cond_0

    .line 395
    iget v2, p0, Lorg/altbeacon/beacon/Beacon;->mRssi:I

    int-to-double v0, v2

    .line 396
    .local v0, "bestRssiAvailable":D
    iget-object v2, p0, Lorg/altbeacon/beacon/Beacon;->mRunningAverageRssi:Ljava/lang/Double;

    if-eqz v2, :cond_1

    .line 397
    iget-object v2, p0, Lorg/altbeacon/beacon/Beacon;->mRunningAverageRssi:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 402
    :goto_0
    iget v2, p0, Lorg/altbeacon/beacon/Beacon;->mTxPower:I

    invoke-static {v2, v0, v1}, Lorg/altbeacon/beacon/Beacon;->calculateDistance(ID)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lorg/altbeacon/beacon/Beacon;->mDistance:Ljava/lang/Double;

    .line 404
    .end local v0    # "bestRssiAvailable":D
    :cond_0
    iget-object v2, p0, Lorg/altbeacon/beacon/Beacon;->mDistance:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    return-wide v2

    .line 400
    .restart local v0    # "bestRssiAvailable":D
    :cond_1
    const-string/jumbo v2, "Beacon"

    const-string/jumbo v3, "Not using running average RSSI because it is null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getExtraDataFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 355
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mExtraDataFields:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/altbeacon/beacon/Beacon;->UNMODIFIABLE_LIST_OF_LONG:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mExtraDataFields:Ljava/util/List;

    .line 359
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mExtraDataFields:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getId1()Lorg/altbeacon/beacon/Identifier;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 318
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Identifier;

    return-object v0
.end method

.method public getId2()Lorg/altbeacon/beacon/Identifier;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 326
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Identifier;

    return-object v0
.end method

.method public getId3()Lorg/altbeacon/beacon/Identifier;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 334
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Identifier;

    return-object v0
.end method

.method public getIdentifier(I)Lorg/altbeacon/beacon/Identifier;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Identifier;

    return-object v0
.end method

.method public getIdentifiers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Identifier;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 376
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/altbeacon/beacon/Beacon;->UNMODIFIABLE_LIST_OF_IDENTIFIER:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    .line 380
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getManufacturer()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lorg/altbeacon/beacon/Beacon;->mManufacturer:I

    return v0
.end method

.method public getParserIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mParserIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lorg/altbeacon/beacon/Beacon;->mRssi:I

    return v0
.end method

.method public getServiceUuid()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lorg/altbeacon/beacon/Beacon;->mServiceUuid:I

    return v0
.end method

.method public getTxPower()I
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lorg/altbeacon/beacon/Beacon;->mTxPower:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 461
    invoke-direct {p0}, Lorg/altbeacon/beacon/Beacon;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 462
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-boolean v1, Lorg/altbeacon/beacon/Beacon;->sHardwareEqualityEnforced:Z

    if-eqz v1, :cond_0

    .line 463
    iget-object v1, p0, Lorg/altbeacon/beacon/Beacon;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method public isExtraBeaconData()Z
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiFrameBeacon()Z
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Lorg/altbeacon/beacon/Beacon;->mMultiFrameBeacon:Z

    return v0
.end method

.method public requestData(Lorg/altbeacon/beacon/BeaconDataNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lorg/altbeacon/beacon/BeaconDataNotifier;

    .prologue
    .line 491
    sget-object v0, Lorg/altbeacon/beacon/Beacon;->beaconDataFactory:Lorg/altbeacon/beacon/client/BeaconDataFactory;

    invoke-interface {v0, p0, p1}, Lorg/altbeacon/beacon/client/BeaconDataFactory;->requestBeaconData(Lorg/altbeacon/beacon/Beacon;Lorg/altbeacon/beacon/BeaconDataNotifier;)V

    .line 492
    return-void
.end method

.method public setExtraDataFields(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Lorg/altbeacon/beacon/Beacon;->mExtraDataFields:Ljava/util/List;

    .line 369
    return-void
.end method

.method public setRssi(I)V
    .locals 0
    .param p1, "rssi"    # I

    .prologue
    .line 285
    iput p1, p0, Lorg/altbeacon/beacon/Beacon;->mRssi:I

    .line 286
    return-void
.end method

.method public setRunningAverageRssi(D)V
    .locals 1
    .param p1, "rssi"    # D

    .prologue
    .line 275
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mRunningAverageRssi:Ljava/lang/Double;

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mDistance:Ljava/lang/Double;

    .line 277
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    invoke-direct {p0}, Lorg/altbeacon/beacon/Beacon;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 534
    iget-object v2, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    iget-object v2, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/Identifier;

    .line 536
    .local v1, "identifier":Lorg/altbeacon/beacon/Identifier;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/altbeacon/beacon/Identifier;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 538
    .end local v1    # "identifier":Lorg/altbeacon/beacon/Identifier;
    :cond_1
    invoke-virtual {p0}, Lorg/altbeacon/beacon/Beacon;->getDistance()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 539
    iget v2, p0, Lorg/altbeacon/beacon/Beacon;->mRssi:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 540
    iget v2, p0, Lorg/altbeacon/beacon/Beacon;->mTxPower:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    iget-object v2, p0, Lorg/altbeacon/beacon/Beacon;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 542
    iget v2, p0, Lorg/altbeacon/beacon/Beacon;->mBeaconTypeCode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    iget v2, p0, Lorg/altbeacon/beacon/Beacon;->mServiceUuid:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    iget-object v2, p0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    iget-object v2, p0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 546
    .local v0, "dataField":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_2

    .line 548
    .end local v0    # "dataField":Ljava/lang/Long;
    :cond_2
    iget-object v2, p0, Lorg/altbeacon/beacon/Beacon;->mExtraDataFields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    iget-object v2, p0, Lorg/altbeacon/beacon/Beacon;->mExtraDataFields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 550
    .restart local v0    # "dataField":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_3

    .line 552
    .end local v0    # "dataField":Ljava/lang/Long;
    :cond_3
    iget v2, p0, Lorg/altbeacon/beacon/Beacon;->mManufacturer:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 553
    iget-object v2, p0, Lorg/altbeacon/beacon/Beacon;->mBluetoothName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 554
    iget-object v2, p0, Lorg/altbeacon/beacon/Beacon;->mParserIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 555
    iget-boolean v2, p0, Lorg/altbeacon/beacon/Beacon;->mMultiFrameBeacon:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_4
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 556
    return-void

    .line 555
    :cond_4
    const/4 v2, 0x0

    goto :goto_4
.end method
