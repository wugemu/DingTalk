.class public Lcom/alipay/mobile/nebulacore/wallet/H5AutoClickPlugin;
.super Lipd;
.source "H5AutoClickPlugin.java"


# static fields
.field private static final autoClick:Ljava/lang/String; = "autoClick"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 27
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 28
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "autoClick"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->enableStockTradeLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 31
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->autoClick(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 34
    :cond_0
    invoke-interface {p2}, Liny;->sendSuccess()V

    .line 35
    const/4 v1, 0x1

    .line 37
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Lipd;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lipd;->onPrepare(Liof;)V

    .line 22
    const-string/jumbo v0, "autoClick"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 23
    return-void
.end method
