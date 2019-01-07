.class public Lcom/alipay/mobile/nebulacore/util/H5ParamCheckUtil;
.super Ljava/lang/Object;
.source "H5ParamCheckUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ParamCheckUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkParams(Landroid/os/Bundle;)V
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 20
    const-string/jumbo v2, "isTinyApp"

    const/4 v3, 0x0

    .line 21
    invoke-static {p0, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    .line 23
    .local v1, "isTinyApp":Z
    if-eqz v1, :cond_1

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5StartParamCheck;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5StartParamCheck;

    .line 28
    .local v0, "h5StartParamCheck":Lcom/alipay/mobile/nebula/provider/H5StartParamCheck;
    if-eqz v0, :cond_0

    .line 29
    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebula/provider/H5StartParamCheck;->checkParams(Landroid/os/Bundle;)V

    goto :goto_0
.end method
