.class public Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniAppMenuParamPlugin;
.super Lipd;
.source "MiniAppMenuParamPlugin.java"


# instance fields
.field private a:Liop;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method private a(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniAppMenuParamPlugin;->a:Liop;

    if-nez v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniAppMenuParamPlugin;->a:Liop;

    invoke-interface {v1}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 74
    const-string/jumbo v1, "SHOW_SHARE_POP_MENU"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 38
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 1081
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 39
    if-eqz v1, :cond_0

    .line 2081
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 40
    instance-of v1, v1, Liop;

    if-eqz v1, :cond_0

    .line 3081
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 41
    check-cast v1, Liop;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniAppMenuParamPlugin;->a:Liop;

    .line 44
    :cond_0
    const-string/jumbo v1, "setShowShareMenu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4121
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 4057
    const-string/jumbo v2, "showShareMenu"

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    .line 4058
    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniAppMenuParamPlugin;->a(Z)V

    .line 53
    :cond_1
    :goto_0
    return v3

    .line 47
    :cond_2
    const-string/jumbo v1, "hideShareMenu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5062
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniAppMenuParamPlugin;->a(Z)V

    .line 5063
    invoke-interface {p2}, Liny;->sendSuccess()V

    goto :goto_0

    .line 50
    :cond_3
    const-string/jumbo v1, "showBackHome"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5078
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniAppMenuParamPlugin;->a:Liop;

    if-eqz v1, :cond_1

    .line 5080
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniAppMenuParamPlugin;->a:Liop;

    invoke-interface {v1}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v1

    .line 5081
    if-eqz v1, :cond_1

    .line 5085
    const-string/jumbo v2, "SHOW_BACK_HOME"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lipd;->onPrepare(Liof;)V

    .line 26
    const-string/jumbo v0, "setShowShareMenu"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 27
    const-string/jumbo v0, "hideShareMenu"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 28
    const-string/jumbo v0, "showBackHome"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniAppMenuParamPlugin;->a:Liop;

    .line 34
    return-void
.end method
