.class public Leji;
.super Ljava/lang/Object;
.source "FastConfigContentFetch.java"


# static fields
.field private static volatile a:Leji;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static a()Leji;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Leji;->a:Leji;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Leji;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Leji;->a:Leji;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Leji;

    invoke-direct {v0}, Leji;-><init>()V

    sput-object v0, Leji;->a:Leji;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Leji;->a:Leji;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Leji;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Leji;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-static {p1}, Leji;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "topic"    # Ljava/lang/String;

    .prologue
    .line 140
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "pref_fast_config"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lejh;)V
    .locals 14
    .param p1, "jsonStr"    # Ljava/lang/String;
    .param p2, "listener"    # Lejh;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    :goto_0
    return-void

    .line 55
    :cond_0
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .local v8, "json":Lorg/json/JSONObject;
    const-string/jumbo v2, "version"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 57
    .local v6, "versionNew":J
    const-string/jumbo v2, "name"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "topic":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    const-string/jumbo v2, "fastCfg"

    const/4 v3, 0x0

    const-string/jumbo v4, "processContent topic is null"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    .end local v5    # "topic":Ljava/lang/String;
    .end local v6    # "versionNew":J
    .end local v8    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    const-string/jumbo v2, "fastCfg"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "FastConfigContentFetch json invalid:"

    aput-object v13, v4, v12

    const/4 v12, 0x1

    aput-object p1, v4, v12

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    .restart local v5    # "topic":Ljava/lang/String;
    .restart local v6    # "versionNew":J
    .restart local v8    # "json":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    invoke-static {v5}, Leji;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v10

    .line 64
    .local v10, "versionOld":J
    cmp-long v2, v6, v10

    if-lez v2, :cond_3

    .line 66
    const-string/jumbo v2, "url"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 68
    .local v9, "url":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    const-string/jumbo v2, "fastCfg"

    const/4 v3, 0x0

    const-string/jumbo v4, "processContent url is null"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1085
    :cond_2
    const-string/jumbo v2, "fastCfg"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "requestData:"

    aput-object v13, v4, v12

    const/4 v12, 0x1

    aput-object v9, v4, v12

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    const-string/jumbo v2, "REQUEST"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/alibaba/doraemon/request/Request;

    move-object v12, v0

    .line 1088
    const-string/jumbo v2, "User-Agent"

    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v2, v3}, Lcom/alibaba/doraemon/request/Request;->setRequestParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 1089
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Lcom/alibaba/doraemon/request/Request;->setCacheable(Z)Lcom/alibaba/doraemon/request/Request;

    .line 1090
    invoke-interface {v12, v9}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 1091
    new-instance v2, Leji$1;

    move-object v3, p0

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Leji$1;-><init>(Leji;Lejh;Ljava/lang/String;J)V

    invoke-interface {v12, v2}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 1136
    invoke-interface {v12}, Lcom/alibaba/doraemon/request/Request;->start()V

    goto/16 :goto_0

    .line 76
    .end local v9    # "url":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "fastCfg"

    const/4 v3, 0x0

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "processContent version equal "

    aput-object v13, v4, v12

    const/4 v12, 0x1

    aput-object v5, v4, v12

    const/4 v12, 0x2

    const-string/jumbo v13, " ver:"

    aput-object v13, v4, v12

    const/4 v12, 0x3

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v12

    const/4 v12, 0x4

    const-string/jumbo v13, " verOld:"

    aput-object v13, v4, v12

    const/4 v12, 0x5

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v12

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
