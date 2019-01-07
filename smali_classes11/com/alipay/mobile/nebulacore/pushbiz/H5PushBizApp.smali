.class public Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizApp;
.super Lini;
.source "H5PushBizApp.java"


# instance fields
.field private param:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lini;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizApp;->param:Landroid/os/Bundle;

    .line 31
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    invoke-static {}, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizUtil;->getH5BridgeContext()Liny;

    move-result-object v0

    .line 58
    .local v0, "h5BridgeContext":Liny;
    if-eqz v0, :cond_0

    .line 59
    const/16 v1, 0xb

    .line 60
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_user_cacel_operation:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-interface {v0, v1, v2}, Liny;->sendError(ILjava/lang/String;)V

    .line 62
    :cond_0
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizUtil;->setH5BridgeContext(Liny;)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizApp;->destroy(Landroid/os/Bundle;)V

    .line 48
    return-void
.end method

.method protected onStart()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v1

    .line 36
    .local v1, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v1, :cond_0

    .line 37
    new-instance v0, Linz;

    invoke-direct {v0}, Linz;-><init>()V

    .line 38
    .local v0, "h5Bundle":Linz;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizApp;->param:Landroid/os/Bundle;

    .line 1043
    iput-object v2, v0, Linz;->b:Landroid/os/Bundle;

    .line 40
    invoke-virtual {v1, p0, v0}, Lcom/alipay/mobile/h5container/service/H5Service;->startPage(Linn;Linz;)V

    .line 42
    .end local v0    # "h5Bundle":Linz;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method
