.class public Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;
.super Ljava/lang/Object;
.source "WXAnalyzerDataTransfer.java"


# static fields
.field private static final GROUP:Ljava/lang/String; = "WXAnalyzer"

.field private static final MODULE_ERROR:Ljava/lang/String; = "WXError"

.field private static final MODULE_PERFORMANCE:Ljava/lang/String; = "WXPerformance"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static transferError(Lcom/taobao/weex/common/WXJSExceptionInfo;Ljava/lang/String;)V
    .locals 10
    .param p0, "exceptionInfo"    # Lcom/taobao/weex/common/WXJSExceptionInfo;
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v6

    if-nez v6, :cond_1

    .line 113
    :cond_0
    return-void

    .line 88
    :cond_1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/weex/WXSDKManager;->getWXAnalyzerList()Ljava/util/List;

    move-result-object v5

    .line 89
    .local v5, "transferList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/performance/IWXAnalyzer;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 93
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    .line 94
    .local v3, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-eqz v3, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXJSExceptionInfo;->getErrCode()Lcom/taobao/weex/common/WXErrorCode;

    move-result-object v2

    .line 98
    .local v2, "errorCode":Lcom/taobao/weex/common/WXErrorCode;
    const-string/jumbo v0, ""

    .line 100
    .local v0, "data":Ljava/lang/String;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v7, "instanceId"

    .line 101
    invoke-virtual {v6, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "url"

    .line 102
    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "errorCode"

    .line 103
    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "errorMsg"

    .line 104
    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "errorGroup"

    .line 105
    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorGroup()Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    .line 106
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 110
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/performance/IWXAnalyzer;

    .line 111
    .local v4, "transfer":Lcom/taobao/weex/performance/IWXAnalyzer;
    const-string/jumbo v7, "WXAnalyzer"

    const-string/jumbo v8, "WXError"

    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorType()Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/taobao/weex/common/WXErrorCode$ErrorType;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9, v0}, Lcom/taobao/weex/performance/IWXAnalyzer;->transfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 107
    .end local v4    # "transfer":Lcom/taobao/weex/performance/IWXAnalyzer;
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static transferFps(J)V
    .locals 8
    .param p0, "fps"    # J

    .prologue
    .line 116
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 132
    :cond_0
    return-void

    .line 119
    :cond_1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKManager;->getWXAnalyzerList()Ljava/util/List;

    move-result-object v3

    .line 120
    .local v3, "transferList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/performance/IWXAnalyzer;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 123
    const-string/jumbo v0, ""

    .line 125
    .local v0, "data":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v5, "fps"

    invoke-virtual {v4, v5, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 129
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/performance/IWXAnalyzer;

    .line 130
    .local v2, "transfer":Lcom/taobao/weex/performance/IWXAnalyzer;
    const-string/jumbo v5, "WXAnalyzer"

    const-string/jumbo v6, "WXPerformance"

    const-string/jumbo v7, "fps"

    invoke-interface {v2, v5, v6, v7, v0}, Lcom/taobao/weex/performance/IWXAnalyzer;->transfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 126
    .end local v2    # "transfer":Lcom/taobao/weex/performance/IWXAnalyzer;
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static transferPerformance(Lcom/taobao/weex/common/WXPerformance;Ljava/lang/String;)V
    .locals 13
    .param p0, "performance"    # Lcom/taobao/weex/common/WXPerformance;
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v9

    if-nez v9, :cond_1

    .line 82
    :cond_0
    return-void

    .line 47
    :cond_1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/taobao/weex/WXSDKManager;->getWXAnalyzerList()Ljava/util/List;

    move-result-object v8

    .line 48
    .local v8, "transferList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/performance/IWXAnalyzer;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_0

    .line 53
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v5

    .line 54
    .local v5, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-eqz v5, :cond_0

    .line 57
    const-string/jumbo v0, ""

    .line 59
    .local v0, "data":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 60
    .local v1, "dimensionMap":Lorg/json/JSONObject;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 62
    .local v6, "measureMap":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXPerformance;->getDimensionMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 63
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v1, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    .end local v1    # "dimensionMap":Lorg/json/JSONObject;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "measureMap":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/taobao/weex/performance/IWXAnalyzer;

    .line 80
    .local v7, "transfer":Lcom/taobao/weex/performance/IWXAnalyzer;
    const-string/jumbo v10, "WXAnalyzer"

    const-string/jumbo v11, "WXPerformance"

    const-string/jumbo v12, "instance"

    invoke-interface {v7, v10, v11, v12, v0}, Lcom/taobao/weex/performance/IWXAnalyzer;->transfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 65
    .end local v7    # "transfer":Lcom/taobao/weex/performance/IWXAnalyzer;
    .restart local v1    # "dimensionMap":Lorg/json/JSONObject;
    .restart local v6    # "measureMap":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXPerformance;->getMeasureMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 66
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 69
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Double;>;"
    :cond_3
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v10, "instanceId"

    .line 70
    invoke-virtual {v9, v10, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "url"

    .line 71
    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "dimensionMap"

    .line 72
    invoke-virtual {v9, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "measureMap"

    .line 73
    invoke-virtual {v9, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    .line 74
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method
