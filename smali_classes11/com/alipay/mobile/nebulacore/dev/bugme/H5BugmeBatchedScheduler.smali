.class public Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;
.super Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;
.source "H5BugmeBatchedScheduler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler",
        "<",
        "Lcom/alibaba/fastjson/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final DUMP_VALUE_LENGTH_LIMIT:I = 0x400


# instance fields
.field private uidCache:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "RPC"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;-><init>(Ljava/util/concurrent/Executor;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;->uidCache:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private static clipLength(Lcom/alibaba/fastjson/JSONObject;I)Lcom/alibaba/fastjson/JSONObject;
    .locals 8
    .param p0, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "singleValueLengthLimit"    # I

    .prologue
    .line 128
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 129
    .local v0, "clippedObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 130
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 133
    .local v4, "value":Ljava/lang/Object;
    const-string/jumbo v6, "extra"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "app"

    .line 134
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "img"

    .line 135
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    instance-of v6, v4, Ljava/lang/String;

    if-nez v6, :cond_2

    .line 137
    :cond_1
    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object v3, v4

    .line 140
    check-cast v3, Ljava/lang/String;

    .line 141
    .local v3, "strValue":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 144
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, p1, :cond_3

    .line 145
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v3, v7, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 147
    :cond_3
    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 149
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "strValue":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_4
    return-object v0
.end method

.method private getUid()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    const-string/jumbo v1, ""

    .line 41
    .local v1, "uid":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;->uidCache:Ljava/lang/String;

    .line 44
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    .line 46
    .local v0, "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    if-eqz v0, :cond_1

    .line 47
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 48
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;->uidCache:Ljava/lang/String;

    .line 51
    .end local v0    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    :cond_1
    return-object v1
.end method


# virtual methods
.method protected onSchedule(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/JSONObject;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v1, "bodyBuilder":Ljava/lang/StringBuilder;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/fastjson/JSONObject;

    .line 58
    .local v8, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v13, "bugmeSwitchOpen"

    const/4 v14, 0x0

    invoke-static {v8, v13, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    .line 59
    .local v2, "bugmeSwitchOpen":Z
    const-string/jumbo v13, "bugmeSwitchOpen"

    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v13

    const-class v14, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 62
    .local v6, "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    if-eqz v6, :cond_1

    .line 63
    invoke-interface {v6}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->getmDid()Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "did":Ljava/lang/String;
    const-string/jumbo v13, "did"

    invoke-virtual {v8, v13, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .end local v4    # "did":Ljava/lang/String;
    :cond_1
    const-string/jumbo v13, "uid"

    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;->getUid()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string/jumbo v13, "extra"

    const/4 v14, 0x0

    invoke-static {v8, v13, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 70
    .local v5, "extra":Lcom/alibaba/fastjson/JSONObject;
    if-nez v5, :cond_2

    .line 71
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    .end local v5    # "extra":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 73
    .restart local v5    # "extra":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    const-string/jumbo v13, "vorlon"

    const-string/jumbo v14, "h5_bug_me_dom_debug"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string/jumbo v13, "performance"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string/jumbo v13, "extra"

    invoke-virtual {v8, v13, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string/jumbo v13, "app"

    invoke-static {v8, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 78
    .local v0, "appInfo":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_3

    .line 79
    const-string/jumbo v13, "app"

    invoke-virtual {v8, v13, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_3
    const-string/jumbo v13, "performance"

    const-string/jumbo v14, "type"

    invoke-static {v8, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 85
    .local v7, "isPerformanceTrace":Z
    if-nez v7, :cond_4

    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->enabled()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 86
    const/16 v13, 0x400

    invoke-static {v8, v13}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;->clipLength(Lcom/alibaba/fastjson/JSONObject;I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v13

    invoke-static {v13}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->enqueueLog(Lcom/alibaba/fastjson/JSONObject;)V

    .line 89
    :cond_4
    if-eqz v2, :cond_0

    .line 93
    const-string/jumbo v13, "viewId"

    invoke-static {v8, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 94
    .local v11, "viewId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;->getInstance()Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;->getConsole(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    move-result-object v3

    .line 95
    .local v3, "console":Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;
    if-eqz v3, :cond_5

    .line 96
    invoke-virtual {v3, v8}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->recordLog(Lcom/alibaba/fastjson/JSONObject;)V

    .line 100
    :cond_5
    const/16 v13, 0x1388

    invoke-static {v8, v13}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;->clipLength(Lcom/alibaba/fastjson/JSONObject;I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 101
    .local v10, "objectToSend":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    .line 102
    .local v9, "logData":Ljava/lang/String;
    const-string/jumbo v13, "H5WalletDevDebugProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "send data:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 107
    .end local v0    # "appInfo":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "bugmeSwitchOpen":Z
    .end local v3    # "console":Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;
    .end local v5    # "extra":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    .end local v7    # "isPerformanceTrace":Z
    .end local v8    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "logData":Ljava/lang/String;
    .end local v10    # "objectToSend":Lcom/alibaba/fastjson/JSONObject;
    .end local v11    # "viewId":Ljava/lang/String;
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_7

    .line 108
    new-instance v12, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;

    invoke-direct {v12}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;-><init>()V

    const-string/jumbo v13, "https://hpmweb.alipay.com/report/android/batch"

    .line 110
    invoke-virtual {v12, v13}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->url(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;

    move-result-object v12

    const-string/jumbo v13, "Content-Type"

    const-string/jumbo v14, "text/plain"

    .line 111
    invoke-virtual {v12, v13, v14}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;

    move-result-object v12

    const-string/jumbo v13, "User-Agent"

    const-string/jumbo v14, ""

    .line 112
    invoke-virtual {v12, v13, v14}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;

    move-result-object v12

    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->body(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;

    move-result-object v12

    .line 114
    invoke-virtual {v12}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->build()Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;

    move-result-object v12

    .line 115
    invoke-virtual {v12}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->execute()Ljava/lang/String;

    .line 117
    :cond_7
    return-void
.end method
