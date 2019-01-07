.class public Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;
.super Ljava/lang/Object;
.source "H5MainLinkMonitor.java"


# static fields
.field public static final CLIENT_CALL_NODE:Ljava/lang/String; = "client_call"

.field public static final FIRST_REQUEST_HANDLE:Ljava/lang/String; = "firstRequest_handle"

.field public static FIRST_REQUEST_HANDLE_TIME:I = 0x0

.field public static final FIRST_REQUEST_START:Ljava/lang/String; = "firstRequest_start"

.field public static FIRST_REQUEST_START_TIME:I = 0x0

.field public static final LINK_ID:Ljava/lang/String; = "app_start"

.field public static final PAGE_APPEAR:Ljava/lang/String; = "page_appear"

.field public static PAGE_APPEAR_TIME:I = 0x0

.field public static final PAGE_FAIL:Ljava/lang/String; = "page_fail"

.field public static final PAGE_FINISH:Ljava/lang/String; = "page_finish"

.field public static PAGE_FINISH_TIME:I = 0x0

.field public static final PAGE_START:Ljava/lang/String; = "page_start"

.field public static PAGE_START_TIME:I = 0x0

.field public static final SESSION_CREATE:Ljava/lang/String; = "session_create"

.field public static SESSION_CREATE_TIME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "H5LinkMonitorImpl"

.field public static mainLinkConfig:Lcom/alibaba/fastjson/JSONObject;

.field private static mainLinkEnable:Z

.field private static monitorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xbb8

    .line 32
    const/16 v0, 0x1388

    sput v0, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->SESSION_CREATE_TIME:I

    .line 34
    sput v1, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->PAGE_APPEAR_TIME:I

    .line 36
    sput v1, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->FIRST_REQUEST_HANDLE_TIME:I

    .line 38
    sput v1, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->FIRST_REQUEST_START_TIME:I

    .line 40
    sput v1, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->PAGE_START_TIME:I

    .line 42
    const/16 v0, 0x1f40

    sput v0, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->PAGE_FINISH_TIME:I

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->monitorMap:Ljava/util/Map;

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->mainLinkEnable:Z

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelLinkMonitor(Ljava/lang/String;)V
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    .line 117
    sget-object v1, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->monitorMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

    .line 118
    .local v0, "linkMonitor":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;
    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 121
    :cond_0
    const-string/jumbo v1, "app_start"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->cancelLinkMonitor(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static checkValidity(Liop;)Z
    .locals 1
    .param p0, "h5Page"    # Liop;

    .prologue
    .line 227
    if-eqz p0, :cond_0

    invoke-interface {p0}, Liop;->getSession()Lipc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    invoke-interface {p0}, Liop;->getSession()Lipc;

    move-result-object v0

    invoke-interface {v0}, Lipc;->getH5LinkMonitor()Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    invoke-interface {p0}, Liop;->getSession()Lipc;

    move-result-object v0

    invoke-interface {v0}, Lipc;->getH5LinkMonitor()Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->linkCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    :cond_0
    const/4 v0, 0x0

    .line 232
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static enableMainLinkMonitor()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 54
    sget-object v3, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->mainLinkConfig:Lcom/alibaba/fastjson/JSONObject;

    if-nez v3, :cond_0

    .line 55
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 56
    .local v1, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v1, :cond_1

    .line 57
    const-string/jumbo v3, "h5_mainLinkConfig"

    invoke-interface {v1, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 58
    .local v0, "config":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 59
    sput-object v0, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->mainLinkConfig:Lcom/alibaba/fastjson/JSONObject;

    .line 60
    const-string/jumbo v3, "enable"

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 61
    .local v2, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    const-string/jumbo v3, "timeout"

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->setTimeout(Lcom/alibaba/fastjson/JSONObject;)V

    .line 62
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 63
    const-string/jumbo v3, "app_start"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 64
    sput-boolean v3, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->mainLinkEnable:Z

    .line 71
    .end local v0    # "config":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v2    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :goto_0
    return v3

    .line 69
    :cond_0
    sget-boolean v3, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->mainLinkEnable:Z

    goto :goto_0

    .line 71
    .restart local v1    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static logLinkTimingStatistic(Liop;Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;)V
    .locals 8
    .param p0, "h5Page"    # Liop;
    .param p1, "h5LinkMonitor"    # Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

    .prologue
    .line 210
    const-string/jumbo v3, "H5_LINK_TIMING_STATISTIC"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 211
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "linkId"

    const-string/jumbo v5, "app_start"

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 212
    .local v1, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    const-string/jumbo v3, "app_start"

    invoke-interface {p1, v3}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->getLinkData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 213
    .local v2, "nodeList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 214
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    .line 215
    .local v0, "linkNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getTriggerTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    goto :goto_0

    .line 219
    .end local v0    # "linkNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Liop;->getPageData()Lior;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 220
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-interface {p0}, Liop;->getPageData()Lior;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 223
    :cond_1
    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 224
    return-void
.end method

.method private static setTimeout(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 7
    .param p0, "config"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 75
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const-string/jumbo v6, "client_call^session_create"

    invoke-static {p0, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v5

    .line 79
    .local v5, "sessionCreateT":I
    if-lez v5, :cond_2

    .line 80
    sput v5, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->SESSION_CREATE_TIME:I

    .line 82
    :cond_2
    const-string/jumbo v6, "session_create^page_appear"

    invoke-static {p0, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 83
    .local v2, "pageAppearT":I
    if-lez v2, :cond_3

    .line 84
    sput v2, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->PAGE_APPEAR_TIME:I

    .line 86
    :cond_3
    const-string/jumbo v6, "session_create^firstRequest_handle"

    invoke-static {p0, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 87
    .local v0, "firstRequestHandleT":I
    if-lez v0, :cond_4

    .line 88
    sput v0, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->FIRST_REQUEST_HANDLE_TIME:I

    .line 90
    :cond_4
    const-string/jumbo v6, "firstRequest_handle^firstRequest_start"

    invoke-static {p0, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v1

    .line 91
    .local v1, "firstRequestStartT":I
    if-lez v1, :cond_5

    .line 92
    sput v1, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->FIRST_REQUEST_START_TIME:I

    .line 94
    :cond_5
    const-string/jumbo v6, "firstRequest_start^page_start"

    invoke-static {p0, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v4

    .line 95
    .local v4, "pageStartT":I
    if-lez v4, :cond_6

    .line 96
    sput v4, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->PAGE_START_TIME:I

    .line 98
    :cond_6
    const-string/jumbo v6, "page_start^page_finish"

    invoke-static {p0, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v3

    .line 99
    .local v3, "pageFinishT":I
    if-lez v3, :cond_0

    .line 100
    sput v3, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->PAGE_FINISH_TIME:I

    goto :goto_0
.end method

.method public static startMainLinkMonitor(Ljava/lang/String;)V
    .locals 7
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->enableMainLinkMonitor()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const-string/jumbo v0, "H5LinkMonitorImpl"

    const-string/jumbo v2, "enableMainLinkMonitor false, return"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_0
    return-void

    .line 109
    :cond_0
    new-instance v1, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;-><init>()V

    .line 110
    .local v1, "linkMonitor":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;
    sget-object v0, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->monitorMap:Ljava/util/Map;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string/jumbo v0, "app_start"

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->addLinkMonitorTree(Ljava/lang/String;)V

    .line 112
    const-string/jumbo v2, "app_start"

    const-string/jumbo v3, "client_call"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->setLinkData(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 113
    const-string/jumbo v0, "app_start"

    const-string/jumbo v2, "session_create"

    const-string/jumbo v3, "client_call"

    sget v4, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->SESSION_CREATE_TIME:I

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->createExpectation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public static triggerAppearLink(Liop;)V
    .locals 6
    .param p0, "h5Page"    # Liop;

    .prologue
    .line 139
    invoke-static {p0}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->checkValidity(Liop;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-interface {p0}, Liop;->getSession()Lipc;

    move-result-object v0

    invoke-interface {v0}, Lipc;->getH5LinkMonitor()Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

    move-result-object v0

    const-string/jumbo v1, "app_start"

    const-string/jumbo v2, "page_appear"

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 142
    invoke-interface {v0, v1, v2, v4, v5}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->fulfillExpectation(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public static triggerHandleUrlLink(Liop;)V
    .locals 4
    .param p0, "h5Page"    # Liop;

    .prologue
    .line 147
    invoke-static {p0}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->checkValidity(Liop;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-interface {p0}, Liop;->getSession()Lipc;

    move-result-object v0

    invoke-interface {v0}, Lipc;->getH5LinkMonitor()Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

    move-result-object v0

    const-string/jumbo v1, "firstRequest_handle"

    const-string/jumbo v2, "firstRequest_start"

    sget v3, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->FIRST_REQUEST_START_TIME:I

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->triggerNodeEvent(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static triggerLoadUrlLink(Liop;)V
    .locals 4
    .param p0, "h5Page"    # Liop;

    .prologue
    .line 155
    invoke-static {p0}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->checkValidity(Liop;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-interface {p0}, Liop;->getSession()Lipc;

    move-result-object v0

    invoke-interface {v0}, Lipc;->getH5LinkMonitor()Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

    move-result-object v0

    const-string/jumbo v1, "firstRequest_start"

    const-string/jumbo v2, "page_start"

    sget v3, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->PAGE_START_TIME:I

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->triggerNodeEvent(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static triggerNodeEvent(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p0, "linkMonitor"    # Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "nextNodeName"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .prologue
    .line 236
    if-nez p0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    const-string/jumbo v0, "app_start"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {p0, v0, p1, v2, v3}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->fulfillExpectation(Ljava/lang/String;Ljava/lang/String;J)V

    .line 240
    const-string/jumbo v0, "app_start"

    invoke-interface {p0, v0, p2, p1, p3}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->createExpectation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public static triggerPageFailLink(Liop;)V
    .locals 7
    .param p0, "h5Page"    # Liop;

    .prologue
    .line 200
    invoke-static {p0}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->checkValidity(Liop;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-interface {p0}, Liop;->getSession()Lipc;

    move-result-object v0

    invoke-interface {v0}, Lipc;->getH5LinkMonitor()Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

    move-result-object v1

    .line 204
    .local v1, "linkMonitor":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;
    const-string/jumbo v2, "app_start"

    const-string/jumbo v3, "page_fail"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v6, "page_start"

    invoke-interface/range {v1 .. v6}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->setLinkData(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 205
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->setLinkCompleted(Z)V

    .line 206
    invoke-static {p0, v1}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->logLinkTimingStatistic(Liop;Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;)V

    goto :goto_0
.end method

.method public static triggerPageFinishLink(Liop;)V
    .locals 7
    .param p0, "h5Page"    # Liop;

    .prologue
    .line 190
    invoke-static {p0}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->checkValidity(Liop;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-interface {p0}, Liop;->getSession()Lipc;

    move-result-object v0

    invoke-interface {v0}, Lipc;->getH5LinkMonitor()Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

    move-result-object v1

    .line 194
    .local v1, "linkMonitor":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;
    const-string/jumbo v2, "app_start"

    const-string/jumbo v3, "page_finish"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v6, "page_start"

    invoke-interface/range {v1 .. v6}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->setLinkData(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 195
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->setLinkCompleted(Z)V

    .line 196
    invoke-static {p0, v1}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->logLinkTimingStatistic(Liop;Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;)V

    goto :goto_0
.end method

.method public static triggerPageStartedLink(Liop;)V
    .locals 6
    .param p0, "h5Page"    # Liop;

    .prologue
    .line 163
    invoke-static {p0}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->checkValidity(Liop;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-interface {p0}, Liop;->getSession()Lipc;

    move-result-object v1

    invoke-interface {v1}, Lipc;->getH5LinkMonitor()Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

    move-result-object v0

    .line 167
    .local v0, "linkMonitor":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;
    const-string/jumbo v1, "app_start"

    const-string/jumbo v2, "page_start"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->fulfillExpectation(Ljava/lang/String;Ljava/lang/String;J)V

    .line 168
    const-string/jumbo v1, "app_start"

    const-string/jumbo v2, "page_finish"

    sget v3, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->PAGE_FINISH_TIME:I

    new-instance v4, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor$1;

    invoke-direct {v4}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor$1;-><init>()V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->checkExpectation(Ljava/lang/String;Ljava/lang/String;ILcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;)V

    goto :goto_0
.end method

.method public static triggerSessionCreateLink(Lipc;Ljava/lang/String;)V
    .locals 6
    .param p0, "session"    # Lipc;
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 125
    sget-object v1, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->monitorMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

    .line 126
    .local v0, "linkMonitor":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;
    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-interface {p0, v0}, Lipc;->setH5LinkMonitor(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;)V

    .line 130
    const-string/jumbo v1, "app_start"

    const-string/jumbo v2, "session_create"

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 130
    invoke-interface {v0, v1, v2, v4, v5}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->fulfillExpectation(Ljava/lang/String;Ljava/lang/String;J)V

    .line 132
    const-string/jumbo v1, "app_start"

    const-string/jumbo v2, "page_appear"

    const-string/jumbo v3, "session_create"

    sget v4, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->PAGE_APPEAR_TIME:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->createExpectation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 134
    const-string/jumbo v1, "app_start"

    const-string/jumbo v2, "firstRequest_handle"

    const-string/jumbo v3, "session_create"

    sget v4, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->FIRST_REQUEST_HANDLE_TIME:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->createExpectation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0
.end method
