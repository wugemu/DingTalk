.class public abstract Lcom/alipay/mobile/mascanengine/MaPictureEngineService;
.super Ljava/lang/Object;
.source "MaPictureEngineService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
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

.method public abstract process(Landroid/graphics/Bitmap;)Lcom/alipay/mobile/mascanengine/MaScanResult;
.end method

.method public abstract process(Ljava/lang/String;)Lcom/alipay/mobile/mascanengine/MaScanResult;
.end method

.method public abstract processARCode([BIII)Lcom/alipay/mobile/mascanengine/MaScanResult;
.end method
