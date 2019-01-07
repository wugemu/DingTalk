.class public Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;
.super Lipd;
.source "H5BridgePlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5BridgePlugin"


# instance fields
.field private h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

.field private scriptLoader:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 1
    .param p1, "page"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    .line 24
    invoke-direct {p0}, Lipd;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getScriptLoader()Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;->scriptLoader:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    .line 27
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 6
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    .line 2065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 71
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "h5PageJsParam"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2121
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 73
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    .local v1, "k":Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "v":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 76
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;->scriptLoader:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    invoke-virtual {v5, v1, v3}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->setParamsToWebPage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    .end local v1    # "k":Ljava/lang/String;
    .end local v3    # "v":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    .line 81
    .end local v2    # "param":Lcom/alibaba/fastjson/JSONObject;
    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 8
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 45
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 1121
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 47
    .local v2, "params":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "url"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "file://"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "http://"

    .line 50
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "https://"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    const/4 v1, 0x1

    .line 51
    .local v1, "normalUrl":Z
    :goto_0
    if-nez v1, :cond_1

    .line 52
    const-string/jumbo v5, "H5BridgePlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "skip load js for abnormal url: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_1
    const-string/jumbo v5, "h5PageReceivedTitle"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 55
    if-eqz v1, :cond_2

    .line 56
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;->scriptLoader:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loadScript()Z

    .line 65
    :cond_2
    :goto_1
    return v4

    .end local v1    # "normalUrl":Z
    :cond_3
    move v1, v4

    .line 50
    goto :goto_0

    .line 58
    .restart local v1    # "normalUrl":Z
    :cond_4
    const-string/jumbo v5, "h5PageFinishedSync"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 59
    if-eqz v1, :cond_2

    .line 60
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;->scriptLoader:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loadScript()Z

    goto :goto_1

    .line 62
    :cond_5
    const-string/jumbo v5, "h5PageStartedSync"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 63
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;->scriptLoader:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->resetBridge()V

    goto :goto_1
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 37
    const-string/jumbo v0, "h5PageStartedSync"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 38
    const-string/jumbo v0, "h5PageFinishedSync"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 39
    const-string/jumbo v0, "h5PageReceivedTitle"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 40
    const-string/jumbo v0, "h5PageJsParam"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;->scriptLoader:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    .line 32
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 33
    return-void
.end method
