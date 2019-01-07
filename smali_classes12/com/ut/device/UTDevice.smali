.class public Lcom/ut/device/UTDevice;
.super Ljava/lang/Object;
.source "UTDevice.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAid(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "appName"    # Ljava/lang/String;
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 72
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static getAidAsync(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/ut/device/AidCallback;)V
    .locals 0
    .param p0, "appName"    # Ljava/lang/String;
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/ut/device/AidCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 85
    return-void
.end method

.method public static getUtdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-static {p0}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUtdidForUpdate(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 31
    invoke-static {p0}, Lcom/ta/utdid2/device/UTDevice;->getUtdidForUpdate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setAppChannel(Ljava/lang/String;)V
    .locals 1
    .param p0, "appChannel"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ta/audid/Variables;->setAppChannel(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .locals 1
    .param p0, "appKey"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ta/audid/Variables;->setAppkey(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static setDebug(Z)V
    .locals 1
    .param p0, "isDebug"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 47
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ta/audid/Variables;->setDebug(Z)V

    .line 48
    return-void
.end method

.method public static setOldMode(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldMode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    if-eqz p0, :cond_0

    .line 56
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ta/audid/Variables;->initContext(Landroid/content/Context;)V

    .line 57
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ta/audid/Variables;->setOldMode(Z)V

    .line 59
    :cond_0
    return-void
.end method
