.class public Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin;
.super Lipd;
.source "H5BugMeSwitchPlugin.java"


# static fields
.field private static final ACTION_CLOSE:Ljava/lang/String; = "close"

.field private static final EVENT_NB_DEBUG_SWITCH:Ljava/lang/String; = "NBDebugSwitch"

.field private static final TAG:Ljava/lang/String; = "H5BugMeSwitchPlugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method private debugSwitch(Lcom/alibaba/fastjson/JSONObject;Liny;)Z
    .locals 9
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 51
    const-string/jumbo v2, "token"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "token":Ljava/lang/String;
    const-string/jumbo v2, "action"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, "action":Ljava/lang/String;
    const-string/jumbo v2, "silent"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v8

    .line 55
    .local v8, "silent":Z
    const-string/jumbo v2, "close"

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->resetBugMeSettings()V

    .line 57
    const-string/jumbo v1, "success"

    const-string/jumbo v2, "true"

    invoke-interface {p2, v1, v2}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 101
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 58
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 60
    .local v7, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "error"

    const-string/jumbo v2, "1"

    invoke-virtual {v7, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string/jumbo v1, "errorMessage"

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_bug_me_error_param:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-interface {p2, v7}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_0

    .line 64
    .end local v7    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider;

    .line 65
    .local v0, "h5BugMeRpcAuthProvider":Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider;
    if-eqz v0, :cond_0

    .line 66
    new-instance v5, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin$1;

    invoke-direct {v5, p0, p2, v8}, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin;Liny;Z)V

    move-object v2, v1

    move-object v3, v1

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider;->rpcAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider$AuthRpcCallback;)V

    goto :goto_0
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
    .line 43
    const-string/jumbo v0, "NBDebugSwitch"

    .line 1065
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 44
    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin;->debugSwitch(Lcom/alibaba/fastjson/JSONObject;Liny;)Z

    .line 45
    const/4 v0, 0x1

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 33
    const-string/jumbo v0, "NBDebugSwitch"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 34
    return-void
.end method
