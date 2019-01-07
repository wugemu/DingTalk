.class public Lcom/ta/audid/collect/DeviceFPCollect;
.super Ljava/lang/Object;
.source "DeviceFPCollect.java"


# static fields
.field private static final V:Ljava/lang/String; = "V"

.field private static final VERSION:Ljava/lang/String; = "1.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDeviceFP(Landroid/content/Context;)Ljava/util/Map;
    .locals 3
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
    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .local v0, "hashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "V"

    const-string/jumbo v2, "1.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {p0}, Lcom/ta/audid/collect/DeviceInfoModle;->getDeviceInfoModle(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 25
    invoke-static {p0}, Lcom/ta/audid/collect/SystemInfoModle;->getSystemInfoModle(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 26
    invoke-static {p0}, Lcom/ta/audid/collect/AppInfoModle;->getAppInfoModle(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 27
    return-object v0
.end method

.method public static getFPInfo(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 32
    invoke-static {}, Lcom/ta/audid/utils/UtdidLogger;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 34
    .local v2, "t":J
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/ta/audid/collect/DeviceFPCollect;->getDeviceFP(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->sortMapByKey(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 35
    .local v0, "json":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/ta/audid/utils/UtdidLogger;->sd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getFPInfo time:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/ta/audid/utils/UtdidLogger;->sd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .end local v2    # "t":J
    :goto_0
    return-object v0

    .line 38
    .end local v0    # "json":Lorg/json/JSONObject;
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/ta/audid/collect/DeviceFPCollect;->getDeviceFP(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .restart local v0    # "json":Lorg/json/JSONObject;
    goto :goto_0
.end method
