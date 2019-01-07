.class public Lcom/alipay/mobile/nebulacore/plugin/H5JSInjectPlugin;
.super Lipd;
.source "H5JSInjectPlugin.java"


# static fields
.field private static final GET_PHONESTATEINFO:Ljava/lang/String; = "getPhoneStateInfo4Debug"

.field private static final INSERT_JS:Ljava/lang/String; = "insertJS"

.field private static final SWICTH_WEBVIEW:Ljava/lang/String; = "switchWebView"

.field private static final TAG:Ljava/lang/String; = "H5JSInjectPlugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method private getPhoneStateInfo4Debug(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    const-string/jumbo v0, "URGENT"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5JSInjectPlugin$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5JSInjectPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5JSInjectPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method private insertJS(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 6
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    .line 1121
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 63
    .local v2, "params":Lcom/alibaba/fastjson/JSONObject;
    if-nez v2, :cond_1

    .line 64
    const-string/jumbo v3, "H5JSInjectPlugin"

    const-string/jumbo v4, "param is null"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const-string/jumbo v3, "jsUrl"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "jsUrl":Ljava/lang/String;
    const-string/jumbo v3, "H5JSInjectPlugin"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "jsUrl = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 70
    sput-object v1, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->H5_LOAD_JS:Ljava/lang/String;

    .line 2081
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 71
    check-cast v0, Liop;

    .line 72
    .local v0, "h5Page":Liop;
    if-eqz v0, :cond_0

    .line 73
    instance-of v3, v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 74
    check-cast v3, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getScriptLoader()Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    move-result-object v4

    .line 75
    invoke-interface {v0}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v4, v3, v1}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loadDynamicJs4Jsapi(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private swicthWebView(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 5
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 82
    .line 2121
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 83
    .local v0, "param":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    const-string/jumbo v2, "h5_read_use_webview_config"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setBooleanConfig(Ljava/lang/String;Z)V

    .line 85
    const-string/jumbo v2, "useUC"

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    .line 86
    .local v1, "useUCWebView":Z
    const-string/jumbo v2, "H5JSInjectPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "useUCWebView "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string/jumbo v2, "h5_use_uc_webview"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setBooleanConfig(Ljava/lang/String;Z)V

    .line 89
    .end local v1    # "useUCWebView":Z
    :cond_0
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 47
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 48
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "insertJS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5JSInjectPlugin;->insertJS(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 58
    :goto_0
    return v1

    .line 51
    :cond_0
    const-string/jumbo v2, "switchWebView"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5JSInjectPlugin;->swicthWebView(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto :goto_0

    .line 54
    :cond_1
    const-string/jumbo v2, "getPhoneStateInfo4Debug"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5JSInjectPlugin;->getPhoneStateInfo4Debug(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    goto :goto_0

    .line 58
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 40
    const-string/jumbo v0, "insertJS"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 41
    const-string/jumbo v0, "switchWebView"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 42
    const-string/jumbo v0, "getPhoneStateInfo4Debug"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 43
    return-void
.end method
