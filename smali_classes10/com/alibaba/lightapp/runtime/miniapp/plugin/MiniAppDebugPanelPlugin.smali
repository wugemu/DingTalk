.class public Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniAppDebugPanelPlugin;
.super Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;
.source "MiniAppDebugPanelPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;-><init>()V

    return-void
.end method


# virtual methods
.method protected ensurePackageReady(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->ensurePackageReady(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected getVConsoleAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "2018072560817286"

    return-object v0
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    .prologue
    .line 18
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v0

    return v0
.end method
