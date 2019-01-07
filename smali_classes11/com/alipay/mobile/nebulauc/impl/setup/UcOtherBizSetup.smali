.class public Lcom/alipay/mobile/nebulauc/impl/setup/UcOtherBizSetup;
.super Ljava/lang/Object;
.source "UcOtherBizSetup.java"


# static fields
.field private static final KEY_FOCUS_AUTO_POPUP_INPUT_WHITELIST:Ljava/lang/String; = "u4_focus_auto_popup_input_list"

.field private static final TAG:Ljava/lang/String; = "H5UcService::UcOtherBizSetup"

.field private static focusAutoPopupInputListener:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcOtherBizSetup$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcOtherBizSetup$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcOtherBizSetup;->focusAutoPopupInputListener:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 0

    .prologue
    .line 28
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcOtherBizSetup;->initFocusAutoPopupInput()V

    .line 29
    return-void
.end method

.method private static initFocusAutoPopupInput()V
    .locals 8

    .prologue
    .line 35
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isUCM57()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 37
    .local v2, "start":J
    const-string/jumbo v4, "initFocusAutoPopupInput"

    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->beginTrace(Ljava/lang/String;)V

    .line 38
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 39
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 40
    const-string/jumbo v4, "h5_ucFocusAutoPopupInput"

    sget-object v5, Lcom/alipay/mobile/nebulauc/impl/setup/UcOtherBizSetup;->focusAutoPopupInputListener:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithNotifyChange(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "h5_focusAutoPopupInput":Ljava/lang/String;
    const-string/jumbo v4, "u4_focus_auto_popup_input_list"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebulauc/impl/setup/UcBizSetupHelper;->configure(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .end local v1    # "h5_focusAutoPopupInput":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "initFocusAutoPopupInput"

    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    .line 46
    const-string/jumbo v4, "H5UcService::UcOtherBizSetup"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "initFocusAutoPopupInput cost:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_1
    return-void
.end method
