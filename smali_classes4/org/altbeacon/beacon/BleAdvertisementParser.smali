.class public Lorg/altbeacon/beacon/BleAdvertisementParser;
.super Lorg/altbeacon/beacon/BeaconParser;
.source "BleAdvertisementParser.java"


# static fields
.field private static final SERVICE_UUID_COMPLETE_PDU_TYPE:B = 0x3t

.field private static final SERVICE_UUID_INCOMPLETE_PDU_TYPE:B = 0x2t

.field private static final TAG:Ljava/lang/String; = "BleAdvertisementParser"


# instance fields
.field private mUUid:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "uuid"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconParser;-><init>()V

    .line 43
    iput p1, p0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mUUid:I

    .line 44
    return-void
.end method

.method private byteArrayToFormattedString([BIIZ)Ljava/lang/String;
    .locals 22
    .param p1, "byteBuffer"    # [B
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "littleEndian"    # Z

    .prologue
    .line 288
    sub-int v15, p3, p2

    add-int/lit8 v15, v15, 0x1

    new-array v4, v15, [B

    .line 290
    .local v4, "bytes":[B
    if-eqz p4, :cond_0

    .line 291
    const/4 v10, 0x0

    .local v10, "length":I
    :goto_0
    sub-int v15, p3, p2

    if-gt v10, v15, :cond_1

    .line 292
    array-length v15, v4

    add-int v15, v15, p2

    add-int/lit8 v15, v15, -0x1

    sub-int/2addr v15, v10

    aget-byte v15, p1, v15

    aput-byte v15, v4, v10

    .line 291
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 295
    .end local v10    # "length":I
    :cond_0
    const/4 v10, 0x0

    .restart local v10    # "length":I
    :goto_1
    sub-int v15, p3, p2

    if-gt v10, v15, :cond_1

    .line 296
    add-int v15, p2, v10

    aget-byte v15, p1, v15

    aput-byte v15, v4, v10

    .line 295
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 300
    :cond_1
    sub-int v15, p3, p2

    add-int/lit8 v10, v15, 0x1

    .line 301
    const/4 v15, 0x5

    if-lt v10, v15, :cond_3

    .line 302
    invoke-static {v4}, Lorg/altbeacon/beacon/BleAdvertisementParser;->bytesToHex([B)Ljava/lang/String;

    move-result-object v14

    .line 303
    .local v14, "var16":Ljava/lang/String;
    const/16 v15, 0x10

    if-ne v10, v15, :cond_2

    .line 304
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .local v11, "sb":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    const/16 v16, 0x8

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string/jumbo v15, "-"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const/16 v15, 0x8

    const/16 v16, 0xc

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string/jumbo v15, "-"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const/16 v15, 0xc

    const/16 v16, 0x10

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string/jumbo v15, "-"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const/16 v15, 0x10

    const/16 v16, 0x14

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string/jumbo v15, "-"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const/16 v15, 0x14

    const/16 v16, 0x20

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 328
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v14    # "var16":Ljava/lang/String;
    :goto_2
    return-object v15

    .line 316
    .restart local v14    # "var16":Ljava/lang/String;
    :cond_2
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "0x"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    .line 319
    .end local v14    # "var16":Ljava/lang/String;
    :cond_3
    const-wide/16 v8, 0x0

    .line 321
    .local v8, "hexString":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v10, :cond_4

    .line 322
    sub-int v15, v10, v5

    add-int/lit8 v15, v15, -0x1

    aget-byte v15, v4, v15

    and-int/lit16 v15, v15, 0xff

    int-to-long v2, v15

    .line 323
    .local v2, "byteValue":J
    const-wide/high16 v16, 0x4070000000000000L    # 256.0

    int-to-double v0, v5

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    mul-double v18, v18, v20

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-long v12, v0

    .line 324
    .local v12, "positionValue":J
    mul-long v6, v2, v12

    .line 325
    .local v6, "calculatedValue":J
    add-long/2addr v8, v6

    .line 321
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 328
    .end local v2    # "byteValue":J
    .end local v6    # "calculatedValue":J
    .end local v12    # "positionValue":J
    :cond_4
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    goto :goto_2
.end method

.method private byteArrayToInt([B)I
    .locals 3
    .param p1, "b"    # [B

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 242
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x1000000

    and-int v0, v1, v2

    .line 243
    .local v0, "i":I
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 244
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 245
    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 246
    return v0
.end method

.method private byteArrayToString([B)Ljava/lang/String;
    .locals 6
    .param p1, "bytes"    # [B

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 268
    const-string/jumbo v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p1, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private byteArrayToUnsignedShort([B)I
    .locals 2
    .param p1, "b"    # [B

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 237
    const/4 v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private byteArraysMatch([BI[BI)Z
    .locals 5
    .param p1, "array1"    # [B
    .param p2, "offset1"    # I
    .param p3, "array2"    # [B
    .param p4, "offset2"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 250
    array-length v3, p1

    array-length v4, p3

    if-le v3, v4, :cond_1

    array-length v1, p3

    .line 251
    .local v1, "minSize":I
    :goto_0
    add-int v3, p2, v1

    array-length v4, p1

    if-gt v3, v4, :cond_0

    add-int v3, p4, v1

    array-length v4, p3

    if-gt v3, v4, :cond_0

    .line 252
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 253
    add-int v3, v0, p2

    aget-byte v3, p1, v3

    add-int v4, v0, p4

    aget-byte v4, p3, v4

    if-eq v3, v4, :cond_2

    .line 260
    .end local v0    # "i":I
    :cond_0
    :goto_2
    return v2

    .line 250
    .end local v1    # "minSize":I
    :cond_1
    array-length v1, p1

    goto :goto_0

    .line 252
    .restart local v0    # "i":I
    .restart local v1    # "minSize":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 258
    :cond_3
    const/4 v2, 0x1

    goto :goto_2
.end method

.method private ensureMaxSize([BI)[B
    .locals 1
    .param p1, "array"    # [B
    .param p2, "requiredLength"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 339
    array-length v0, p1

    if-lt v0, p2, :cond_0

    .end local p1    # "array":[B
    :goto_0
    return-object p1

    .restart local p1    # "array":[B
    :cond_0
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_0
.end method

.method static unsignedNumber([B)J
    .locals 10
    .param p0, "value"    # [B

    .prologue
    .line 276
    const-wide/16 v4, 0x0

    .line 278
    .local v4, "r":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 279
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v2

    mul-int/lit8 v1, v3, 0x8

    .line 280
    .local v1, "bit":I
    aget-byte v0, p0, v2

    .line 281
    .local v0, "b":B
    shl-int v3, v0, v1

    int-to-long v6, v3

    const-wide/16 v8, 0xff

    shl-long/2addr v8, v1

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    .end local v0    # "b":B
    .end local v1    # "bit":I
    :cond_0
    return-wide v4
.end method


# virtual methods
.method protected fromScanData([BILandroid/bluetooth/BluetoothDevice;Lorg/altbeacon/beacon/Beacon;)Lorg/altbeacon/beacon/Beacon;
    .locals 38
    .param p1, "bytesToProcess"    # [B
    .param p2, "rssi"    # I
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p4, "beacon"    # Lorg/altbeacon/beacon/Beacon;

    .prologue
    .line 47
    new-instance v6, Lorg/altbeacon/bluetooth/BleAdvertisement;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/altbeacon/bluetooth/BleAdvertisement;-><init>([B)V

    .line 48
    .local v6, "advert":Lorg/altbeacon/bluetooth/BleAdvertisement;
    const/16 v21, 0x0

    .line 49
    .local v21, "parseFailed":Z
    const/16 v24, 0x0

    .line 50
    .local v24, "pduToParse":Lorg/altbeacon/bluetooth/Pdu;
    const/16 v26, 0x0

    .line 51
    .local v26, "pduUUID":Lorg/altbeacon/bluetooth/Pdu;
    const/16 v29, 0x0

    .line 53
    .local v29, "startByte":I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v16, "identifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/altbeacon/beacon/Identifier;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v10, "dataFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v6}, Lorg/altbeacon/bluetooth/BleAdvertisement;->getPdus()Ljava/util/List;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_0
    :goto_0
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_4

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/altbeacon/bluetooth/Pdu;

    .line 57
    .local v23, "pdu":Lorg/altbeacon/bluetooth/Pdu;
    invoke-virtual/range {v23 .. v23}, Lorg/altbeacon/bluetooth/Pdu;->getType()B

    move-result v25

    .line 58
    .local v25, "pduType":B
    const/16 v33, 0x2

    move/from16 v0, v25

    move/from16 v1, v33

    if-eq v0, v1, :cond_1

    const/16 v33, 0x3

    move/from16 v0, v25

    move/from16 v1, v33

    if-ne v0, v1, :cond_2

    .line 59
    :cond_1
    move-object/from16 v26, v23

    .line 60
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v33

    if-eqz v33, :cond_0

    .line 61
    const-string/jumbo v33, "BleAdvertisementParser"

    const-string/jumbo v34, "Processing pdu type %02X: %s with startIndex: %d, endIndex: %d"

    const/16 v35, 0x4

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v23 .. v23}, Lorg/altbeacon/bluetooth/Pdu;->getType()B

    move-result v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x1

    invoke-static/range {p1 .. p1}, Lorg/altbeacon/beacon/BleAdvertisementParser;->bytesToHex([B)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x2

    invoke-virtual/range {v23 .. v23}, Lorg/altbeacon/bluetooth/Pdu;->getStartIndex()I

    move-result v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x3

    invoke-virtual/range {v23 .. v23}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    invoke-static/range {v33 .. v35}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    :cond_2
    const/16 v33, -0x1

    move/from16 v0, v25

    move/from16 v1, v33

    if-ne v0, v1, :cond_3

    .line 64
    move-object/from16 v24, v23

    .line 65
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v33

    if-eqz v33, :cond_0

    .line 66
    const-string/jumbo v33, "BleAdvertisementParser"

    const-string/jumbo v34, "Processing pdu type %02X: %s with startIndex: %d, endIndex: %d"

    const/16 v35, 0x4

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v23 .. v23}, Lorg/altbeacon/bluetooth/Pdu;->getType()B

    move-result v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x1

    invoke-static/range {p1 .. p1}, Lorg/altbeacon/beacon/BleAdvertisementParser;->bytesToHex([B)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x2

    invoke-virtual/range {v23 .. v23}, Lorg/altbeacon/bluetooth/Pdu;->getStartIndex()I

    move-result v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x3

    invoke-virtual/range {v23 .. v23}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    invoke-static/range {v33 .. v35}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 69
    :cond_3
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v33

    if-eqz v33, :cond_0

    .line 70
    const-string/jumbo v33, "BleAdvertisementParser"

    const-string/jumbo v34, "Ignoring pdu type %02X"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v23 .. v23}, Lorg/altbeacon/bluetooth/Pdu;->getType()B

    move-result v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v37

    aput-object v37, v35, v36

    invoke-static/range {v33 .. v35}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 74
    .end local v23    # "pdu":Lorg/altbeacon/bluetooth/Pdu;
    .end local v25    # "pduType":B
    :cond_4
    if-eqz v24, :cond_5

    if-nez v26, :cond_8

    .line 75
    :cond_5
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v32

    if-eqz v32, :cond_6

    .line 76
    const-string/jumbo v32, "BleAdvertisementParser"

    const-string/jumbo v33, "No PDUs to process in this packet."

    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    invoke-static/range {v32 .. v34}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :cond_6
    const/16 v21, 0x1

    .line 172
    :cond_7
    :goto_1
    if-eqz v21, :cond_18

    .line 173
    const/16 p4, 0x0

    .line 211
    :goto_2
    if-eqz p4, :cond_1d

    move-object/from16 v0, p4

    iget v0, v0, Lorg/altbeacon/beacon/Beacon;->mBeaconTypeCode:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1d

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v32

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1d

    .line 213
    :try_start_0
    new-instance v9, Lorg/altbeacon/beacon/BleBeacon;

    move-object/from16 v0, p4

    invoke-direct {v9, v0}, Lorg/altbeacon/beacon/BleBeacon;-><init>(Lorg/altbeacon/beacon/Beacon;)V

    .line 215
    .local v9, "bleBeacon":Lorg/altbeacon/beacon/BleBeacon;
    const/16 v32, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/altbeacon/beacon/Identifier;

    invoke-virtual/range {v32 .. v32}, Lorg/altbeacon/beacon/Identifier;->toByteArray()[B

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/altbeacon/beacon/BleAdvertisementParser;->byteArrayToUnsignedShort([B)I

    move-result v32

    move/from16 v0, v32

    iput v0, v9, Lorg/altbeacon/beacon/BleBeacon;->mDeviceType:I

    .line 216
    const/16 v32, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/altbeacon/beacon/Identifier;

    invoke-virtual/range {v32 .. v32}, Lorg/altbeacon/beacon/Identifier;->toByteArray()[B

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/altbeacon/beacon/BleAdvertisementParser;->byteArrayToInt([B)I

    move-result v32

    move/from16 v0, v32

    iput v0, v9, Lorg/altbeacon/beacon/BleBeacon;->mDeviceId:I

    .line 217
    const/16 v32, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/altbeacon/beacon/Identifier;

    invoke-virtual/range {v32 .. v32}, Lorg/altbeacon/beacon/Identifier;->toByteArray()[B

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/altbeacon/beacon/BleAdvertisementParser;->byteArrayToInt([B)I

    move-result v32

    move/from16 v0, v32

    iput v0, v9, Lorg/altbeacon/beacon/BleBeacon;->mDeviceServiceId:I

    .line 218
    const/16 v32, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/altbeacon/beacon/Identifier;

    invoke-virtual/range {v32 .. v32}, Lorg/altbeacon/beacon/Identifier;->toByteArray()[B

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/altbeacon/beacon/BleAdvertisementParser;->byteArrayToUnsignedShort([B)I

    move-result v32

    move/from16 v0, v32

    iput v0, v9, Lorg/altbeacon/beacon/BleBeacon;->major:I

    .line 219
    const/16 v32, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/altbeacon/beacon/Identifier;

    invoke-virtual/range {v32 .. v32}, Lorg/altbeacon/beacon/Identifier;->toByteArray()[B

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/altbeacon/beacon/BleAdvertisementParser;->byteArrayToUnsignedShort([B)I

    move-result v32

    move/from16 v0, v32

    iput v0, v9, Lorg/altbeacon/beacon/BleBeacon;->minor:I

    .line 220
    const/16 v32, 0x5

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/altbeacon/beacon/Identifier;

    invoke-virtual/range {v32 .. v32}, Lorg/altbeacon/beacon/Identifier;->toByteArray()[B

    move-result-object v32

    const/16 v33, 0x0

    aget-byte v32, v32, v33

    move/from16 v0, v32

    iput-byte v0, v9, Lorg/altbeacon/beacon/BleBeacon;->mState:B

    .line 221
    const/16 v32, 0x6

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/altbeacon/beacon/Identifier;

    invoke-virtual/range {v32 .. v32}, Lorg/altbeacon/beacon/Identifier;->toByteArray()[B

    move-result-object v32

    const/16 v33, 0x0

    aget-byte v32, v32, v33

    move/from16 v0, v32

    iput-byte v0, v9, Lorg/altbeacon/beacon/BleBeacon;->mDevAttr:B

    .line 222
    const/16 v32, 0x7

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/altbeacon/beacon/Identifier;

    invoke-virtual/range {v32 .. v32}, Lorg/altbeacon/beacon/Identifier;->toByteArray()[B

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v9, Lorg/altbeacon/beacon/BleBeacon;->mRetainData:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 229
    .end local v9    # "bleBeacon":Lorg/altbeacon/beacon/BleBeacon;
    :goto_3
    return-object v9

    .line 81
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mUUid:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v35

    sub-int v34, v34, v35

    add-int/lit8 v34, v34, 0x1

    const/16 v35, 0x0

    invoke-static/range {v32 .. v35}, Lorg/altbeacon/beacon/BleAdvertisementParser;->longToByteArray(JIZ)[B

    move-result-object v28

    .line 82
    .local v28, "serviceUuidBytes":[B
    invoke-virtual/range {v26 .. v26}, Lorg/altbeacon/bluetooth/Pdu;->getStartIndex()I

    move-result v31

    .line 83
    .local v31, "uuidStartByte":I
    invoke-virtual/range {v24 .. v24}, Lorg/altbeacon/bluetooth/Pdu;->getStartIndex()I

    move-result v29

    .line 84
    const/16 v22, 0x0

    .line 85
    .local v22, "patternFound":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    add-int v32, v32, v31

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    move-object/from16 v3, v28

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/altbeacon/beacon/BleAdvertisementParser;->byteArraysMatch([BI[BI)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 86
    const/16 v22, 0x1

    .line 89
    :cond_9
    if-nez v22, :cond_f

    .line 90
    const/16 v21, 0x1

    .line 91
    const/16 p4, 0x0

    .line 98
    :cond_a
    :goto_4
    if-eqz v22, :cond_7

    .line 99
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mLayoutSize:Ljava/lang/Integer;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v33

    add-int v33, v33, v29

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mAllowPduOverflow:Ljava/lang/Boolean;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    if-eqz v32, :cond_c

    .line 103
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v32

    if-eqz v32, :cond_b

    .line 104
    const-string/jumbo v32, "BleAdvertisementParser"

    new-instance v33, Ljava/lang/StringBuilder;

    const-string/jumbo v34, "Expanding buffer because it is too short to parse: "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ", needed: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mLayoutSize:Ljava/lang/Integer;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    add-int v34, v34, v29

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    invoke-static/range {v32 .. v34}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mLayoutSize:Ljava/lang/Integer;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    add-int v32, v32, v29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/altbeacon/beacon/BleAdvertisementParser;->ensureMaxSize([BI)[B

    move-result-object p1

    .line 108
    :cond_c
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mIdentifierEndOffsets:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v32

    move/from16 v0, v32

    if-ge v14, v0, :cond_12

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mIdentifierEndOffsets:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    add-int v13, v32, v29

    .line 111
    .local v13, "endIndex":I
    invoke-virtual/range {v24 .. v24}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v32

    move/from16 v0, v32

    if-le v13, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mIdentifierVariableLengthFlags:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Boolean;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    if-eqz v32, :cond_10

    .line 112
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v32

    if-eqz v32, :cond_d

    .line 113
    const-string/jumbo v32, "BleAdvertisementParser"

    new-instance v33, Ljava/lang/StringBuilder;

    const-string/jumbo v34, "Need to truncate identifier by "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v34

    sub-int v34, v13, v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    invoke-static/range {v32 .. v34}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mIdentifierStartOffsets:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    add-int v33, v32, v29

    invoke-virtual/range {v24 .. v24}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v32

    add-int/lit8 v34, v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mIdentifierLittleEndianFlags:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Boolean;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    move-object/from16 v0, p1

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Lorg/altbeacon/beacon/Identifier;->fromBytes([BIIZ)Lorg/altbeacon/beacon/Identifier;

    move-result-object v15

    .line 118
    .local v15, "identifier":Lorg/altbeacon/beacon/Identifier;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v15    # "identifier":Lorg/altbeacon/beacon/Identifier;
    :cond_e
    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_5

    .line 93
    .end local v13    # "endIndex":I
    .end local v14    # "i":I
    :cond_f
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v32

    if-eqz v32, :cond_a

    .line 94
    const-string/jumbo v32, "BleAdvertisementParser"

    const-string/jumbo v33, "Bytes are: %s"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {p1 .. p1}, Lorg/altbeacon/beacon/BleAdvertisementParser;->bytesToHex([B)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    invoke-static/range {v32 .. v34}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 120
    .restart local v13    # "endIndex":I
    .restart local v14    # "i":I
    :cond_10
    invoke-virtual/range {v24 .. v24}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v32

    move/from16 v0, v32

    if-le v13, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mAllowPduOverflow:Ljava/lang/Boolean;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    if-nez v32, :cond_11

    .line 121
    const/16 v21, 0x1

    .line 122
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v32

    if-eqz v32, :cond_e

    .line 123
    const-string/jumbo v32, "BleAdvertisementParser"

    new-instance v33, Ljava/lang/StringBuilder;

    const-string/jumbo v34, "Cannot parse identifier "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " because PDU is too short.  endIndex: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " PDU endIndex: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v24 .. v24}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    invoke-static/range {v32 .. v34}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 127
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mIdentifierStartOffsets:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    add-int v33, v32, v29

    add-int/lit8 v34, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mIdentifierLittleEndianFlags:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Boolean;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    move-object/from16 v0, p1

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Lorg/altbeacon/beacon/Identifier;->fromBytes([BIIZ)Lorg/altbeacon/beacon/Identifier;

    move-result-object v15

    .line 128
    .restart local v15    # "identifier":Lorg/altbeacon/beacon/Identifier;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 131
    .end local v13    # "endIndex":I
    .end local v15    # "identifier":Lorg/altbeacon/beacon/Identifier;
    :cond_12
    const/4 v14, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mDataEndOffsets:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v32

    move/from16 v0, v32

    if-ge v14, v0, :cond_15

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mDataEndOffsets:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    add-int v13, v32, v29

    .line 133
    .restart local v13    # "endIndex":I
    invoke-virtual/range {v24 .. v24}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v32

    move/from16 v0, v32

    if-le v13, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mAllowPduOverflow:Ljava/lang/Boolean;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    if-nez v32, :cond_14

    .line 134
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v32

    if-eqz v32, :cond_13

    .line 135
    const-string/jumbo v32, "BleAdvertisementParser"

    new-instance v33, Ljava/lang/StringBuilder;

    const-string/jumbo v34, "Cannot parse data field "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " because PDU is too short.  endIndex: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " PDU endIndex: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v24 .. v24}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ".  Setting value to 0"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    invoke-static/range {v32 .. v34}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :cond_13
    new-instance v32, Ljava/lang/Long;

    const-wide/16 v34, 0x0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :goto_8
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_7

    .line 140
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mDataStartOffsets:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    add-int v33, v32, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mDataLittleEndianFlags:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Boolean;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v33

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v13, v3}, Lorg/altbeacon/beacon/BleAdvertisementParser;->byteArrayToFormattedString([BIIZ)Ljava/lang/String;

    move-result-object v11

    .line 141
    .local v11, "dataString":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 145
    .end local v11    # "dataString":Ljava/lang/String;
    .end local v13    # "endIndex":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mPowerStartOffset:Ljava/lang/Integer;

    move-object/from16 v32, v0

    if-eqz v32, :cond_7

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mPowerEndOffset:Ljava/lang/Integer;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    add-int v13, v32, v29

    .line 149
    .restart local v13    # "endIndex":I
    :try_start_1
    invoke-virtual/range {v24 .. v24}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v32

    move/from16 v0, v32

    if-le v13, v0, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mAllowPduOverflow:Ljava/lang/Boolean;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    if-nez v32, :cond_16

    .line 150
    const/16 v21, 0x1

    .line 151
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v32

    if-eqz v32, :cond_7

    .line 152
    const-string/jumbo v32, "BleAdvertisementParser"

    new-instance v33, Ljava/lang/StringBuilder;

    const-string/jumbo v34, "Cannot parse power field because PDU is too short.  endIndex: "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " PDU endIndex: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v24 .. v24}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    invoke-static/range {v32 .. v34}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 165
    :catch_0
    move-exception v12

    .line 166
    .local v12, "e":Ljava/lang/Exception;
    const-string/jumbo v32, "BleAdvertisementParser"

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string/jumbo v35, "parse ble data error,"

    aput-object v35, v33, v34

    const/16 v34, 0x1

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v33 .. v33}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 156
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_16
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mPowerStartOffset:Ljava/lang/Integer;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    add-int v32, v32, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mPowerEndOffset:Ljava/lang/Integer;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v33

    add-int v33, v33, v29

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/altbeacon/beacon/BleAdvertisementParser;->byteArrayToFormattedString([BIIZ)Ljava/lang/String;

    move-result-object v27

    .line 157
    .local v27, "powerString":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mDBmCorrection:Ljava/lang/Integer;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v33

    add-int v30, v32, v33

    .line 159
    .local v30, "txPower":I
    const/16 v32, 0x7f

    move/from16 v0, v30

    move/from16 v1, v32

    if-le v0, v1, :cond_17

    .line 160
    move/from16 v0, v30

    add-int/lit16 v0, v0, -0x100

    move/from16 v30, v0

    .line 162
    :cond_17
    move/from16 v0, v30

    move-object/from16 v1, p4

    iput v0, v1, Lorg/altbeacon/beacon/Beacon;->mTxPower:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 176
    .end local v13    # "endIndex":I
    .end local v14    # "i":I
    .end local v22    # "patternFound":Z
    .end local v27    # "powerString":Ljava/lang/String;
    .end local v28    # "serviceUuidBytes":[B
    .end local v30    # "txPower":I
    .end local v31    # "uuidStartByte":I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mUUid:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p4

    iput v0, v1, Lorg/altbeacon/beacon/Beacon;->mServiceUuid:I

    .line 177
    move-object/from16 v0, p0

    iget v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mUUid:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/altbeacon/beacon/BleAdvertisementParser;->mServiceUuid:Ljava/lang/Long;

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    add-int v32, v32, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v33

    add-int v33, v33, v29

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/altbeacon/beacon/BleAdvertisementParser;->byteArrayToFormattedString([BIIZ)Ljava/lang/String;

    move-result-object v8

    .line 179
    .local v8, "beaconTypeString":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 183
    .local v7, "beaconTypeCode":I
    add-int/lit8 v32, v29, 0x1

    const/16 v33, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v29

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/altbeacon/beacon/BleAdvertisementParser;->byteArrayToFormattedString([BIIZ)Ljava/lang/String;

    move-result-object v19

    .line 184
    .local v19, "manufacturerString":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 186
    .local v18, "manufacturer":I
    const/16 v17, 0x0

    .line 187
    .local v17, "macAddress":Ljava/lang/String;
    const/16 v20, 0x0

    .line 188
    .local v20, "name":Ljava/lang/String;
    if-eqz p3, :cond_19

    .line 189
    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v17

    .line 190
    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v20

    .line 193
    :cond_19
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    iput-object v0, v1, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    .line 194
    move-object/from16 v0, p4

    iput-object v10, v0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    .line 195
    move/from16 v0, p2

    move-object/from16 v1, p4

    iput v0, v1, Lorg/altbeacon/beacon/Beacon;->mRssi:I

    .line 196
    move-object/from16 v0, p4

    iput v7, v0, Lorg/altbeacon/beacon/Beacon;->mBeaconTypeCode:I

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mServiceUuid:Ljava/lang/Long;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1b

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mServiceUuid:Ljava/lang/Long;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p4

    iput v0, v1, Lorg/altbeacon/beacon/Beacon;->mServiceUuid:I

    .line 204
    :goto_9
    move-object/from16 v0, v17

    move-object/from16 v1, p4

    iput-object v0, v1, Lorg/altbeacon/beacon/Beacon;->mBluetoothAddress:Ljava/lang/String;

    .line 205
    move-object/from16 v0, v20

    move-object/from16 v1, p4

    iput-object v0, v1, Lorg/altbeacon/beacon/Beacon;->mBluetoothName:Ljava/lang/String;

    .line 206
    move/from16 v0, v18

    move-object/from16 v1, p4

    iput v0, v1, Lorg/altbeacon/beacon/Beacon;->mManufacturer:I

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mIdentifier:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p4

    iput-object v0, v1, Lorg/altbeacon/beacon/Beacon;->mParserIdentifier:Ljava/lang/String;

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->extraParsers:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v32

    if-gtz v32, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mExtraFrame:Ljava/lang/Boolean;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    if-eqz v32, :cond_1c

    :cond_1a
    const/16 v32, 0x1

    :goto_a
    move/from16 v0, v32

    move-object/from16 v1, p4

    iput-boolean v0, v1, Lorg/altbeacon/beacon/Beacon;->mMultiFrameBeacon:Z

    goto/16 :goto_2

    .line 201
    :cond_1b
    const/16 v32, -0x1

    move/from16 v0, v32

    move-object/from16 v1, p4

    iput v0, v1, Lorg/altbeacon/beacon/Beacon;->mServiceUuid:I

    goto :goto_9

    .line 208
    :cond_1c
    const/16 v32, 0x0

    goto :goto_a

    .line 224
    .end local v7    # "beaconTypeCode":I
    .end local v8    # "beaconTypeString":Ljava/lang/String;
    .end local v17    # "macAddress":Ljava/lang/String;
    .end local v18    # "manufacturer":I
    .end local v19    # "manufacturerString":Ljava/lang/String;
    .end local v20    # "name":Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 225
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v32, "BleAdvertisementParser"

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string/jumbo v35, "create ble beacon error,"

    aput-object v35, v33, v34

    const/16 v34, 0x1

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v33 .. v33}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 229
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_1d
    const/4 v9, 0x0

    goto/16 :goto_3
.end method

.method public getServiceUuid()Ljava/lang/Long;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 334
    iget v0, p0, Lorg/altbeacon/beacon/BleAdvertisementParser;->mUUid:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
