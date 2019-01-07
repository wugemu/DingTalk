.class public Lcom/ta/utdid2/device/UTDevice;
.super Ljava/lang/Object;
.source "UTDevice.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUtdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16
    if-nez p0, :cond_0

    .line 17
    const-string/jumbo v0, "ffffffffffffffffffffffff"

    .line 25
    :goto_0
    return-object v0

    .line 20
    :cond_0
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ta/audid/Variables;->initContext(Landroid/content/Context;)V

    .line 21
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getOldMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    invoke-static {p0}, Lcom/ta/utdid2/device/UTDevice;->getUtdidOld(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 24
    :cond_1
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->init()V

    .line 25
    invoke-static {}, Lcom/ta/audid/device/AppUtdid;->getInstance()Lcom/ta/audid/device/AppUtdid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/device/AppUtdid;->getUtdid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUtdidForUpdate(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 35
    const-string/jumbo v0, "ffffffffffffffffffffffff"

    .line 43
    :goto_0
    return-object v0

    .line 38
    :cond_0
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ta/audid/Variables;->initContext(Landroid/content/Context;)V

    .line 39
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getOldMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-static {p0}, Lcom/ta/utdid2/device/UTDevice;->getUtdidForUpdateOld(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 42
    :cond_1
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->init()V

    .line 43
    invoke-static {}, Lcom/ta/audid/device/AppUtdid;->getInstance()Lcom/ta/audid/device/AppUtdid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/device/AppUtdid;->getUtdidFromFile()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getUtdidForUpdateOld(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-static {p0}, Lcom/ta/utdid2/device/UTUtdid;->instance(Landroid/content/Context;)Lcom/ta/utdid2/device/UTUtdid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ta/utdid2/device/UTUtdid;->getValueForUpdate()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "utdid":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v0, "ffffffffffffffffffffffff"

    .end local v0    # "utdid":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private static getUtdidOld(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-static {p0}, Lcom/ta/utdid2/device/DeviceInfo;->getDevice(Landroid/content/Context;)Lcom/ta/utdid2/device/Device;

    move-result-object v0

    .line 49
    .local v0, "device":Lcom/ta/utdid2/device/Device;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ta/utdid2/device/Device;->getUtdid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "ffffffffffffffffffffffff"

    .line 50
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/ta/utdid2/device/Device;->getUtdid()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
