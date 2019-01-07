.class public Lcom/alipay/mobile/nebula/log/H5LogUtil;
.super Ljava/lang/Object;
.source "H5LogUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static behaviorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;)V
    .locals 1
    .param p0, "logData"    # Lcom/alipay/mobile/nebula/log/H5LogData;
    .param p1, "logConfig"    # Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    .prologue
    .line 39
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    .line 40
    .local v0, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->behaviorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;)V

    .line 43
    :cond_0
    return-void
.end method

.method private static getJSApiBlackList(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v2, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 66
    .local v2, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 67
    .local v1, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v1, :cond_0

    .line 68
    const-string/jumbo v4, "h5_apiLogBlackList"

    invoke-interface {v1, v4}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 69
    .local v0, "config":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 70
    invoke-static {v0, p0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    move-object v3, v2

    .line 74
    .end local v0    # "config":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .local v3, "jsonArray":Ljava/lang/Object;
    :goto_0
    return-object v3

    .end local v3    # "jsonArray":Ljava/lang/Object;
    .restart local v2    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_0
    move-object v3, v2

    .restart local v3    # "jsonArray":Ljava/lang/Object;
    goto :goto_0
.end method

.method public static getPerformanceJSApiBlackList()Lcom/alibaba/fastjson/JSONArray;
    .locals 1

    .prologue
    .line 57
    const-string/jumbo v0, "performance"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->getJSApiBlackList(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static getSecurityJSApiBlackList()Lcom/alibaba/fastjson/JSONArray;
    .locals 1

    .prologue
    .line 61
    const-string/jumbo v0, "security"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->getJSApiBlackList(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static logH5Exception(Lcom/alipay/mobile/nebula/log/H5LogData;)V
    .locals 3
    .param p0, "logData"    # Lcom/alipay/mobile/nebula/log/H5LogData;

    .prologue
    .line 25
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;->newH5MonitorLogConfig()Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    move-result-object v1

    const-string/jumbo v2, "H-EM"

    .line 26
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;->setLogHeader(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    move-result-object v1

    const-string/jumbo v2, "H5Exception"

    .line 27
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;->setLogType(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    move-result-object v0

    .line 28
    .local v0, "logConfig":Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;
    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->monitorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;)V

    .line 29
    return-void
.end method

.method public static logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V
    .locals 3
    .param p0, "logData"    # Lcom/alipay/mobile/nebula/log/H5LogData;

    .prologue
    .line 17
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->newH5BehaviorLogConfig()Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    move-result-object v1

    const/4 v2, 0x2

    .line 18
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->setLogLevel(I)Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    move-result-object v1

    const-string/jumbo v2, "NebulaTech"

    .line 19
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->setBehaviourPro(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    move-result-object v0

    .line 20
    .local v0, "logConfig":Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;
    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->behaviorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;)V

    .line 21
    return-void
.end method

.method public static monitorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;)V
    .locals 1
    .param p0, "logData"    # Lcom/alipay/mobile/nebula/log/H5LogData;
    .param p1, "logConfig"    # Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    .prologue
    .line 32
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    .line 33
    .local v0, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->monitorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;)V

    .line 36
    :cond_0
    return-void
.end method

.method public static useNewLogUpload()Z
    .locals 3

    .prologue
    .line 46
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 47
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 48
    const-string/jumbo v2, "h5_newLogUpload"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "yes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    const/4 v2, 0x1

    .line 53
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
