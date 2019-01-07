.class public Lcom/alipay/mobile/nebulacore/plugin/H5DefaultPlugin;
.super Lipd;
.source "H5DefaultPlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5DefaultPlugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method private loadData(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Event$a;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5Event$a;-><init>()V

    .line 65
    .local v0, "builder":Lcom/alipay/mobile/h5container/api/H5Event$a;
    const-string/jumbo v1, "h5PageLoadData"

    .line 5202
    iput-object v1, v0, Lcom/alipay/mobile/h5container/api/H5Event$a;->a:Ljava/lang/String;

    .line 6121
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 6217
    iput-object v1, v0, Lcom/alipay/mobile/h5container/api/H5Event$a;->d:Lcom/alibaba/fastjson/JSONObject;

    .line 7081
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 7207
    iput-object v1, v0, Lcom/alipay/mobile/h5container/api/H5Event$a;->b:Liob;

    .line 67
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getDispatcher()Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event$a;->a()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->dispatch(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    .line 68
    return-void
.end method

.method private loadUrl(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Event$a;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5Event$a;-><init>()V

    .line 57
    .local v0, "builder":Lcom/alipay/mobile/h5container/api/H5Event$a;
    const-string/jumbo v1, "h5PageDoLoadUrl"

    .line 2202
    iput-object v1, v0, Lcom/alipay/mobile/h5container/api/H5Event$a;->a:Ljava/lang/String;

    .line 3121
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 3217
    iput-object v1, v0, Lcom/alipay/mobile/h5container/api/H5Event$a;->d:Lcom/alibaba/fastjson/JSONObject;

    .line 4081
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 4207
    iput-object v1, v0, Lcom/alipay/mobile/h5container/api/H5Event$a;->b:Liob;

    .line 60
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getDispatcher()Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event$a;->a()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->dispatch(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    .line 61
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 7
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 21
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 22
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "h5PageShouldLoadUrl"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 23
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5DefaultPlugin;->loadUrl(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 41
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 24
    :cond_1
    const-string/jumbo v4, "h5PageShouldLoadData"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 25
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5DefaultPlugin;->loadData(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto :goto_0

    .line 26
    :cond_2
    const-string/jumbo v4, "h5ToolbarMenuBt"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1121
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 28
    .local v1, "eventParam":Lcom/alibaba/fastjson/JSONObject;
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 29
    .local v3, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "data"

    invoke-virtual {v3, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2081
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 30
    check-cast v2, Liop;

    .line 31
    .local v2, "h5Page":Liop;
    const-string/jumbo v4, "popmenu"

    const-string/jumbo v5, "popMenuType"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 32
    invoke-interface {v2}, Liop;->getBridge()Linx;

    move-result-object v4

    const-string/jumbo v5, "popMenuClick"

    invoke-interface {v4, v5, v3, v6}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    goto :goto_0

    .line 34
    :cond_3
    invoke-interface {v2}, Liop;->getBridge()Linx;

    move-result-object v4

    const-string/jumbo v5, "toolbarMenuClick"

    invoke-interface {v4, v5, v3, v6}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    goto :goto_0

    .line 37
    .end local v1    # "eventParam":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "h5Page":Liop;
    .end local v3    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    sget-boolean v4, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 38
    const-string/jumbo v4, "H5DefaultPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "default handler handle event "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 46
    const-string/jumbo v0, "h5PageShouldLoadUrl"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 47
    const-string/jumbo v0, "h5PageShouldLoadData"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 48
    const-string/jumbo v0, "h5ToolbarMenuBt"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 49
    const-string/jumbo v0, "h5PageProgress"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 50
    const-string/jumbo v0, "h5PageLoadResource"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 51
    const-string/jumbo v0, "h5PageClosed"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 52
    const-string/jumbo v0, "h5PageBackground"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 53
    return-void
.end method
