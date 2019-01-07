.class public abstract Lcom/alipay/mobile/bqcscanservice/b;
.super Ljava/lang/Object;
.source "BQCScanEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/bqcscanservice/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
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


# virtual methods
.method public abstract destroy()V
.end method

.method public getCodeSize()F
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public abstract init(Landroid/content/Context;Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method

.method public isQrCodeEngine()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onProcessFinish(Lcom/alipay/mobile/bqcscanservice/c;)Z
.end method

.method public abstract process([BLandroid/hardware/Camera;Landroid/graphics/Rect;Landroid/hardware/Camera$Size;I)Lcom/alipay/mobile/bqcscanservice/c;
.end method

.method public abstract setResultCallback(Lcom/alipay/mobile/bqcscanservice/b$a;)V
.end method

.method public setSubScanType(Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;)V
    .locals 0
    .param p1, "type"    # Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

    .prologue
    .line 73
    return-void
.end method

.method public setWhetherFirstSetup(Z)V
    .locals 0
    .param p1, "firstSetup"    # Z

    .prologue
    .line 77
    return-void
.end method

.method public abstract start()V
.end method
