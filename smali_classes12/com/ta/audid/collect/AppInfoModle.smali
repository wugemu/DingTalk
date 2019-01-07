.class public Lcom/ta/audid/collect/AppInfoModle;
.super Ljava/lang/Object;
.source "AppInfoModle.java"


# static fields
.field private static final A10_TIMESTAMP:Ljava/lang/String; = "A10"

.field private static final A11_CHANNEL:Ljava/lang/String; = "A11"

.field private static final A13_TAOBAO_NICKNAME:Ljava/lang/String; = "A13"

.field private static final A14_TAOBAO_USERID:Ljava/lang/String; = "A14"

.field private static final A15_SDKVERSION:Ljava/lang/String; = "A15"

.field private static final A1_APP_KEY:Ljava/lang/String; = "A1"

.field private static final A2_APP_VERSION:Ljava/lang/String; = "A2"

.field private static final A3_TARGET_SDK_VERSION:Ljava/lang/String; = "A3"

.field private static final A4_WRITE_EXTERNAL_STORAGE:Ljava/lang/String; = "A4"

.field private static final A5_READ_PHONE_STATE:Ljava/lang/String; = "A5"

.field private static final A6_ACCESS_WIFI_STATE:Ljava/lang/String; = "A6"

.field private static final A7_CUR_PROCCESS_ID:Ljava/lang/String; = "A7"

.field private static final A8_CUR_PROCCESS_NAME:Ljava/lang/String; = "A8"

.field private static final A9_APP_NAME:Ljava/lang/String; = "A9"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAppInfoModle(Landroid/content/Context;)Ljava/util/Map;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    .local v0, "hashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "A1"

    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ta/audid/Variables;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string/jumbo v1, "A2"

    invoke-static {p0}, Lcom/ta/audid/utils/AppInfoUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string/jumbo v1, "A3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/ta/audid/utils/AppInfoUtils;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string/jumbo v2, "A4"

    .line 45
    invoke-static {p0}, Lcom/ta/audid/permission/PermissionUtils;->checkStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "1"

    .line 44
    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string/jumbo v2, "A5"

    .line 47
    invoke-static {p0}, Lcom/ta/audid/permission/PermissionUtils;->checkReadPhoneStatePermissionGranted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "1"

    .line 46
    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string/jumbo v2, "A6"

    .line 49
    invoke-static {p0}, Lcom/ta/audid/permission/PermissionUtils;->checkWifiStatePermissionGranted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "1"

    .line 48
    :goto_2
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v1, "A7"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string/jumbo v1, "A8"

    invoke-static {p0}, Lcom/ta/audid/utils/AppInfoUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string/jumbo v1, "A9"

    invoke-static {p0}, Lcom/ta/audid/utils/AppInfoUtils;->getAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v1, "A10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string/jumbo v1, "A11"

    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ta/audid/Variables;->getAppChannel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string/jumbo v1, "A13"

    invoke-static {}, Lcom/ta/audid/utils/UtUtils;->getUserNick()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string/jumbo v1, "A14"

    invoke-static {}, Lcom/ta/audid/utils/UtUtils;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string/jumbo v1, "A15"

    const-string/jumbo v2, "2.0.6.3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-object v0

    .line 45
    :cond_0
    const-string/jumbo v1, "0"

    goto/16 :goto_0

    .line 47
    :cond_1
    const-string/jumbo v1, "0"

    goto/16 :goto_1

    .line 49
    :cond_2
    const-string/jumbo v1, "0"

    goto :goto_2
.end method
