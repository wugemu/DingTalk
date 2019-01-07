.class public Lorg/altbeacon/beacon/BleBeacon;
.super Lorg/altbeacon/beacon/Beacon;
.source "BleBeacon.java"


# static fields
.field public static final BLE_BEACON_IDENTIFIER_SIZE:I = 0x8

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/altbeacon/beacon/BleBeacon;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mDevAttr:B

.field public mDeviceId:I

.field public mDeviceServiceId:I

.field public mDeviceType:I

.field public mRetainData:[B

.field public mState:B

.field public major:I

.field public minor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lorg/altbeacon/beacon/BleBeacon$1;

    invoke-direct {v0}, Lorg/altbeacon/beacon/BleBeacon$1;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/BleBeacon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/altbeacon/beacon/Beacon;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/Beacon;-><init>(Landroid/os/Parcel;)V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lorg/altbeacon/beacon/BleBeacon;->mDeviceId:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lorg/altbeacon/beacon/BleBeacon;->mDeviceType:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lorg/altbeacon/beacon/BleBeacon;->mDeviceServiceId:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lorg/altbeacon/beacon/BleBeacon;->major:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lorg/altbeacon/beacon/BleBeacon;->minor:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lorg/altbeacon/beacon/BleBeacon;->mState:B

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lorg/altbeacon/beacon/BleBeacon;->mDevAttr:B

    .line 58
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 59
    .local v1, "size":I
    new-array v2, v1, [B

    iput-object v2, p0, Lorg/altbeacon/beacon/BleBeacon;->mRetainData:[B

    .line 60
    iget-object v2, p0, Lorg/altbeacon/beacon/BleBeacon;->mRetainData:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1    # "size":I
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/altbeacon/beacon/Beacon;)V
    .locals 0
    .param p1, "beacon"    # Lorg/altbeacon/beacon/Beacon;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/Beacon;-><init>(Lorg/altbeacon/beacon/Beacon;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getDistance()D
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 82
    iget v0, p0, Lorg/altbeacon/beacon/BleBeacon;->mTxPower:I

    if-nez v0, :cond_0

    .line 83
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 85
    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0}, Lorg/altbeacon/beacon/Beacon;->getDistance()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getRunningAverageRssi()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 68
    :try_start_0
    const-class v3, Lorg/altbeacon/beacon/Beacon;

    const-string/jumbo v4, "mRunningAverageRssi"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 69
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 70
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    .line 71
    .local v2, "rssi":Ljava/lang/Double;
    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 77
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "rssi":Ljava/lang/Double;
    :goto_0
    return v3

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget v3, p0, Lorg/altbeacon/beacon/BleBeacon;->mRssi:I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Lorg/altbeacon/beacon/Beacon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 91
    iget v0, p0, Lorg/altbeacon/beacon/BleBeacon;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Lorg/altbeacon/beacon/BleBeacon;->mDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget v0, p0, Lorg/altbeacon/beacon/BleBeacon;->mDeviceServiceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Lorg/altbeacon/beacon/BleBeacon;->major:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lorg/altbeacon/beacon/BleBeacon;->minor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-byte v0, p0, Lorg/altbeacon/beacon/BleBeacon;->mState:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 98
    iget-byte v0, p0, Lorg/altbeacon/beacon/BleBeacon;->mDevAttr:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 99
    iget-object v0, p0, Lorg/altbeacon/beacon/BleBeacon;->mRetainData:[B

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/altbeacon/beacon/BleBeacon;->mRetainData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v0, p0, Lorg/altbeacon/beacon/BleBeacon;->mRetainData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 103
    :cond_0
    return-void
.end method
