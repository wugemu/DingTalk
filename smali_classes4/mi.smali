.class final Lmi;
.super Ljava/lang/Object;
.source "OrangeConfigImpl.java"

# interfaces
.implements Lmg;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    sput-boolean v1, Lmi;->a:Z

    .line 25
    :try_start_0
    const-string/jumbo v0, "com.taobao.orange.OrangeConfig"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lmi;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    sput-boolean v1, Lmi;->a:Z

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 67
    sget-boolean v2, Lmi;->a:Z

    if-nez v2, :cond_0

    .line 68
    const-string/jumbo v2, "awcn.OrangeConfigImpl"

    const-string/jumbo v3, "no orange sdk"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lanet/channel/util/ALog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    :goto_0
    return-object v1

    .line 73
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p0, v3

    const/4 v4, 0x1

    aget-object v4, p0, v4

    const/4 v5, 0x2

    aget-object v5, p0, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/taobao/orange/OrangeConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "awcn.OrangeConfigImpl"

    const-string/jumbo v3, "get config failed!"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v0, v4}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 35
    sget-boolean v1, Lmi;->a:Z

    if-nez v1, :cond_1

    .line 36
    const-string/jumbo v1, "awcn.OrangeConfigImpl"

    const-string/jumbo v2, "no orange sdk"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v8, v3}, Lanet/channel/util/ALog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "networkSdk"

    aput-object v4, v2, v3

    new-instance v3, Lmi$1;

    invoke-direct {v3, p0}, Lmi$1;-><init>(Lmi;)V

    invoke-virtual {v1, v2, v3}, Lcom/taobao/orange/OrangeConfig;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 48
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "networkSdk"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "network_empty_scheme_https_switch"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "true"

    aput-object v3, v1, v2

    invoke-static {v1}, Lmi;->a([Ljava/lang/String;)Ljava/lang/String;

    .line 49
    invoke-static {}, Lmu;->a()Lmu;

    move-result-object v2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "networkSdk"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "network_monitor_whitelist_url"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v1, v3

    invoke-static {v1}, Lmi;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1062
    iget-object v3, v2, Lmu;->a:Ljava/util/Set;

    if-nez v3, :cond_3

    .line 1063
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Lmu;->a:Ljava/util/Set;

    .line 1067
    :goto_1
    const/4 v3, 0x2

    invoke-static {v3}, Lanet/channel/util/ALog;->a(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1068
    const-string/jumbo v3, "awcn.StatisticReqTimes"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "urlsFromOrange: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1070
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 1072
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1074
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1075
    iget-object v4, v2, Lmu;->a:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1078
    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v1, "awcn.StatisticReqTimes"

    const-string/jumbo v2, "whiteReqUrls from orange isnot json format"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 50
    :catch_1
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "awcn.OrangeConfigImpl"

    const-string/jumbo v2, "register fail"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v8, v0, v3}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1065
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_3
    iget-object v3, v2, Lmu;->a:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method
