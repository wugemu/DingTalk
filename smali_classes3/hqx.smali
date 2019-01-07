.class public Lhqx;
.super Ljava/lang/Object;
.source "SafeTunnelManager.java"

# interfaces
.implements Lhqw;


# static fields
.field private static d:Lhqw;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhqy;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhqx;->a:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lhqx;->b:Ljava/util/Set;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lhqx;->c:Ljava/util/Set;

    .line 53
    new-instance v1, Lhqp;

    invoke-direct {v1}, Lhqp;-><init>()V

    new-instance v2, Lhqx$1;

    invoke-direct {v2, p0}, Lhqx$1;-><init>(Lhqx;)V

    .line 1039
    const-class v0, Lcom/alibaba/lightapp/runtime/idl/CommonIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/idl/CommonIService;

    .line 1040
    new-instance v3, Lhqp$2;

    invoke-direct {v3, v1, v2}, Lhqp$2;-><init>(Lhqp;Lcma;)V

    invoke-interface {v0, v3}, Lcom/alibaba/lightapp/runtime/idl/CommonIService;->getSafeTunnelDomains(Liyv;)V

    .line 79
    return-void
.end method

.method static synthetic a(Lhqx;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lhqx;

    .prologue
    .line 31
    iget-object v0, p0, Lhqx;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lhqx;Ljava/util/List;)V
    .locals 3
    .param p0, "x0"    # Lhqx;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 31
    .line 5337
    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/Plugin;->listToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5338
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "light_app_common_domains"

    invoke-static {v1, v2, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static declared-synchronized b()Lhqw;
    .locals 3

    .prologue
    .line 41
    const-class v1, Lhqx;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhqx;->d:Lhqw;

    if-nez v0, :cond_1

    .line 42
    const-class v2, Lhqx;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    sget-object v0, Lhqx;->d:Lhqw;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lhqx;

    invoke-direct {v0}, Lhqx;-><init>()V

    sput-object v0, Lhqx;->d:Lhqw;

    .line 46
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :cond_1
    :try_start_2
    sget-object v0, Lhqx;->d:Lhqw;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 41
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lhqx;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lhqx;

    .prologue
    .line 31
    iget-object v0, p0, Lhqx;->c:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lhqy;
    .locals 2
    .param p1, "pageUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 116
    iget-object v1, p0, Lhqx;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const/4 v1, 0x0

    .line 124
    :goto_0
    return-object v1

    .line 120
    :cond_0
    iget-object v1, p0, Lhqx;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhqy;

    .line 121
    .local v0, "microAppInfo":Lhqy;
    if-nez v0, :cond_1

    .line 122
    const-string/jumbo v1, ""

    invoke-virtual {p0, p1, v1}, Lhqx;->a(Ljava/lang/String;Ljava/lang/String;)Lhqy;

    .line 124
    :cond_1
    iget-object v1, p0, Lhqx;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhqy;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lhqy;
    .locals 9
    .param p1, "pageUrl"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, "microAppInfo":Lhqy;
    iget-object v2, p0, Lhqx;->b:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1283
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/alibaba/dingtalk/oabase/OAInterface;->g(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    move-result-object v0

    .line 1284
    if-nez v0, :cond_0

    .line 1285
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->f(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    move-result-object v0

    .line 92
    .local v0, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :cond_0
    if-eqz v0, :cond_2

    .line 1293
    new-instance v1, Lhqy;

    .end local v1    # "microAppInfo":Lhqy;
    invoke-direct {v1}, Lhqy;-><init>()V

    .line 1294
    iput-object p1, v1, Lhqy;->e:Ljava/lang/String;

    .line 1295
    if-eqz v0, :cond_1

    .line 1296
    iget-object v2, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->corpId:Ljava/lang/String;

    iput-object v2, v1, Lhqy;->a:Ljava/lang/String;

    .line 1297
    iget-wide v2, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lhqy;->c:Ljava/lang/String;

    .line 1298
    iget-wide v2, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lhqy;->b:Ljava/lang/String;

    .line 1299
    iget-object v2, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->name:Ljava/lang/String;

    iput-object v2, v1, Lhqy;->d:Ljava/lang/String;

    .line 1300
    iget-boolean v2, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->isSafeTunnel:Z

    iput-boolean v2, v1, Lhqy;->f:Z

    .line 1301
    iget-object v2, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->safePaths:Ljava/util/List;

    iput-object v2, v1, Lhqy;->g:Ljava/util/List;

    .line 1302
    iget-object v2, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->safeThirdPaths:Ljava/util/List;

    iput-object v2, v1, Lhqy;->h:Ljava/util/List;

    .line 1303
    iget-object v2, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->safeOpenLinkPaths:Ljava/util/List;

    iput-object v2, v1, Lhqy;->i:Ljava/util/List;

    .line 1304
    iget-boolean v2, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->isIntercept:Z

    iput-boolean v2, v1, Lhqy;->j:Z

    .line 1305
    iget-boolean v2, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->isOnlyHpm:Z

    iput-boolean v2, v1, Lhqy;->k:Z

    .line 94
    .restart local v1    # "microAppInfo":Lhqy;
    :cond_1
    iget-object v2, p0, Lhqx;->a:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_2
    if-nez v1, :cond_3

    .line 98
    iget-object v2, p0, Lhqx;->b:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v0    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :cond_3
    const-string/jumbo v2, "safeTunnel"

    const-string/jumbo v3, "appId="

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, ";currentUrl="

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    const-string/jumbo v5, ";\u8fdb\u5165\u5b89\u5168\u901a\u9053\u5224\u65ad=========microAppInfo==="

    aput-object v5, v4, v8

    const/4 v5, 0x3

    aput-object v1, v4, v5

    invoke-static {v2, v3, p2, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    const-string/jumbo v3, "Sandbox"

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v2, "===microAppInfo==="

    aput-object v2, v4, v6

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lhqy;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    aput-object v2, v4, v7

    invoke-static {v3, v4}, Lhrq;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 106
    return-object v1

    .line 104
    :cond_4
    const-string/jumbo v2, "null"

    goto :goto_0
.end method

.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 262
    iget-object v0, p0, Lhqx;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 263
    iget-object v0, p0, Lhqx;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 265
    const-string/jumbo v0, "safeTunnel"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "safetunnelmanager "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "destroy cache"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "fromType"    # Ljava/lang/String;

    .prologue
    .line 351
    invoke-static {p1, p2, p3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitSafeTunnelEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public final a(Lhqy;Ljava/lang/String;)Z
    .locals 9
    .param p1, "microAppInfo"    # Lhqy;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 199
    if-eqz p1, :cond_4

    .line 200
    iget-object v1, p1, Lhqy;->h:Ljava/util/List;

    .line 201
    .local v1, "safeThirdPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 202
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 203
    .local v2, "thirdPath":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 204
    const-string/jumbo v4, "safeTunnel_thirdPath"

    invoke-virtual {p0, p2, v4}, Lhqx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v4, p1, Lhqy;->c:Ljava/lang/String;

    const-string/jumbo v5, "safeTunnel_thirdPath"

    .line 3351
    invoke-static {v4, p2, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitSafeTunnelEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .end local v1    # "safeThirdPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "thirdPath":Ljava/lang/String;
    :goto_0
    return v3

    .line 4317
    .restart local v1    # "safeThirdPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v5, p0, Lhqx;->c:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4321
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    const-string/jumbo v6, "light_app_common_domains"

    invoke-static {v5, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4322
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4326
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 4327
    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/Plugin;->jsonArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    .line 4328
    iget-object v7, p0, Lhqx;->c:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4332
    :goto_1
    const-string/jumbo v5, "safeTunnel"

    const-string/jumbo v7, "restoreCommonDomainsIfNeed="

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v5, v7, v6, v8}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    :cond_2
    iget-object v5, p0, Lhqx;->c:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 220
    .local v0, "commonPath":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 221
    const-string/jumbo v4, "safeTunnel_commonPath"

    invoke-virtual {p0, p2, v4}, Lhqx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v4, p1, Lhqy;->c:Ljava/lang/String;

    const-string/jumbo v5, "safeTunnel_commonPath"

    .line 4351
    invoke-static {v4, p2, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitSafeTunnelEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4329
    .end local v0    # "commonPath":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 4330
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .end local v1    # "safeThirdPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    move v3, v4

    .line 227
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lhqy;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "microAppInfo"    # Lhqy;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 233
    if-eqz p2, :cond_1

    iget-object v1, p2, Lhqy;->g:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 236
    iget-object v1, p2, Lhqy;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 237
    .local v0, "safePath":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    const/4 v1, 0x1

    .line 242
    .end local v0    # "safePath":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "inSafePaths"    # Z
    .param p4, "isOnlyHpm"    # Z

    .prologue
    .line 182
    if-nez p3, :cond_1

    .line 183
    const-string/jumbo v0, "safeTunnel_noInSafePaths"

    invoke-virtual {p0, p2, v0}, Lhqx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string/jumbo v0, "safeTunnel_noInSafePaths"

    .line 1351
    invoke-static {p1, p2, v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitSafeTunnelEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    :goto_0
    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 185
    :cond_1
    if-eqz p4, :cond_0

    .line 186
    const-string/jumbo v0, "safeTunnel_isOnlyHpm"

    invoke-virtual {p0, p2, v0}, Lhqx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string/jumbo v0, "safeTunnel_isOnlyHpm"

    .line 2351
    invoke-static {p1, p2, v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitSafeTunnelEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pageUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lhqx;->a(Ljava/lang/String;)Lhqy;

    move-result-object v0

    .line 130
    .local v0, "microAppInfo":Lhqy;
    if-eqz v0, :cond_0

    .line 131
    iget-object v1, v0, Lhqy;->c:Ljava/lang/String;

    .line 133
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, "NoAppId"

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fromType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 343
    const-string/jumbo v0, "safeTunnel"

    const-string/jumbo v1, "shouldInterceptRequest:"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "fromType="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, p1, v1, v2}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    return-void
.end method

.method public final b(Ljava/lang/String;Lhqy;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "microAppInfo"    # Lhqy;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 247
    if-eqz p2, :cond_1

    iget-object v1, p2, Lhqy;->i:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 249
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 250
    iget-object v1, p2, Lhqy;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 251
    .local v0, "safePath":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    const/4 v1, 0x1

    .line 256
    .end local v0    # "safePath":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pageUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v2, p0, Lhqx;->b:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v1

    .line 141
    :cond_1
    iget-object v2, p0, Lhqx;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhqy;

    .line 142
    .local v0, "microAppInfo":Lhqy;
    if-nez v0, :cond_2

    .line 143
    const-string/jumbo v2, ""

    invoke-virtual {p0, p1, v2}, Lhqx;->a(Ljava/lang/String;Ljava/lang/String;)Lhqy;

    .line 145
    :cond_2
    iget-object v2, p0, Lhqx;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
