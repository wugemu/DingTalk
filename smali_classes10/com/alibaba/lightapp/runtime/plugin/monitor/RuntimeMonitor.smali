.class public Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "RuntimeMonitor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RuntimeMonitor"

.field private static WHITE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mMonitorInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private enableUsability:Z

.field private mCurrentUrl:Ljava/lang/String;

.field private usability:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;->WHITE_LIST:Ljava/util/List;

    const-string/jumbo v1, ".dingtalk.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;->WHITE_LIST:Ljava/util/List;

    const-string/jumbo v1, "esign.hz-internal.taeapp.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;->WHITE_LIST:Ljava/util/List;

    const-string/jumbo v1, "yunacctapp.hz-internal.taeapp.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;->WHITE_LIST:Ljava/util/List;

    const-string/jumbo v1, "rlwportal.hz-internal.taeapp.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;->mMonitorInfo:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;->usability:Z

    .line 43
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;->enableUsability:Z

    return-void
.end method

.method private checkUsability()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 257
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;->enableUsability:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;->usability:Z

    if-nez v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;->getCurrentUrl()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "url":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v0

    invoke-virtual {v0, v1}, Lgvi;->microAppUsabilityWarn(Ljava/lang/String;)V

    .line 262
    const-string/jumbo v0, ""

    invoke-static {v1, v0, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitMicroAppUsability(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 264
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 265
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "appId"

    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lhhy;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v0

    const-string/jumbo v3, "MICROAPP_USABILITY"

    new-array v5, v5, [Ljava/lang/Object;

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->logHigh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/Object;)V

    .line 268
    .end local v1    # "url":Ljava/lang/String;
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;->resetData()V

    .line 269
    return-void
.end method

.method private isWhiteList(Ljava/lang/String;)Z
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 272
    const/4 v2, 0x0

    .line 274
    .local v2, "isWhiteList":Z
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 275
    .local v3, "tmpUrl":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "host":Ljava/lang/String;
    sget-object v5, Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;->WHITE_LIST:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 277
    .local v4, "whiteListHost":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 278
    const/4 v2, 0x1

    .line 286
    .end local v1    # "host":Ljava/lang/String;
    .end local v3    # "tmpUrl":Ljava/net/URL;
    .end local v4    # "whiteListHost":Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method private resetData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;->usability:Z

    .line 246
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;->enableUsability:Z

    .line 247
    return-void
.end method

.method public static setMonitorInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sput-object p0, Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;->mMonitorInfo:Ljava/util/Map;

    .line 293
    return-void
.end method


# virtual methods
.method public blankPage(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 10
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 58
    :try_start_0
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "url":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v2, "isBlank"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 60
    .local v7, "isBlank":Z
    if-eqz v7, :cond_0

    .line 61
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 62
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "appId"

    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lhhy;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v0

    const-string/jumbo v3, "BLANKPAGE"

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->logHigh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/Object;)V

    .line 64
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgvi;->openWebViewBlankWarn(Ljava/lang/String;Z)V

    .line 66
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v2, "BlankPage"

    if-nez v7, :cond_1

    move v0, v8

    :goto_0
    invoke-static {v2, v1, v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitStatus(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 67
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v1    # "url":Ljava/lang/String;
    .end local v7    # "isBlank":Z
    :goto_1
    return-object v0

    .restart local v1    # "url":Ljava/lang/String;
    .restart local v7    # "isBlank":Z
    :cond_1
    move v0, v9

    .line 66
    goto :goto_0

    .line 68
    .end local v1    # "url":Ljava/lang/String;
    .end local v7    # "isBlank":Z
    :catch_0
    move-exception v6

    .line 69
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 70
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v3, 0x2

    invoke-virtual {v6}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_1
.end method

.method public enableUsability(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 2
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;->enableUsability:Z

    .line 203
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v0
.end method

.method public entries(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 2
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 174
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v0
.end method

.method public finishLoad(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 12
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 297
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "finishDate"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 298
    .local v2, "finishTime":J
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 299
    .local v4, "result":Lorg/json/JSONObject;
    const-wide/16 v6, -0x1

    .line 301
    .local v6, "startDate":J
    :try_start_0
    sget-object v8, Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;->mMonitorInfo:Ljava/util/Map;

    if-nez v8, :cond_2

    const-wide/16 v6, -0x1

    .line 302
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_0

    const-wide/16 v6, -0x1

    .line 303
    :cond_0
    const-string/jumbo v8, "startDate"

    invoke-virtual {v4, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_1

    .line 308
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 309
    .local v0, "dims":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    sget-object v8, Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;->mMonitorInfo:Ljava/util/Map;

    invoke-virtual {v0, v8}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setMap(Ljava/util/Map;)V

    .line 310
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 311
    .local v1, "measures":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v8, "load_time"

    sub-long v10, v2, v6

    long-to-double v10, v10

    invoke-virtual {v1, v8, v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 312
    const-string/jumbo v8, "STATISTICS"

    invoke-static {v8}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 313
    .local v5, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v8, "SmartWork"

    const-string/jumbo v9, "app_load_performance"

    invoke-interface {v5, v8, v9, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 315
    .end local v0    # "dims":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measures":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v5    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :cond_1
    const/4 v8, 0x0

    sput-object v8, Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;->mMonitorInfo:Ljava/util/Map;

    .line 316
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v8, v9, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    return-object v8

    .line 301
    :cond_2
    :try_start_1
    sget-object v8, Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;->mMonitorInfo:Ljava/util/Map;

    const-string/jumbo v9, "startDate"

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2109
    const-wide/16 v10, 0x0

    invoke-static {v8, v10, v11}, Lcoc;->a(Ljava/lang/String;J)J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v6

    goto :goto_0

    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public memory(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 179
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 181
    .local v3, "url":Ljava/lang/String;
    :try_start_0
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "performanceMemoryValue":Ljava/lang/String;
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceMemory;

    invoke-static {v2, v4}, Lcor;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceMemory;

    .line 185
    .local v1, "performanceMemory":Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceMemory;
    if-eqz v1, :cond_0

    .line 186
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->setPerformanceMemory(Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceMemory;)V

    .line 188
    invoke-static {v3, v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitPerformanceMemory(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceMemory;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    .end local v1    # "performanceMemory":Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceMemory;
    .end local v2    # "performanceMemoryValue":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v4

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 192
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 251
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 253
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;->checkUsability()V

    .line 254
    return-void
.end method

.method public onPageStarted(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 240
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/Plugin;->onPageStarted(Ljava/lang/String;)V

    .line 241
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;->resetData()V

    .line 242
    return-void
.end method

.method public pageRedirect(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 9
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 223
    :try_start_0
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;->mCurrentUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 235
    .end local v1    # "url":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 227
    .restart local v1    # "url":Ljava/lang/String;
    :cond_0
    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;->mCurrentUrl:Ljava/lang/String;

    .line 228
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;->getParentView()Landroid/view/View;

    move-result-object v2

    .line 229
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/alibaba/lightapp/runtime/NuvaWebView;

    if-eqz v3, :cond_1

    .line 230
    check-cast v2, Lcom/alibaba/lightapp/runtime/NuvaWebView;

    .line 1767
    .end local v2    # "view":Landroid/view/View;
    iget-object v3, v2, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->f:Lcom/alibaba/lightapp/runtime/WebViewWrapper$b;

    if-eqz v3, :cond_1

    .line 1768
    iget-object v3, v2, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->f:Lcom/alibaba/lightapp/runtime/WebViewWrapper$b;

    invoke-interface {v3, v1}, Lcom/alibaba/lightapp/runtime/WebViewWrapper$b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v1    # "url":Ljava/lang/String;
    :cond_1
    :goto_1
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v3, "JsApi"

    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    const-string/jumbo v5, "RuntimeMonitor"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "pageRedirect exception: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public timing(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 11
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 78
    .local v3, "url":Ljava/lang/String;
    :try_start_0
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "performanceTimingValue":Ljava/lang/String;
    const-string/jumbo v4, "H5"

    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    const-string/jumbo v6, "commitPerformanceTiming"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "commitPerformanceTiming="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6, v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;

    invoke-static {v2, v4}, Lcor;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;

    .line 82
    .local v1, "performanceTiming":Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;
    if-eqz v1, :cond_0

    .line 83
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->setPerformanceTiming(Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;)V

    .line 84
    invoke-static {v3, v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitPerformanceTiming(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    .end local v1    # "performanceTiming":Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;
    .end local v2    # "performanceTimingValue":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v4

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 88
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public usability(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 9
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 208
    iget-boolean v2, p0, Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;->enableUsability:Z

    if-eqz v2, :cond_0

    .line 209
    iput-boolean v8, p0, Lcom/alibaba/lightapp/runtime/plugin/monitor/RuntimeMonitor;->usability:Z

    .line 210
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 211
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "source"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "source":Ljava/lang/String;
    const-string/jumbo v2, "H5"

    const-string/jumbo v3, "source"

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "source="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v1, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    invoke-static {v1, v0, v8}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitMicroAppUsability(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 215
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->setBizOKTime(Ljava/lang/String;J)V

    .line 217
    .end local v0    # "source":Ljava/lang/String;
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v2
.end method
