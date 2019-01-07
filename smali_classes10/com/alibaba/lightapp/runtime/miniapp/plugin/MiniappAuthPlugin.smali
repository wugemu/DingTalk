.class public Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin;
.super Lipd;
.source "MiniappAuthPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 7
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 41
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "getAuthCode"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 42
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v3

    .line 44
    .local v3, "page":Liop;
    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v1

    .line 46
    .local v1, "activity":Landroid/app/Activity;
    invoke-interface {v3}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v4

    .line 47
    .local v4, "params":Landroid/os/Bundle;
    const-string/jumbo v5, "appId"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2047
    .local v2, "appId":Ljava/lang/String;
    sget-object v5, Lhqf$b;->a:Lhqf;

    .line 48
    new-instance v6, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;

    invoke-direct {v6, p0, v1, v2, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin;Landroid/app/Activity;Ljava/lang/String;Liny;)V

    invoke-virtual {v5, v2, v6}, Lhqf;->a(Ljava/lang/String;Lhqf$a;)V

    .line 123
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "appId":Ljava/lang/String;
    .end local v4    # "params":Landroid/os/Bundle;
    :cond_0
    const/4 v5, 0x1

    .line 126
    .end local v3    # "page":Liop;
    :goto_0
    return v5

    :cond_1
    invoke-super {p0, p1, p2}, Lipd;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v5

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lipd;->onPrepare(Liof;)V

    .line 35
    const-string/jumbo v0, "getAuthCode"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 36
    return-void
.end method
