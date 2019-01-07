.class public final Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;
.super Ljava/lang/Object;
.source "ScanRecord.java"


# static fields
.field private static final DATA_TYPE_FLAGS:I = 0x1

.field private static final DATA_TYPE_LOCAL_NAME_COMPLETE:I = 0x9

.field private static final DATA_TYPE_LOCAL_NAME_SHORT:I = 0x8

.field private static final DATA_TYPE_MANUFACTURER_SPECIFIC_DATA:I = 0xff

.field private static final DATA_TYPE_SERVICE_DATA:I = 0x16

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_COMPLETE:I = 0x7

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_PARTIAL:I = 0x6

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_COMPLETE:I = 0x3

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_PARTIAL:I = 0x2

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_COMPLETE:I = 0x5

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_PARTIAL:I = 0x4

.field private static final DATA_TYPE_TX_POWER_LEVEL:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ScanRecord"


# instance fields
.field private final mAdvertiseFlags:I

.field private final mBytes:[B

.field private final mDeviceName:Ljava/lang/String;

.field private final mManufacturerSpecificData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[B>;"
        }
    .end annotation
.end field

.field private final mServiceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTxPowerLevel:I


# direct methods
.method private constructor <init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    .locals 1
    .param p4, "advertiseFlags"    # I
    .param p5, "txPowerLevel"    # I
    .param p6, "localName"    # Ljava/lang/String;
    .param p7, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray",
            "<[B>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local p3, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->mServiceUuids:Ljava/util/List;

    .line 139
    iput-object p2, p0, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 140
    iput-object p3, p0, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->mServiceData:Ljava/util/Map;

    .line 141
    iput-object p6, p0, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->mDeviceName:Ljava/lang/String;

    .line 142
    iput p4, p0, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->mAdvertiseFlags:I

    .line 143
    iput p5, p0, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->mTxPowerLevel:I

    .line 144
    iput-object p7, p0, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->mBytes:[B

    .line 145
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static extractBytes([BII)[B
    .locals 2
    .param p0, "scanRecord"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    .line 276
    new-array v0, p2, [B

    .line 277
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    return-object v0
.end method

.method public static parseFromBytes([B)Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;
    .locals 27
    .param p0, "scanRecord"    # [B

    .prologue
    .line 159
    if-nez p0, :cond_0

    .line 160
    const/4 v3, 0x0

    .line 245
    :goto_0
    return-object v3

    .line 163
    :cond_0
    const/16 v18, 0x0

    .line 164
    .local v18, "currentPos":I
    const/4 v7, -0x1

    .line 165
    .local v7, "advertiseFlag":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v4, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 167
    .local v9, "localName":Ljava/lang/String;
    const/high16 v8, -0x80000000

    .line 169
    .local v8, "txPowerLevel":I
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 170
    .local v5, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .local v6, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move/from16 v19, v18

    .line 173
    .end local v18    # "currentPos":I
    .local v19, "currentPos":I
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    array-length v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v0, v19

    if-ge v0, v3, :cond_1

    .line 175
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "currentPos":I
    .restart local v18    # "currentPos":I
    :try_start_1
    aget-byte v3, p0, v19
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    and-int/lit16 v0, v3, 0xff

    move/from16 v22, v0

    .line 176
    .local v22, "length":I
    if-eqz v22, :cond_2

    .line 180
    add-int/lit8 v20, v22, -0x1

    .line 182
    .local v20, "dataLength":I
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "currentPos":I
    .restart local v19    # "currentPos":I
    :try_start_2
    aget-byte v3, p0, v18

    and-int/lit16 v0, v3, 0xff

    move/from16 v21, v0

    .line 183
    .local v21, "fieldType":I
    sparse-switch v21, :sswitch_data_0

    .line 233
    :goto_2
    add-int v18, v19, v20

    .end local v19    # "currentPos":I
    .restart local v18    # "currentPos":I
    move/from16 v19, v18

    .line 234
    .end local v18    # "currentPos":I
    .restart local v19    # "currentPos":I
    goto :goto_1

    .line 185
    :sswitch_0
    aget-byte v3, p0, v19

    and-int/lit16 v7, v3, 0xff

    .line 186
    goto :goto_2

    .line 189
    :sswitch_1
    const/4 v3, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 242
    .end local v9    # "localName":Ljava/lang/String;
    .end local v20    # "dataLength":I
    .end local v21    # "fieldType":I
    .end local v22    # "length":I
    :catch_0
    move-exception v3

    move/from16 v18, v19

    .end local v19    # "currentPos":I
    .restart local v18    # "currentPos":I
    :goto_3
    const-string/jumbo v3, "ScanRecord"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "unable to parse scan record: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v10, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/high16 v15, -0x80000000

    const/16 v16, 0x0

    move-object/from16 v17, p0

    invoke-direct/range {v10 .. v17}, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V

    move-object v3, v10

    goto :goto_0

    .line 194
    .end local v18    # "currentPos":I
    .restart local v9    # "localName":Ljava/lang/String;
    .restart local v19    # "currentPos":I
    .restart local v20    # "dataLength":I
    .restart local v21    # "fieldType":I
    .restart local v22    # "length":I
    :sswitch_2
    const/4 v3, 0x4

    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_2

    .line 199
    :sswitch_3
    const/16 v3, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_2

    .line 204
    :sswitch_4
    new-instance v9, Ljava/lang/String;

    .line 205
    .end local v9    # "localName":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->extractBytes([BII)[B

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/lang/String;-><init>([B)V

    .line 206
    .restart local v9    # "localName":Ljava/lang/String;
    goto :goto_2

    .line 208
    :sswitch_5
    aget-byte v8, p0, v19

    .line 209
    goto :goto_2

    .line 214
    :sswitch_6
    const/4 v3, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1, v3}, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->extractBytes([BII)[B

    move-result-object v26

    .line 216
    .local v26, "serviceDataUuidBytes":[B
    add-int/lit8 v3, v19, 0x2

    add-int/lit8 v10, v20, -0x2

    move-object/from16 v0, p0

    invoke-static {v0, v3, v10}, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->extractBytes([BII)[B

    move-result-object v25

    .line 218
    .local v25, "serviceDataArray":[B
    invoke-static/range {v26 .. v26}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->bytesToHexStringInReverse([B)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v25 .. v25}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 223
    .end local v25    # "serviceDataArray":[B
    .end local v26    # "serviceDataUuidBytes":[B
    :sswitch_7
    add-int/lit8 v3, v19, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    aget-byte v10, p0, v19

    and-int/lit16 v10, v10, 0xff

    add-int v24, v3, v10

    .line 225
    .local v24, "manufacturerId":I
    add-int/lit8 v3, v19, 0x2

    add-int/lit8 v10, v20, -0x2

    move-object/from16 v0, p0

    invoke-static {v0, v3, v10}, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->extractBytes([BII)[B

    move-result-object v23

    .line 227
    .local v23, "manufacturerDataBytes":[B
    move/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .end local v20    # "dataLength":I
    .end local v21    # "fieldType":I
    .end local v22    # "length":I
    .end local v23    # "manufacturerDataBytes":[B
    .end local v24    # "manufacturerId":I
    :cond_1
    move/from16 v18, v19

    .line 236
    .end local v19    # "currentPos":I
    .restart local v18    # "currentPos":I
    :cond_2
    :try_start_4
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 237
    const/4 v4, 0x0

    .line 239
    :cond_3
    new-instance v3, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;

    move-object/from16 v10, p0

    invoke-direct/range {v3 .. v10}, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 242
    :catch_1
    move-exception v3

    goto/16 :goto_3

    .line 183
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_4
        0xa -> :sswitch_5
        0x16 -> :sswitch_6
        0xff -> :sswitch_7
    .end sparse-switch
.end method

.method private static parseServiceUuid([BIIILjava/util/List;)I
    .locals 2
    .param p0, "scanRecord"    # [B
    .param p1, "currentPos"    # I
    .param p2, "dataLength"    # I
    .param p3, "uuidLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 260
    .local p4, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    if-lez p2, :cond_2

    .line 261
    invoke-static {p0, p1, p3}, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->extractBytes([BII)[B

    move-result-object v0

    .line 263
    .local v0, "uuidBytes":[B
    const/4 v1, 0x2

    if-eq p3, v1, :cond_0

    const/4 v1, 0x4

    if-ne p3, v1, :cond_1

    .line 264
    :cond_0
    invoke-static {v0}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->bytesToHexStringInReverse([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    :goto_1
    sub-int/2addr p2, p3

    .line 269
    add-int/2addr p1, p3

    .line 270
    goto :goto_0

    .line 266
    :cond_1
    invoke-static {v0}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 271
    .end local v0    # "uuidBytes":[B
    :cond_2
    return p1
.end method


# virtual methods
.method public final getAdvertiseFlags()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->mAdvertiseFlags:I

    return v0
.end method

.method public final getBytes()[B
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->mBytes:[B

    return-object v0
.end method

.method public final getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getManufacturerSpecificData()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    return-object v0
.end method

.method public final getManufacturerSpecificData(I)[B
    .locals 1
    .param p1, "manufacturerId"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final getServiceData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->mServiceData:Ljava/util/Map;

    return-object v0
.end method

.method public final getServiceUuids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->mServiceUuids:Ljava/util/List;

    return-object v0
.end method

.method public final getTxPowerLevel()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->mTxPowerLevel:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ScanRecord [mAdvertiseFlags="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->mAdvertiseFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mServiceUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->mServiceUuids:Ljava/util/List;

    invoke-static {v1}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothLeUtils;->toString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mManufacturerSpecificData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 252
    invoke-static {v1}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothLeUtils;->toString(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mServiceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->mServiceData:Ljava/util/Map;

    .line 253
    invoke-static {v1}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothLeUtils;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTxPowerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->mTxPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
