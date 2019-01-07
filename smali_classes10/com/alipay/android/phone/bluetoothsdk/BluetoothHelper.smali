.class public Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;
.super Ljava/lang/Object;
.source "BluetoothHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothHelper"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "src"    # [B

    .prologue
    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    array-length v4, p0

    if-gtz v4, :cond_1

    .line 62
    :cond_0
    const-string/jumbo v4, ""

    .line 72
    :goto_0
    return-object v4

    .line 64
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_3

    .line 65
    aget-byte v4, p0, v1

    and-int/lit16 v3, v4, 0xff

    .line 66
    .local v3, "v":I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "hv":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 68
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 72
    .end local v0    # "hv":Ljava/lang/String;
    .end local v3    # "v":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static bytesToHexStringInReverse([B)Ljava/lang/String;
    .locals 1
    .param p0, "src"    # [B

    .prologue
    .line 76
    invoke-static {p0}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->littleToBig([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static charToByte(C)B
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 123
    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public static closeBluetooth()Z
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 53
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v1

    .line 56
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static extractBytes([BII)[B
    .locals 2
    .param p0, "scanRecord"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    .line 168
    new-array v0, p2, [B

    .line 169
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    return-object v0
.end method

.method public static getBluetoothState()Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;
    .locals 3

    .prologue
    .line 29
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 30
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 31
    sget-object v2, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;->UNKNOWN:Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

    .line 39
    :goto_0
    return-object v2

    .line 33
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    .line 34
    .local v1, "state":I
    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 35
    sget-object v2, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;->ON:Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

    goto :goto_0

    .line 36
    :cond_1
    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    .line 37
    sget-object v2, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;->RESETTING:Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

    goto :goto_0

    .line 39
    :cond_2
    sget-object v2, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;->OFF:Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

    goto :goto_0
.end method

.method public static getManufacturerData([B)Ljava/lang/String;
    .locals 11
    .param p0, "scanRecord"    # [B

    .prologue
    .line 127
    if-nez p0, :cond_0

    .line 128
    const-string/jumbo v4, ""

    .line 163
    :goto_0
    return-object v4

    .line 131
    :cond_0
    const/4 v0, 0x0

    .local v0, "currentPos":I
    move v1, v0

    .line 133
    .end local v0    # "currentPos":I
    .local v1, "currentPos":I
    :goto_1
    :try_start_0
    array-length v7, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v1, v7, :cond_1

    .line 135
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "currentPos":I
    .restart local v0    # "currentPos":I
    :try_start_1
    aget-byte v7, p0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    and-int/lit16 v5, v7, 0xff

    .line 136
    .local v5, "length":I
    if-eqz v5, :cond_2

    .line 140
    add-int/lit8 v2, v5, -0x1

    .line 142
    .local v2, "dataLength":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "currentPos":I
    .restart local v1    # "currentPos":I
    :try_start_2
    aget-byte v7, p0, v0

    and-int/lit16 v3, v7, 0xff

    .line 143
    .local v3, "fieldType":I
    packed-switch v3, :pswitch_data_0

    .line 156
    add-int v0, v1, v2

    .end local v1    # "currentPos":I
    .restart local v0    # "currentPos":I
    move v1, v0

    .line 157
    .end local v0    # "currentPos":I
    .restart local v1    # "currentPos":I
    goto :goto_1

    .line 147
    :pswitch_0
    invoke-static {p0, v1, v2}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->extractBytes([BII)[B

    move-result-object v6

    .line 149
    .local v6, "manufacturerDataBytes":[B
    invoke-static {v6}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "hexString":Ljava/lang/String;
    const-string/jumbo v7, "BluetoothHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "manu data:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 161
    .end local v2    # "dataLength":I
    .end local v3    # "fieldType":I
    .end local v4    # "hexString":Ljava/lang/String;
    .end local v5    # "length":I
    .end local v6    # "manufacturerDataBytes":[B
    :catch_0
    move-exception v7

    move v0, v1

    .end local v1    # "currentPos":I
    .restart local v0    # "currentPos":I
    :goto_2
    invoke-static {}, Lika;->d()Likq;

    move-result-object v7

    const-string/jumbo v8, "BluetoothHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "unable to parse scan record: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string/jumbo v4, ""

    goto :goto_0

    .end local v0    # "currentPos":I
    .restart local v1    # "currentPos":I
    :cond_1
    move v0, v1

    .line 159
    .end local v1    # "currentPos":I
    .restart local v0    # "currentPos":I
    :cond_2
    const-string/jumbo v4, ""

    goto :goto_0

    .line 161
    :catch_1
    move-exception v7

    goto :goto_2

    .line 143
    :pswitch_data_0
    .packed-switch 0xff
        :pswitch_0
    .end packed-switch
.end method

.method public static getUUIDFromString(Ljava/lang/String;)Ljava/util/UUID;
    .locals 2
    .param p0, "uuidString"    # Ljava/lang/String;

    .prologue
    .line 176
    :try_start_0
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 185
    .local v0, "uuid":Ljava/util/UUID;
    :goto_0
    return-object v0

    .end local v0    # "uuid":Ljava/util/UUID;
    :catch_0
    move-exception v1

    .line 180
    :try_start_1
    invoke-static {p0}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->hexStringToBytesInReverse(Ljava/lang/String;)[B

    move-result-object v1

    .line 179
    invoke-static {v1}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .restart local v0    # "uuid":Ljava/util/UUID;
    goto :goto_0

    .line 182
    .end local v0    # "uuid":Ljava/util/UUID;
    :catch_1
    move-exception v1

    const/4 v0, 0x0

    .restart local v0    # "uuid":Ljava/util/UUID;
    goto :goto_0
.end method

.method public static hasLocationPermission(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 189
    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v3, v2, v0

    invoke-static {v2}, Ligd;->a([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v2, v0

    .line 190
    invoke-static {v2}, Ligd;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "hexString"    # Ljava/lang/String;

    .prologue
    .line 85
    if-eqz p0, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 86
    :cond_0
    const/4 v0, 0x0

    .line 99
    :cond_1
    return-object v0

    .line 88
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 89
    const-string/jumbo v5, "0X"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "0x"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 90
    :cond_3
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 92
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v3, v5, 0x2

    .line 93
    .local v3, "length":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 94
    .local v1, "hexChars":[C
    new-array v0, v3, [B

    .line 95
    .local v0, "d":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 96
    mul-int/lit8 v4, v2, 0x2

    .line 97
    .local v4, "pos":I
    aget-char v5, v1, v4

    invoke-static {v5}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->charToByte(C)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v4, 0x1

    aget-char v6, v1, v6

    invoke-static {v6}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->charToByte(C)B

    move-result v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static hexStringToBytesInReverse(Ljava/lang/String;)[B
    .locals 1
    .param p0, "hexString"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {p0}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->littleToBig([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static isSupportBLE(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.hardware.bluetooth_le"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 24
    .local v0, "support":Z
    const-string/jumbo v1, "BluetoothHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "support ble:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return v0
.end method

.method private static littleToBig([B)[B
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 107
    if-nez p0, :cond_0

    .line 108
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 110
    :cond_0
    array-length v2, p0

    new-array v1, v2, [B

    .line 111
    .local v1, "temp":[B
    array-length v2, p0

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 112
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aget-byte v2, p0, v2

    aput-byte v2, v1, v0

    .line 111
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 114
    :cond_1
    return-object v1
.end method

.method public static openBluetooth()Z
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 45
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v1

    .line 48
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
