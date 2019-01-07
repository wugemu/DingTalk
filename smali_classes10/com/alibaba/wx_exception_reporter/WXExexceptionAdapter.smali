.class public Lcom/alibaba/wx_exception_reporter/WXExexceptionAdapter;
.super Ljava/lang/Object;
.source "WXExexceptionAdapter.java"

# interfaces
.implements Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string/jumbo v0, "instanceId"

    iput-object v0, p0, Lcom/alibaba/wx_exception_reporter/WXExexceptionAdapter;->a:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "frameWorkVersion"

    iput-object v0, p0, Lcom/alibaba/wx_exception_reporter/WXExexceptionAdapter;->b:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "errorCode"

    iput-object v0, p0, Lcom/alibaba/wx_exception_reporter/WXExexceptionAdapter;->c:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "errorGroup"

    iput-object v0, p0, Lcom/alibaba/wx_exception_reporter/WXExexceptionAdapter;->d:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "errorType"

    iput-object v0, p0, Lcom/alibaba/wx_exception_reporter/WXExexceptionAdapter;->e:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 37
    iput-object p1, p0, Lcom/alibaba/wx_exception_reporter/WXExexceptionAdapter;->f:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "bundleUrl"    # Ljava/lang/String;

    .prologue
    .line 163
    const/4 v2, 0x0

    .line 164
    .local v2, "start":I
    :try_start_0
    const-string/jumbo v4, "https:"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 165
    const/16 v2, 0x8

    .line 169
    :cond_0
    :goto_0
    const-string/jumbo v4, "?"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 170
    .local v1, "end":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 171
    :cond_1
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 176
    .end local v1    # "end":I
    .local v3, "targetUrl":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 166
    .end local v3    # "targetUrl":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "http:"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    const/4 v2, 0x7

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    move-object v3, p0

    .restart local v3    # "targetUrl":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public onJSException(Lcom/taobao/weex/common/WXJSExceptionInfo;)V
    .locals 22
    .param p1, "exception"    # Lcom/taobao/weex/common/WXJSExceptionInfo;

    .prologue
    .line 43
    if-nez p1, :cond_1

    .line 44
    const-string/jumbo v19, "WXJSExceptionAdapter"

    const-string/jumbo v20, "null == exception"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    :try_start_0
    new-instance v9, Lgzh;

    invoke-direct {v9}, Lgzh;-><init>()V

    .line 51
    .local v9, "exceptionModule":Lgzh;
    sget-object v19, Lcom/alibaba/ha/bizerrorreporter/module/AggregationType;->CONTENT:Lcom/alibaba/ha/bizerrorreporter/module/AggregationType;

    move-object/from16 v0, v19

    iput-object v0, v9, Lgzh;->b:Lcom/alibaba/ha/bizerrorreporter/module/AggregationType;

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/common/WXJSExceptionInfo;->getErrCode()Lcom/taobao/weex/common/WXErrorCode;

    move-result-object v6

    .line 55
    .local v6, "errorCode":Lcom/taobao/weex/common/WXErrorCode;
    invoke-virtual {v6}, Lcom/taobao/weex/common/WXErrorCode;->getErrorGroup()Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;

    move-result-object v19

    sget-object v20, Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;->NATIVE:Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 56
    invoke-virtual {v6}, Lcom/taobao/weex/common/WXErrorCode;->getErrorType()Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    move-result-object v19

    sget-object v20, Lcom/taobao/weex/common/WXErrorCode$ErrorType;->NATIVE_ERROR:Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 58
    const-string/jumbo v19, "weex_native_error"

    move-object/from16 v0, v19

    iput-object v0, v9, Lgzh;->a:Ljava/lang/String;

    .line 59
    invoke-virtual {v6}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v9, Lgzh;->d:Ljava/lang/String;

    .line 76
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/common/WXJSExceptionInfo;->getBundleUrl()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v9, Lgzh;->i:Ljava/lang/String;

    .line 77
    invoke-virtual {v6}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v9, Lgzh;->c:Ljava/lang/String;

    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/common/WXJSExceptionInfo;->getWeexVersion()Ljava/lang/String;

    move-result-object v17

    .line 80
    .local v17, "weexVersion":Ljava/lang/String;
    if-eqz v17, :cond_3

    .line 81
    move-object/from16 v0, v17

    iput-object v0, v9, Lgzh;->e:Ljava/lang/String;

    .line 83
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/common/WXJSExceptionInfo;->getException()Ljava/lang/String;

    move-result-object v8

    .line 84
    .local v8, "exceptionContent":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 85
    iput-object v8, v9, Lgzh;->f:Ljava/lang/String;

    .line 87
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/common/WXJSExceptionInfo;->getFunction()Ljava/lang/String;

    move-result-object v12

    .line 88
    .local v12, "function":Ljava/lang/String;
    if-eqz v12, :cond_5

    .line 89
    iput-object v12, v9, Lgzh;->g:Ljava/lang/String;

    .line 93
    :cond_5
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v7, "exceptionArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v19, "errorCode"

    invoke-virtual {v6}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string/jumbo v19, "errorGroup"

    invoke-virtual {v6}, Lcom/taobao/weex/common/WXErrorCode;->getErrorGroup()Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string/jumbo v19, "errorType"

    invoke-virtual {v6}, Lcom/taobao/weex/common/WXErrorCode;->getErrorType()Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/common/WXJSExceptionInfo;->getInstanceId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v13

    .line 98
    .local v13, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-eqz v13, :cond_8

    .line 99
    invoke-virtual {v13}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v18

    .line 100
    .local v18, "wxBundleUrl":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v15, v0, Lcom/taobao/weex/common/WXPerformance;->pageName:Ljava/lang/String;

    .line 101
    .local v15, "pageName":Ljava/lang/String;
    const-string/jumbo v19, "wxBundleOriginUrl"

    if-nez v18, :cond_6

    const-string/jumbo v18, ""

    .end local v18    # "wxBundleUrl":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string/jumbo v19, "wxBundlePageName"

    if-nez v15, :cond_7

    const-string/jumbo v15, ""

    .end local v15    # "pageName":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v19

    invoke-interface {v7, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/common/WXJSExceptionInfo;->getInstanceId()Ljava/lang/String;

    move-result-object v14

    .line 106
    .local v14, "instanceId":Ljava/lang/String;
    if-eqz v14, :cond_d

    .line 107
    const-string/jumbo v19, "instanceId"

    move-object/from16 v0, v19

    invoke-interface {v7, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/common/WXJSExceptionInfo;->getJsFrameworkVersion()Ljava/lang/String;

    move-result-object v11

    .line 112
    .local v11, "frameWorkVersion":Ljava/lang/String;
    if-eqz v11, :cond_e

    .line 113
    const-string/jumbo v19, "frameWorkVersion"

    move-object/from16 v0, v19

    invoke-interface {v7, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/common/WXJSExceptionInfo;->getExtParams()Ljava/util/Map;

    move-result-object v10

    .line 118
    .local v10, "extParames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v10, :cond_9

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v19

    if-lez v19, :cond_9

    .line 119
    invoke-interface {v7, v10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 121
    :cond_9
    iput-object v7, v9, Lgzh;->h:Ljava/util/Map;

    .line 124
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v9, Lgzh;->j:Ljava/lang/Thread;

    .line 126
    invoke-static {}, Lgzg;->a()Lgzg;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/wx_exception_reporter/WXExexceptionAdapter;->f:Landroid/content/Context;

    move-object/from16 v20, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1062
    :try_start_1
    invoke-static {}, Lhul;->a()Lhul;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lhul;->a:Landroid/content/Context;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    invoke-static {}, Lhul;->a()Lhul;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lhul;->c:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_f

    .line 1064
    :cond_a
    const-string/jumbo v19, "MotuCrashAdapter"

    const-string/jumbo v20, "you need init rest send service"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    :goto_4
    :try_start_2
    invoke-virtual {v6}, Lcom/taobao/weex/common/WXErrorCode;->getErrorGroup()Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;

    move-result-object v19

    sget-object v20, Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;->JS:Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 131
    if-eqz v13, :cond_0

    .line 134
    :try_start_3
    invoke-static/range {p1 .. p1}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v16

    .line 146
    .local v16, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_5
    :try_start_4
    const-string/jumbo v19, "exception"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Lcom/taobao/weex/WXSDKInstance;->fireGlobalEventCallback(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 149
    .end local v6    # "errorCode":Lcom/taobao/weex/common/WXErrorCode;
    .end local v7    # "exceptionArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "exceptionContent":Ljava/lang/String;
    .end local v9    # "exceptionModule":Lgzh;
    .end local v10    # "extParames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "frameWorkVersion":Ljava/lang/String;
    .end local v12    # "function":Ljava/lang/String;
    .end local v13    # "instance":Lcom/taobao/weex/WXSDKInstance;
    .end local v14    # "instanceId":Ljava/lang/String;
    .end local v16    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v17    # "weexVersion":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 150
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v19, "weex js err"

    const-string/jumbo v20, "build weex callback data err"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 62
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v6    # "errorCode":Lcom/taobao/weex/common/WXErrorCode;
    .restart local v9    # "exceptionModule":Lgzh;
    :cond_b
    :try_start_5
    const-string/jumbo v19, "WEEX_ERROR"

    move-object/from16 v0, v19

    iput-object v0, v9, Lgzh;->a:Ljava/lang/String;

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/common/WXJSExceptionInfo;->getBundleUrl()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "bundleUrl":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 66
    invoke-static {v3}, Lcom/alibaba/wx_exception_reporter/WXExexceptionAdapter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "code":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x400

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    .line 68
    const/16 v19, 0x0

    const/16 v20, 0x400

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 70
    :cond_c
    iput-object v4, v9, Lgzh;->d:Ljava/lang/String;

    goto/16 :goto_1

    .line 109
    .end local v3    # "bundleUrl":Ljava/lang/String;
    .end local v4    # "code":Ljava/lang/String;
    .restart local v7    # "exceptionArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v8    # "exceptionContent":Ljava/lang/String;
    .restart local v12    # "function":Ljava/lang/String;
    .restart local v13    # "instance":Lcom/taobao/weex/WXSDKInstance;
    .restart local v14    # "instanceId":Ljava/lang/String;
    .restart local v17    # "weexVersion":Ljava/lang/String;
    :cond_d
    const-string/jumbo v19, "instanceId"

    const-string/jumbo v20, "no instanceId"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 115
    .restart local v11    # "frameWorkVersion":Ljava/lang/String;
    :cond_e
    const-string/jumbo v19, "frameWorkVersion"

    const-string/jumbo v20, "no framework version"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_3

    .line 1071
    .restart local v10    # "extParames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_f
    :try_start_6
    new-instance v21, Lgzk;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v9}, Lgzk;-><init>(Landroid/content/Context;Lgzh;)V

    .line 1074
    move-object/from16 v0, v19

    iget-object v0, v0, Lgzg;->a:Lgzj;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgzj;->a(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_4

    .line 1076
    :catch_1
    move-exception v19

    .line 1077
    :try_start_7
    const-string/jumbo v20, "MotuCrashAdapter"

    const-string/jumbo v21, "adapter err"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 136
    :catch_2
    move-exception v19

    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 137
    .restart local v16    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v19, "bundleUrl"

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/common/WXJSExceptionInfo;->getBundleUrl()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string/jumbo v19, "errorCode"

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/common/WXJSExceptionInfo;->getErrCode()Lcom/taobao/weex/common/WXErrorCode;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string/jumbo v19, "exception"

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/common/WXJSExceptionInfo;->getException()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string/jumbo v19, "extParams"

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/common/WXJSExceptionInfo;->getExtParams()Ljava/util/Map;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string/jumbo v19, "function"

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/common/WXJSExceptionInfo;->getFunction()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string/jumbo v19, "instanceId"

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/common/WXJSExceptionInfo;->getInstanceId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string/jumbo v19, "jsFrameworkVersion"

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/common/WXJSExceptionInfo;->getJsFrameworkVersion()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string/jumbo v19, "weexVersion"

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/common/WXJSExceptionInfo;->getWeexVersion()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_5
.end method
