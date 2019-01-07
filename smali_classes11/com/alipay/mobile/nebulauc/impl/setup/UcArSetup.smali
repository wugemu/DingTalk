.class public Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup;
.super Ljava/lang/Object;
.source "UcArSetup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "H5UcService::UcArSetup"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableAR()Z
    .locals 2

    .prologue
    .line 30
    const-string/jumbo v1, "h5_disableUcAR"

    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "ucARConfig":Ljava/lang/String;
    const-string/jumbo v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static init()J
    .locals 4

    .prologue
    .line 35
    const-string/jumbo v2, "registerARDetector"

    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->beginTrace(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 56
    .local v0, "ts":J
    const-string/jumbo v2, "H5UcService::UcArSetup"

    const-string/jumbo v3, "get aRManager fail, register MarkerDetector fail"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string/jumbo v2, "registerARDetector"

    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method private static registerDetector(Lcom/uc/webview/export/extension/ARManager;[Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$a;)V
    .locals 3
    .param p0, "aRManager"    # Lcom/uc/webview/export/extension/ARManager;
    .param p1, "infos"    # [Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$a;

    .prologue
    const/4 v2, 0x0

    .line 63
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 64
    invoke-virtual {p0, v2, v2, v2}, Lcom/uc/webview/export/extension/ARManager;->registerARDetector(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method
