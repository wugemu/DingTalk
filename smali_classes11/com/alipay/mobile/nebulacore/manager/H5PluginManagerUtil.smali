.class public Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;
.super Ljava/lang/Object;
.source "H5PluginManagerUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5PluginManagerUtil"

.field public static instance:Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;


# instance fields
.field private jsApiBlackList:Lcom/alibaba/fastjson/JSONArray;

.field private pluginBlackList:Lcom/alibaba/fastjson/JSONArray;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v2, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->jsApiBlackList:Lcom/alibaba/fastjson/JSONArray;

    .line 35
    new-instance v2, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->pluginBlackList:Lcom/alibaba/fastjson/JSONArray;

    .line 36
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 37
    .local v1, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-nez v1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    const-string/jumbo v2, "h5_jsapiandPluginsConfig"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 41
    .local v0, "config":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    const-string/jumbo v2, "jsapis"

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->jsApiBlackList:Lcom/alibaba/fastjson/JSONArray;

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->jsApiBlackList:Lcom/alibaba/fastjson/JSONArray;

    .line 45
    const-string/jumbo v2, "plugins"

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->pluginBlackList:Lcom/alibaba/fastjson/JSONArray;

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->pluginBlackList:Lcom/alibaba/fastjson/JSONArray;

    goto :goto_0
.end method

.method public static enableFilterPlugin()Z
    .locals 2

    .prologue
    .line 67
    const-string/jumbo v1, "h5_enableFilterPlugin"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "config":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const/4 v1, 0x0

    .line 71
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;
    .locals 2

    .prologue
    .line 27
    const-class v1, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->instance:Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->instance:Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;

    .line 30
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->instance:Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public isInJsApiBlackList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "jsApiName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->jsApiBlackList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 59
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 60
    const-string/jumbo v1, "H5PluginManagerUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unregister jsApi, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is in blackList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string/jumbo v1, "PSD_Jsapi_Register_Forbidden"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "jsapi"

    invoke-virtual {v1, v2, p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 63
    :cond_0
    return v0
.end method

.method public isInPluginBlackList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pluginName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->pluginBlackList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 50
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 51
    const-string/jumbo v1, "H5PluginManagerUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unregister plugin, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is in blackList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string/jumbo v1, "PSD_Plugin_Register_Forbidden"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "plugin"

    invoke-virtual {v1, v2, p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 54
    :cond_0
    return v0
.end method
