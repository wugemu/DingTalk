.class public Lorg/altbeacon/beacon/BeaconTransmitter;
.super Ljava/lang/Object;
.source "BeaconTransmitter.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field public static final NOT_SUPPORTED_BLE:I = 0x2

.field public static final NOT_SUPPORTED_CANNOT_GET_ADVERTISER:I = 0x4

.field public static final NOT_SUPPORTED_CANNOT_GET_ADVERTISER_MULTIPLE_ADVERTISEMENTS:I = 0x5

.field public static final NOT_SUPPORTED_MIN_SDK:I = 0x1

.field public static final NOT_SUPPORTED_MULTIPLE_ADVERTISEMENTS:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SUPPORTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BeaconTransmitter"


# instance fields
.field private mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

.field private mAdvertiseMode:I

.field private mAdvertiseTxPowerLevel:I

.field private mAdvertisingClientCallback:Landroid/bluetooth/le/AdvertiseCallback;

.field private mBeacon:Lorg/altbeacon/beacon/Beacon;

.field private mBeaconParser:Lorg/altbeacon/beacon/BeaconParser;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field private mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/altbeacon/beacon/BeaconParser;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/altbeacon/beacon/BeaconParser;

    .prologue
    const/4 v5, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v5, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertiseMode:I

    .line 38
    const/4 v1, 0x3

    iput v1, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertiseTxPowerLevel:I

    .line 52
    iput-object p2, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeaconParser:Lorg/altbeacon/beacon/BeaconParser;

    .line 53
    const-string/jumbo v1, "bluetooth"

    .line 54
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 55
    .local v0, "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 57
    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v1

    iput-object v1, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 58
    const-string/jumbo v1, "BeaconTransmitter"

    const-string/jumbo v2, "new BeaconTransmitter constructed.  mbluetoothLeAdvertiser is %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string/jumbo v1, "BeaconTransmitter"

    const-string/jumbo v2, "Failed to get BluetoothManager"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/altbeacon/beacon/BeaconTransmitter;)Landroid/bluetooth/le/AdvertiseCallback;
    .locals 1
    .param p0, "x0"    # Lorg/altbeacon/beacon/BeaconTransmitter;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertisingClientCallback:Landroid/bluetooth/le/AdvertiseCallback;

    return-object v0
.end method

.method static synthetic access$102(Lorg/altbeacon/beacon/BeaconTransmitter;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/altbeacon/beacon/BeaconTransmitter;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mStarted:Z

    return p1
.end method

.method public static checkTransmissionSupported(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 234
    .local v0, "returnCode":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    .line 235
    const/4 v0, 0x1

    .line 256
    :cond_0
    :goto_0
    return v0

    .line 237
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.hardware.bluetooth_le"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 238
    const/4 v0, 0x2

    goto :goto_0

    .line 243
    :cond_2
    :try_start_0
    const-string/jumbo v1, "bluetooth"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v1

    if-nez v1, :cond_0

    .line 244
    const-string/jumbo v1, "bluetooth"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isMultipleAdvertisementSupported()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_3

    .line 245
    const/4 v0, 0x5

    goto :goto_0

    .line 248
    :cond_3
    const/4 v0, 0x4

    goto :goto_0

    .line 252
    :catch_0
    move-exception v1

    const/4 v0, 0x4

    goto :goto_0
.end method

.method private getAdvertiseCallback()Landroid/bluetooth/le/AdvertiseCallback;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Lorg/altbeacon/beacon/BeaconTransmitter$1;

    invoke-direct {v0, p0}, Lorg/altbeacon/beacon/BeaconTransmitter$1;-><init>(Lorg/altbeacon/beacon/BeaconTransmitter;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 284
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    return-object v0
.end method

.method private static parseUuidFrom([B)Landroid/os/ParcelUuid;
    .locals 14
    .param p0, "uuidBytes"    # [B

    .prologue
    const/16 v13, 0x10

    const/4 v10, 0x1

    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 307
    const-string/jumbo v3, "00000000-0000-1000-8000-00805F9B34FB"

    .line 308
    invoke-static {v3}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    .line 309
    .local v0, "BASE_UUID":Landroid/os/ParcelUuid;
    if-nez p0, :cond_0

    .line 310
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "uuidBytes cannot be null"

    invoke-direct {v3, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 312
    :cond_0
    array-length v2, p0

    .line 313
    .local v2, "length":I
    if-eq v2, v12, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    if-eq v2, v13, :cond_1

    .line 315
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "uuidBytes length invalid - "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 318
    :cond_1
    if-ne v2, v13, :cond_2

    .line 319
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 320
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    .line 321
    .local v6, "msb":J
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    .line 322
    .local v4, "lsb":J
    new-instance v3, Landroid/os/ParcelUuid;

    new-instance v10, Ljava/util/UUID;

    invoke-direct {v10, v6, v7, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v3, v10}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 338
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v3

    .line 327
    .end local v4    # "lsb":J
    .end local v6    # "msb":J
    :cond_2
    if-ne v2, v12, :cond_3

    .line 328
    aget-byte v3, p0, v11

    and-int/lit16 v3, v3, 0xff

    int-to-long v8, v3

    .line 329
    .local v8, "shortUuid":J
    aget-byte v3, p0, v10

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    int-to-long v10, v3

    add-long/2addr v8, v10

    .line 336
    :goto_1
    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v10

    const/16 v3, 0x20

    shl-long v12, v8, v3

    add-long v6, v10, v12

    .line 337
    .restart local v6    # "msb":J
    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    .line 338
    .restart local v4    # "lsb":J
    new-instance v3, Landroid/os/ParcelUuid;

    new-instance v10, Ljava/util/UUID;

    invoke-direct {v10, v6, v7, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v3, v10}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    goto :goto_0

    .line 331
    .end local v4    # "lsb":J
    .end local v6    # "msb":J
    .end local v8    # "shortUuid":J
    :cond_3
    aget-byte v3, p0, v11

    and-int/lit16 v3, v3, 0xff

    int-to-long v8, v3

    .line 332
    .restart local v8    # "shortUuid":J
    aget-byte v3, p0, v10

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    int-to-long v10, v3

    add-long/2addr v8, v10

    .line 333
    aget-byte v3, p0, v12

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    int-to-long v10, v3

    add-long/2addr v8, v10

    .line 334
    const/4 v3, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    int-to-long v10, v3

    add-long/2addr v8, v10

    goto :goto_1
.end method


# virtual methods
.method public getAdvertiseMode()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertiseMode:I

    return v0
.end method

.method public getAdvertiseTxPowerLevel()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertiseTxPowerLevel:I

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mStarted:Z

    return v0
.end method

.method public setAdvertiseMode(I)V
    .locals 0
    .param p1, "mAdvertiseMode"    # I

    .prologue
    .line 105
    iput p1, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertiseMode:I

    .line 106
    return-void
.end method

.method public setAdvertiseTxPowerLevel(I)V
    .locals 0
    .param p1, "mAdvertiseTxPowerLevel"    # I

    .prologue
    .line 124
    iput p1, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertiseTxPowerLevel:I

    .line 125
    return-void
.end method

.method public setBeacon(Lorg/altbeacon/beacon/Beacon;)V
    .locals 0
    .param p1, "beacon"    # Lorg/altbeacon/beacon/Beacon;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    .line 80
    return-void
.end method

.method public setBeaconParser(Lorg/altbeacon/beacon/BeaconParser;)V
    .locals 0
    .param p1, "beaconParser"    # Lorg/altbeacon/beacon/BeaconParser;

    .prologue
    .line 87
    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeaconParser:Lorg/altbeacon/beacon/BeaconParser;

    .line 88
    return-void
.end method

.method public startAdvertising()V
    .locals 17

    .prologue
    .line 149
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    if-nez v11, :cond_0

    .line 150
    new-instance v11, Ljava/lang/NullPointerException;

    const-string/jumbo v12, "Beacon cannot be null.  Set beacon before starting advertising"

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 152
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {v11}, Lorg/altbeacon/beacon/Beacon;->getManufacturer()I

    move-result v6

    .line 153
    .local v6, "manufacturerCode":I
    const/4 v8, -0x1

    .line 154
    .local v8, "serviceUuid":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeaconParser:Lorg/altbeacon/beacon/BeaconParser;

    invoke-virtual {v11}, Lorg/altbeacon/beacon/BeaconParser;->getServiceUuid()Ljava/lang/Long;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 155
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeaconParser:Lorg/altbeacon/beacon/BeaconParser;

    invoke-virtual {v11}, Lorg/altbeacon/beacon/BeaconParser;->getServiceUuid()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->intValue()I

    move-result v8

    .line 158
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeaconParser:Lorg/altbeacon/beacon/BeaconParser;

    if-nez v11, :cond_2

    .line 159
    new-instance v11, Ljava/lang/NullPointerException;

    const-string/jumbo v12, "You must supply a BeaconParser instance to BeaconTransmitter."

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 162
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeaconParser:Lorg/altbeacon/beacon/BeaconParser;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {v11, v12}, Lorg/altbeacon/beacon/BeaconParser;->getBeaconAdvertisementData(Lorg/altbeacon/beacon/Beacon;)[B

    move-result-object v1

    .line 163
    .local v1, "advertisingBytes":[B
    const-string/jumbo v2, ""

    .line 164
    .local v2, "byteString":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v11, v1

    if-ge v5, v11, :cond_3

    .line 165
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "%02X"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aget-byte v15, v1, v5

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 168
    :cond_3
    const-string/jumbo v12, "BeaconTransmitter"

    const-string/jumbo v13, "Starting advertising with ID1: %s ID2: %s ID3: %s and data: %s of size %s"

    const/4 v11, 0x5

    new-array v14, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    .line 169
    invoke-virtual {v15}, Lorg/altbeacon/beacon/Beacon;->getId1()Lorg/altbeacon/beacon/Identifier;

    move-result-object v15

    aput-object v15, v14, v11

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    .line 170
    invoke-virtual {v11}, Lorg/altbeacon/beacon/Beacon;->getIdentifiers()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v11, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {v11}, Lorg/altbeacon/beacon/Beacon;->getId2()Lorg/altbeacon/beacon/Identifier;

    move-result-object v11

    :goto_1
    aput-object v11, v14, v15

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    .line 171
    invoke-virtual {v11}, Lorg/altbeacon/beacon/Beacon;->getIdentifiers()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/16 v16, 0x2

    move/from16 v0, v16

    if-le v11, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {v11}, Lorg/altbeacon/beacon/Beacon;->getId3()Lorg/altbeacon/beacon/Identifier;

    move-result-object v11

    :goto_2
    aput-object v11, v14, v15

    const/4 v11, 0x3

    aput-object v2, v14, v11

    const/4 v11, 0x4

    array-length v15, v1

    .line 172
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v11

    .line 168
    invoke-static {v12, v13, v14}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    :try_start_0
    new-instance v3, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v3}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    .line 176
    .local v3, "dataBuilder":Landroid/bluetooth/le/AdvertiseData$Builder;
    if-lez v8, :cond_6

    .line 177
    const/4 v11, 0x2

    new-array v9, v11, [B

    const/4 v11, 0x0

    and-int/lit16 v12, v8, 0xff

    int-to-byte v12, v12

    aput-byte v12, v9, v11

    const/4 v11, 0x1

    shr-int/lit8 v12, v8, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v9, v11

    .line 180
    .local v9, "serviceUuidBytes":[B
    invoke-static {v9}, Lorg/altbeacon/beacon/BeaconTransmitter;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v7

    .line 181
    .local v7, "parcelUuid":Landroid/os/ParcelUuid;
    invoke-virtual {v3, v7, v1}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 182
    invoke-virtual {v3, v7}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 183
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeTxPowerLevel(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 184
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeDeviceName(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 190
    .end local v7    # "parcelUuid":Landroid/os/ParcelUuid;
    .end local v9    # "serviceUuidBytes":[B
    :goto_3
    new-instance v10, Landroid/bluetooth/le/AdvertiseSettings$Builder;

    invoke-direct {v10}, Landroid/bluetooth/le/AdvertiseSettings$Builder;-><init>()V

    .line 192
    .local v10, "settingsBuilder":Landroid/bluetooth/le/AdvertiseSettings$Builder;
    move-object/from16 v0, p0

    iget v11, v0, Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertiseMode:I

    invoke-virtual {v10, v11}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 193
    move-object/from16 v0, p0

    iget v11, v0, Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertiseTxPowerLevel:I

    invoke-virtual {v10, v11}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 194
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setConnectable(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 196
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-virtual {v10}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->build()Landroid/bluetooth/le/AdvertiseSettings;

    move-result-object v12

    invoke-virtual {v3}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object v13

    invoke-direct/range {p0 .. p0}, Lorg/altbeacon/beacon/BeaconTransmitter;->getAdvertiseCallback()Landroid/bluetooth/le/AdvertiseCallback;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 197
    const-string/jumbo v11, "BeaconTransmitter"

    const-string/jumbo v12, "Started advertisement with callback: %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-direct/range {p0 .. p0}, Lorg/altbeacon/beacon/BeaconTransmitter;->getAdvertiseCallback()Landroid/bluetooth/le/AdvertiseCallback;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v3    # "dataBuilder":Landroid/bluetooth/le/AdvertiseData$Builder;
    .end local v10    # "settingsBuilder":Landroid/bluetooth/le/AdvertiseSettings$Builder;
    :goto_4
    return-void

    .line 170
    :cond_4
    const-string/jumbo v11, ""

    goto/16 :goto_1

    .line 171
    :cond_5
    const-string/jumbo v11, ""

    goto/16 :goto_2

    .line 187
    .restart local v3    # "dataBuilder":Landroid/bluetooth/le/AdvertiseData$Builder;
    :cond_6
    :try_start_1
    invoke-virtual {v3, v6, v1}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 199
    .end local v3    # "dataBuilder":Landroid/bluetooth/le/AdvertiseData$Builder;
    :catch_0
    move-exception v4

    .line 200
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "BeaconTransmitter"

    const-string/jumbo v12, "Cannot start advertising due to exception"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v4, v11, v12, v13}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public startAdvertising(Lorg/altbeacon/beacon/Beacon;)V
    .locals 1
    .param p1, "beacon"    # Lorg/altbeacon/beacon/Beacon;

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/altbeacon/beacon/BeaconTransmitter;->startAdvertising(Lorg/altbeacon/beacon/Beacon;Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 133
    return-void
.end method

.method public startAdvertising(Lorg/altbeacon/beacon/Beacon;Landroid/bluetooth/le/AdvertiseCallback;)V
    .locals 0
    .param p1, "beacon"    # Lorg/altbeacon/beacon/Beacon;
    .param p2, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;

    .prologue
    .line 140
    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    .line 141
    iput-object p2, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertisingClientCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 142
    invoke-virtual {p0}, Lorg/altbeacon/beacon/BeaconTransmitter;->startAdvertising()V

    .line 143
    return-void
.end method

.method public stopAdvertising()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 208
    iget-boolean v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mStarted:Z

    if-nez v0, :cond_0

    .line 209
    const-string/jumbo v0, "BeaconTransmitter"

    const-string/jumbo v1, "Skipping stop advertising -- not started"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    :goto_0
    return-void

    .line 212
    :cond_0
    const-string/jumbo v0, "BeaconTransmitter"

    const-string/jumbo v1, "Stopping advertising with object %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertisingClientCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 215
    :try_start_0
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconTransmitter;->getAdvertiseCallback()Landroid/bluetooth/le/AdvertiseCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_1
    iput-boolean v4, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mStarted:Z

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    const-string/jumbo v0, "BeaconTransmitter"

    const-string/jumbo v1, "Bluetooth is turned off. Transmitter stop call failed."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
