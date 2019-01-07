.class public Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;
.super Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;
.source "H5PageTabBar.java"


# static fields
.field private static final PAGE_TAB_BAR:Ljava/lang/String; = "tabBar"


# instance fields
.field private hasInvoke:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->hasInvoke:Z

    return-void
.end method


# virtual methods
.method public addTabBar()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->pageViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->pageViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->refreshView()V

    .line 34
    :cond_0
    return-void
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 45
    .local v0, "action":Ljava/lang/String;
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->context:Ljava/lang/ref/WeakReference;

    .line 46
    const-string/jumbo v2, "tabBar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1121
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 48
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {p0, v1, p2}, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->handleTabAction(Lcom/alibaba/fastjson/JSONObject;Liny;)V

    .line 49
    const/4 v2, 0x1

    .line 51
    .end local v1    # "param":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v2

    goto :goto_0
.end method

.method public handleTabAction(Lcom/alibaba/fastjson/JSONObject;Liny;)V
    .locals 2
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    const-string/jumbo v1, "action"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "create"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->hasInvoke:Z

    if-eqz v1, :cond_1

    .line 69
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 61
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->createTabBar(Lcom/alibaba/fastjson/JSONObject;Liny;Landroid/os/Bundle;)V

    .line 62
    invoke-interface {p2}, Liny;->sendSuccess()V

    .line 63
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->hasInvoke:Z

    .line 65
    :cond_2
    const-string/jumbo v1, "redDot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->createTabBadge(Lcom/alibaba/fastjson/JSONObject;Liny;)V

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 38
    const-string/jumbo v0, "tabBar"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public setPageViewHolder(Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V
    .locals 0
    .param p1, "holder"    # Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->pageViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 26
    return-void
.end method
