.class public Lcom/ta/audid/store/SdcardDeviceModle;
.super Ljava/lang/Object;
.source "SdcardDeviceModle.java"


# static fields
.field private static final MODULE_GSID:Ljava/lang/String; = "gsid"

.field private static final MODULE_IMEI:Ljava/lang/String; = "imei"

.field private static final MODULE_IMSI:Ljava/lang/String; = "imsi"

.field private static mSdcardDeviceModle:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkSdcardDeviceModle()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ta/audid/Variables;->getContext()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_0

    .line 124
    .local v1, "content":Ljava/lang/String;
    .local v2, "decodedContent":Ljava/lang/String;
    :goto_0
    return v4

    .line 110
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "decodedContent":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/ta/audid/upload/UtdidKeyFile;->readSdcardDeviceModleFile()Ljava/lang/String;

    move-result-object v1

    .line 111
    .restart local v1    # "content":Ljava/lang/String;
    invoke-static {v1}, Lcom/ta/audid/store/UtdidContentUtil;->getDecodedContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .restart local v2    # "decodedContent":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/ta/audid/utils/JsonUtils;->jsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 114
    sput-object v5, Lcom/ta/audid/store/SdcardDeviceModle;->mSdcardDeviceModle:Ljava/util/Map;

    const-string/jumbo v6, "gsid"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 115
    .local v3, "gsid":Ljava/lang/String;
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ta/audid/Variables;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/ta/audid/collect/DeviceInfo2;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "androidid":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 117
    const/4 v4, 0x1

    goto :goto_0

    .line 119
    :cond_1
    invoke-static {}, Lcom/ta/audid/store/SdcardDeviceModle;->clearSdcardDeviceModle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    .end local v0    # "androidid":Ljava/lang/String;
    .end local v3    # "gsid":Ljava/lang/String;
    :catch_0
    move-exception v5

    invoke-static {}, Lcom/ta/audid/store/SdcardDeviceModle;->clearSdcardDeviceModle()V

    goto :goto_0
.end method

.method private static clearSdcardDeviceModle()V
    .locals 1

    .prologue
    .line 97
    :try_start_0
    sget-object v0, Lcom/ta/audid/store/SdcardDeviceModle;->mSdcardDeviceModle:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 98
    const/4 v0, 0x0

    sput-object v0, Lcom/ta/audid/store/SdcardDeviceModle;->mSdcardDeviceModle:Ljava/util/Map;

    .line 99
    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/ta/audid/upload/UtdidKeyFile;->writeSdcardDeviceModleFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static declared-synchronized getModule(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "module"    # Ljava/lang/String;

    .prologue
    .line 79
    const-class v1, Lcom/ta/audid/store/SdcardDeviceModle;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 80
    const-string/jumbo v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :goto_0
    monitor-exit v1

    return-object v0

    .line 83
    :cond_0
    :try_start_1
    sget-object v0, Lcom/ta/audid/store/SdcardDeviceModle;->mSdcardDeviceModle:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 84
    sget-object v0, Lcom/ta/audid/store/SdcardDeviceModle;->mSdcardDeviceModle:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 86
    :cond_1
    invoke-static {}, Lcom/ta/audid/store/SdcardDeviceModle;->checkSdcardDeviceModle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    sget-object v0, Lcom/ta/audid/store/SdcardDeviceModle;->mSdcardDeviceModle:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 89
    :cond_2
    invoke-static {}, Lcom/ta/audid/store/SdcardDeviceModle;->clearSdcardDeviceModle()V

    .line 90
    const-string/jumbo v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getModuleImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    :try_start_0
    const-string/jumbo v0, "imei"

    invoke-static {v0}, Lcom/ta/audid/store/SdcardDeviceModle;->getModule(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getModuleImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    :try_start_0
    const-string/jumbo v0, "imsi"

    invoke-static {v0}, Lcom/ta/audid/store/SdcardDeviceModle;->getModule(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static declared-synchronized writeSdcardDeviceModle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "imei"    # Ljava/lang/String;
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v5, Lcom/ta/audid/store/SdcardDeviceModle;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ta/audid/Variables;->getContext()Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 45
    .local v2, "context":Landroid/content/Context;
    if-nez v2, :cond_1

    .line 76
    :cond_0
    :goto_0
    monitor-exit v5

    return-void

    .line 50
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/ta/audid/store/SdcardDeviceModle;->checkSdcardDeviceModle()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 52
    sget-object v4, Lcom/ta/audid/store/SdcardDeviceModle;->mSdcardDeviceModle:Ljava/util/Map;

    const-string/jumbo v6, "imei"

    invoke-interface {v4, v6, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 55
    sget-object v4, Lcom/ta/audid/store/SdcardDeviceModle;->mSdcardDeviceModle:Ljava/util/Map;

    const-string/jumbo v6, "imsi"

    invoke-interface {v4, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    .line 58
    :cond_3
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/ta/audid/store/SdcardDeviceModle;->mSdcardDeviceModle:Ljava/util/Map;

    .line 59
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 60
    sget-object v4, Lcom/ta/audid/store/SdcardDeviceModle;->mSdcardDeviceModle:Ljava/util/Map;

    const-string/jumbo v6, "imei"

    invoke-interface {v4, v6, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 63
    sget-object v4, Lcom/ta/audid/store/SdcardDeviceModle;->mSdcardDeviceModle:Ljava/util/Map;

    const-string/jumbo v6, "imsi"

    invoke-interface {v4, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_5
    invoke-static {v2}, Lcom/ta/audid/collect/DeviceInfo2;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "androidid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 67
    sget-object v4, Lcom/ta/audid/store/SdcardDeviceModle;->mSdcardDeviceModle:Ljava/util/Map;

    const-string/jumbo v6, "gsid"

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_6
    new-instance v4, Lorg/json/JSONObject;

    sget-object v6, Lcom/ta/audid/store/SdcardDeviceModle;->mSdcardDeviceModle:Ljava/util/Map;

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "content":Ljava/lang/String;
    invoke-static {v1}, Lcom/ta/audid/store/UtdidContentUtil;->getEncodedContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "encodedContent":Ljava/lang/String;
    invoke-static {v3}, Lcom/ta/audid/upload/UtdidKeyFile;->writeSdcardDeviceModleFile(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 44
    .end local v0    # "androidid":Ljava/lang/String;
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "encodedContent":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
