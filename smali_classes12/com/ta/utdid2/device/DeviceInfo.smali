.class public Lcom/ta/utdid2/device/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field static final CREATE_DEVICE_METADATA_LOCK:Ljava/lang/Object;

.field private static mDevice:Lcom/ta/utdid2/device/Device;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/ta/utdid2/device/DeviceInfo;->mDevice:Lcom/ta/utdid2/device/Device;

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/device/DeviceInfo;->CREATE_DEVICE_METADATA_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDevice(Landroid/content/Context;)Lcom/ta/utdid2/device/Device;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const-class v2, Lcom/ta/utdid2/device/DeviceInfo;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/ta/utdid2/device/DeviceInfo;->mDevice:Lcom/ta/utdid2/device/Device;

    if-eqz v1, :cond_0

    .line 69
    sget-object v0, Lcom/ta/utdid2/device/DeviceInfo;->mDevice:Lcom/ta/utdid2/device/Device;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :goto_0
    monitor-exit v2

    return-object v0

    .line 71
    :cond_0
    if-eqz p0, :cond_1

    .line 72
    :try_start_1
    invoke-static {p0}, Lcom/ta/utdid2/device/DeviceInfo;->initDeviceMetadata(Landroid/content/Context;)Lcom/ta/utdid2/device/Device;

    move-result-object v0

    .line 73
    .local v0, "device":Lcom/ta/utdid2/device/Device;
    sput-object v0, Lcom/ta/utdid2/device/DeviceInfo;->mDevice:Lcom/ta/utdid2/device/Device;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    .end local v0    # "device":Lcom/ta/utdid2/device/Device;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getMetadataCheckSum(Lcom/ta/utdid2/device/Device;)J
    .locals 8
    .param p0, "device"    # Lcom/ta/utdid2/device/Device;

    .prologue
    .line 17
    if-eqz p0, :cond_0

    .line 18
    const-string/jumbo v2, "%s%s%s%s%s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 19
    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getUtdid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 20
    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getCreateTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getImsi()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 21
    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getImei()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 18
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "checkSumContent":Ljava/lang/String;
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 23
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 24
    .local v0, "adler32":Ljava/util/zip/Adler32;
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/zip/Adler32;->update([B)V

    .line 26
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v2

    .line 29
    .end local v0    # "adler32":Ljava/util/zip/Adler32;
    .end local v1    # "checkSumContent":Ljava/lang/String;
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private static initDeviceMetadata(Landroid/content/Context;)Lcom/ta/utdid2/device/Device;
    .locals 10
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 39
    if-eqz p0, :cond_2

    .line 40
    sget-object v7, Lcom/ta/utdid2/device/DeviceInfo;->CREATE_DEVICE_METADATA_LOCK:Ljava/lang/Object;

    monitor-enter v7

    .line 41
    :try_start_0
    invoke-static {p0}, Lcom/ta/utdid2/device/UTUtdid;->instance(Landroid/content/Context;)Lcom/ta/utdid2/device/UTUtdid;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ta/utdid2/device/UTUtdid;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, "utdid":Ljava/lang/String;
    invoke-static {v3}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 44
    const-string/jumbo v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 45
    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 47
    :cond_0
    new-instance v0, Lcom/ta/utdid2/device/Device;

    invoke-direct {v0}, Lcom/ta/utdid2/device/Device;-><init>()V

    .line 48
    .local v0, "device":Lcom/ta/utdid2/device/Device;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 49
    .local v4, "timestamp":J
    invoke-static {p0}, Lcom/ta/utdid2/android/utils/PhoneInfoUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "imei":Ljava/lang/String;
    invoke-static {p0}, Lcom/ta/utdid2/android/utils/PhoneInfoUtils;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "imsi":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/ta/utdid2/device/Device;->setDeviceId(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/ta/utdid2/device/Device;->setImei(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, v4, v5}, Lcom/ta/utdid2/device/Device;->setCreateTimestamp(J)V

    .line 54
    invoke-virtual {v0, v2}, Lcom/ta/utdid2/device/Device;->setImsi(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/Device;->setUtdid(Ljava/lang/String;)V

    .line 56
    invoke-static {v0}, Lcom/ta/utdid2/device/DeviceInfo;->getMetadataCheckSum(Lcom/ta/utdid2/device/Device;)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/ta/utdid2/device/Device;->setCheckSum(J)V

    .line 57
    monitor-exit v7

    .line 61
    .end local v0    # "device":Lcom/ta/utdid2/device/Device;
    .end local v1    # "imei":Ljava/lang/String;
    .end local v2    # "imsi":Ljava/lang/String;
    .end local v3    # "utdid":Ljava/lang/String;
    .end local v4    # "timestamp":J
    :goto_0
    return-object v0

    .line 59
    .restart local v3    # "utdid":Ljava/lang/String;
    :cond_1
    monitor-exit v7

    .line 61
    .end local v3    # "utdid":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method
