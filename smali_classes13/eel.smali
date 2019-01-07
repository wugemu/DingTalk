.class public Leel;
.super Ljava/lang/Object;
.source "OADatasourceImpl.java"

# interfaces
.implements Leek;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Leel;


# instance fields
.field private c:Z

.field private d:J

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Leem;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Leel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leel;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Leel;->c:Z

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Leel;->e:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leel;->f:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leel;->g:Ljava/util/Map;

    .line 388
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Leel;->i:Ljava/util/Map;

    .line 390
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Leel;->j:Ljava/util/Map;

    .line 67
    iput-wide p1, p0, Leel;->d:J

    .line 69
    invoke-static {}, Leen;->b()Leen;

    move-result-object v0

    iput-object v0, p0, Leel;->h:Leem;

    .line 70
    invoke-virtual {p0}, Leel;->e()Z

    .line 71
    return-void
.end method

.method private declared-synchronized a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    monitor-enter p0

    if-nez p1, :cond_1

    .line 126
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 92
    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 93
    .local v1, "item":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    iget-object v2, p0, Leel;->e:Ljava/util/Map;

    iget-wide v4, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 95
    iget-wide v4, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-nez v2, :cond_3

    .line 96
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v4, Ledz$h;->tab_oa:I

    invoke-virtual {v2, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgName:Ljava/lang/String;

    .line 97
    iget-object v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgName:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgNameAlias:Ljava/lang/String;

    .line 99
    :cond_3
    iget-object v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgNameAlias:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 101
    :cond_4
    iget-object v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 102
    iget-object v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgNameAlias:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgName:Ljava/lang/String;

    .line 105
    :cond_5
    iget-object v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgNameAlias:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 106
    iget-object v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgName:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgNameAlias:Ljava/lang/String;

    .line 109
    :cond_6
    const-string/jumbo v4, "oa"

    const-string/jumbo v5, ""

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v7, "buildOrgsCache put key="

    aput-object v7, v6, v2

    const/4 v7, 0x1

    if-eqz v1, :cond_7

    iget-object v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->corpId:Ljava/lang/String;

    :goto_2
    aput-object v2, v6, v7

    .line 110
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-static {v4, v5, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Leel;->e:Ljava/util/Map;

    iget-wide v4, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgCid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 113
    iget-object v2, p0, Leel;->g:Ljava/util/Map;

    iget-object v4, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgCid:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 114
    iget-object v2, p0, Leel;->f:Ljava/util/Map;

    iget-object v4, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgCid:Ljava/lang/String;

    iget-object v5, p0, Leel;->g:Ljava/util/Map;

    iget-object v6, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgCid:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v2, p0, Leel;->g:Ljava/util/Map;

    iget-object v4, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgCid:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 123
    .end local v1    # "item":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "oa"

    const-string/jumbo v3, ""

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "buildOrgsCache err "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 109
    .restart local v1    # "item":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_7
    :try_start_2
    const-string/jumbo v2, ""

    goto :goto_2

    .line 117
    :cond_8
    iget-object v2, p0, Leel;->f:Ljava/util/Map;

    iget-object v4, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgCid:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private b(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 468
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 469
    .local v1, "appIdCacheSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v6, p0, Leel;->j:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 470
    iget-object v6, p0, Leel;->i:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 471
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 472
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 473
    .local v3, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v3, :cond_0

    iget-object v7, v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    if-eqz v7, :cond_0

    .line 474
    iget-object v7, v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 475
    .local v2, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v2, :cond_1

    iget-boolean v8, v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->isSafeTunnel:Z

    if-eqz v8, :cond_1

    .line 476
    iget-boolean v8, p0, Leel;->k:Z

    if-nez v8, :cond_2

    .line 477
    const/4 v8, 0x1

    iput-boolean v8, p0, Leel;->k:Z

    .line 479
    :cond_2
    iget-object v5, v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->safePaths:Ljava/util/List;

    .line 481
    .local v5, "safePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-wide v8, v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, "appId":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 485
    iget-object v8, p0, Leel;->j:Ljava/util/Map;

    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 488
    if-eqz v5, :cond_1

    .line 489
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 490
    .local v4, "path":Ljava/lang/String;
    iget-object v9, p0, Leel;->i:Ljava/util/Map;

    invoke-interface {v9, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 498
    .end local v0    # "appId":Ljava/lang/String;
    .end local v2    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v3    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "safePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    return-void
.end method

.method public static declared-synchronized f()Leek;
    .locals 4

    .prologue
    .line 59
    const-class v1, Leel;

    monitor-enter v1

    :try_start_0
    sget-object v0, Leel;->b:Leel;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Leel;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Leel;-><init>(J)V

    sput-object v0, Leel;->b:Leel;

    .line 63
    :cond_0
    sget-object v0, Leel;->b:Leel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(JJI)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .locals 7
    .param p1, "orgId"    # J
    .param p3, "appId"    # J
    .param p5, "scene"    # I

    .prologue
    .line 554
    invoke-virtual {p0, p1, p2}, Leel;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v2

    .line 555
    .local v2, "orgObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    const/4 v1, 0x0

    .line 556
    .local v1, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 557
    iget-object v3, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 558
    .local v0, "app":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    invoke-virtual {p0, p5, v0}, Leel;->a(ILcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 559
    iget-wide v4, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    cmp-long v4, v4, p3

    if-nez v4, :cond_0

    .line 560
    move-object v1, v0

    .line 566
    .end local v0    # "app":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :cond_1
    return-object v1
.end method

.method public final a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Lcom/alibaba/dingtalk/oabase/models/MicroAppType;
    .locals 4
    .param p1, "appObject"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 599
    sget-object v0, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppTypeUnknown:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    .line 600
    .local v0, "type":Lcom/alibaba/dingtalk/oabase/models/MicroAppType;
    iget-wide v2, p1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    long-to-int v1, v2

    packed-switch v1, :pswitch_data_0

    .line 621
    :goto_0
    :pswitch_0
    return-object v0

    .line 602
    :pswitch_1
    sget-object v0, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppTypeYunPan:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    .line 603
    goto :goto_0

    .line 606
    :pswitch_2
    sget-object v0, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppTypeEmail:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    .line 607
    goto :goto_0

    .line 609
    :pswitch_3
    sget-object v0, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppTypeRiZhi:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    .line 610
    goto :goto_0

    .line 612
    :pswitch_4
    sget-object v0, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppTypeShenPi:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    .line 613
    goto :goto_0

    .line 615
    :pswitch_5
    sget-object v0, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppTypeGongGao:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    .line 616
    goto :goto_0

    .line 618
    :pswitch_6
    sget-object v0, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppTypeQianDao:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    goto :goto_0

    .line 600
    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .locals 9
    .param p1, "orgId"    # J

    .prologue
    .line 198
    const-wide/16 v6, -0x1

    cmp-long v3, p1, v6

    if-nez v3, :cond_1

    .line 199
    invoke-virtual {p0}, Leel;->a()Ljava/util/List;

    move-result-object v0

    .line 200
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 201
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 219
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    :goto_0
    return-object v3

    .line 203
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 206
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    :cond_1
    iget-object v3, p0, Leel;->e:Ljava/util/Map;

    if-eqz v3, :cond_2

    iget-object v3, p0, Leel;->e:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 207
    iget-object v3, p0, Leel;->e:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    goto :goto_0

    .line 210
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 211
    .local v4, "start":J
    iget-object v3, p0, Leel;->h:Leem;

    invoke-interface {v3, p1, p2}, Leem;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v1

    .line 212
    .local v1, "model":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v1, :cond_3

    iget-object v3, p0, Leel;->e:Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 213
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 214
    .local v2, "orgMicroAPPObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-direct {p0, v2}, Leel;->a(Ljava/util/List;)V

    .line 217
    .end local v2    # "orgMicroAPPObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {v6, v7}, Legl;->d(J)V

    move-object v3, v1

    .line 219
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .locals 5
    .param p1, "corpId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 285
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 297
    :goto_0
    return-object v0

    .line 288
    :cond_0
    invoke-virtual {p0}, Leel;->a()Ljava/util/List;

    move-result-object v1

    .line 289
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-nez v1, :cond_1

    move-object v0, v2

    .line 290
    goto :goto_0

    .line 292
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 293
    .local v0, "item":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    iget-object v4, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->corpId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->corpId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .end local v0    # "item":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_3
    move-object v0, v2

    .line 297
    goto :goto_0
.end method

.method public final a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "orgId"    # J
    .param p3, "appId"    # J
    .param p5, "ddCid"    # Ljava/lang/String;
    .param p6, "ddAction"    # Ljava/lang/String;
    .param p7, "from"    # Ljava/lang/String;
    .param p8, "clickFrom"    # Ljava/lang/String;

    .prologue
    .line 670
    const/4 v10, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v10}, Leel;->a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "orgId"    # J
    .param p3, "appId"    # J
    .param p5, "ddCid"    # Ljava/lang/String;
    .param p6, "ddAction"    # Ljava/lang/String;
    .param p7, "from"    # Ljava/lang/String;
    .param p8, "clickFrom"    # Ljava/lang/String;
    .param p9, "conversationTitle"    # Ljava/lang/String;

    .prologue
    .line 625
    invoke-virtual/range {p0 .. p2}, Leel;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v4

    .line 626
    .local v4, "appObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v4, :cond_7

    .line 627
    iget-object v3, v4, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 628
    .local v3, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_7

    .line 629
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 630
    .local v2, "app":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v2, :cond_0

    iget-wide v12, v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    cmp-long v11, v12, p3

    if-nez v11, :cond_0

    .line 631
    invoke-static {v2}, Legf;->a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/lang/String;

    move-result-object v8

    .line 632
    .local v8, "homePageUrl":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 633
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    .line 634
    .local v5, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v5, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 635
    const/4 v6, 0x0

    .line 1806
    .local v6, "count":[Ljava/lang/String;
    invoke-static {v8}, Lcpx;->a(Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 1807
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1808
    const/4 v10, 0x1

    .line 636
    :goto_0
    if-eqz v10, :cond_1

    .line 638
    :try_start_0
    const-string/jumbo v10, "UTF-8"

    invoke-static {v8, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 639
    .local v9, "url":Ljava/lang/String;
    const-string/jumbo v10, "\\?"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 645
    .end local v9    # "url":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v6, :cond_6

    array-length v10, v6

    const/4 v11, 0x2

    if-le v10, v11, :cond_6

    .line 646
    const-string/jumbo v10, "&dd_cid="

    invoke-virtual {v5, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 651
    :goto_2
    const-string/jumbo v10, "&dd_action="

    invoke-virtual {v5, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    move-object/from16 v0, p6

    invoke-virtual {v10, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 652
    const-string/jumbo v10, "&dd_from="

    invoke-virtual {v5, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 653
    if-eqz p8, :cond_2

    .line 654
    const-string/jumbo v10, "&dd_click_from="

    invoke-virtual {v5, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    move-object/from16 v0, p8

    invoke-virtual {v10, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 656
    :cond_2
    if-eqz p9, :cond_3

    .line 657
    const-string/jumbo v10, "&conversation_title="

    invoke-virtual {v5, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    move-object/from16 v0, p9

    invoke-virtual {v10, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 659
    :cond_3
    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 666
    .end local v2    # "app":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v3    # "appList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v5    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v6    # "count":[Ljava/lang/String;
    .end local v8    # "homePageUrl":Ljava/lang/String;
    :cond_4
    :goto_3
    return-object v8

    .line 1810
    .restart local v2    # "app":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .restart local v3    # "appList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .restart local v5    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v6    # "count":[Ljava/lang/String;
    .restart local v8    # "homePageUrl":Ljava/lang/String;
    :cond_5
    const/4 v10, 0x0

    goto :goto_0

    .line 640
    :catch_0
    move-exception v7

    .line 641
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 648
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_6
    const-string/jumbo v10, "?dd_cid="

    invoke-virtual {v5, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_2

    .line 666
    .end local v2    # "app":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v3    # "appList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v5    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v6    # "count":[Ljava/lang/String;
    .end local v8    # "homePageUrl":Ljava/lang/String;
    :cond_7
    const/4 v8, 0x0

    goto :goto_3
.end method

.method public final a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # J

    .prologue
    const-wide/16 v6, -0x1

    .line 375
    const/4 v0, 0x0

    .line 1365
    .local v0, "homePage":Ljava/lang/String;
    const-string/jumbo v3, "current_org_id_key"

    invoke-static {v3, v6, v7}, Lcpk;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1367
    cmp-long v3, v6, v4

    if-eqz v3, :cond_2

    .line 1368
    invoke-virtual {p0, v4, v5}, Leel;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v2

    .line 377
    .local v2, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 378
    iget-object v3, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 379
    .local v1, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    iget-wide v4, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    cmp-long v4, v4, p2

    if-nez v4, :cond_0

    .line 380
    invoke-static {v1}, Legf;->a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .end local v1    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :cond_1
    return-object v0

    .line 1371
    .end local v2    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final a()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 130
    const-string/jumbo v3, "oa"

    const-string/jumbo v6, ""

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "fetchOAData mOrgsCache.size() "

    aput-object v8, v7, v10

    iget-object v8, p0, Leel;->e:Ljava/util/Map;

    .line 131
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const-string/jumbo v8, " mBuildData="

    aput-object v8, v7, v11

    iget-boolean v8, p0, Leel;->c:Z

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 130
    invoke-static {v3, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :try_start_0
    iget-object v3, p0, Leel;->e:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_4

    iget-boolean v3, p0, Leel;->c:Z

    if-eqz v3, :cond_4

    .line 1181
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    .line 1182
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    .line 1183
    if-eqz v3, :cond_0

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-nez v6, :cond_1

    .line 1184
    :cond_0
    const/4 v1, 0x0

    .line 135
    .local v1, "employeeExtension":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Leel;->e:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 136
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    new-instance v3, Leel$1;

    invoke-direct {v3, p0, v1}, Leel$1;-><init>(Leel;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 174
    .end local v1    # "employeeExtension":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :goto_1
    return-object v2

    .line 1185
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    :cond_1
    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1186
    if-eqz v3, :cond_2

    .line 1188
    iget-boolean v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->isMainOrg:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_2

    move-object v1, v3

    .line 1189
    goto :goto_0

    .line 1192
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "oa"

    const-string/jumbo v6, ""

    new-array v7, v11, [Ljava/lang/String;

    const-string/jumbo v8, "fetchOAData from cache exception: "

    aput-object v8, v7, v10

    .line 154
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 153
    invoke-static {v3, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 159
    .local v4, "start":J
    iget-object v3, p0, Leel;->h:Leem;

    invoke-interface {v3}, Leem;->a()Ljava/util/List;

    move-result-object v2

    .line 160
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    invoke-direct {p0, v2}, Leel;->a(Ljava/util/List;)V

    .line 161
    iput-boolean v9, p0, Leel;->c:Z

    .line 164
    :try_start_1
    const-string/jumbo v6, "oa"

    const-string/jumbo v7, ""

    const/4 v3, 0x6

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v9, "fetchOAData fromLocal listSize="

    aput-object v9, v8, v3

    const/4 v9, 0x1

    if-nez v2, :cond_5

    const-string/jumbo v3, "0"

    .line 166
    :goto_2
    aput-object v3, v8, v9

    const/4 v3, 0x2

    const-string/jumbo v9, ", mOrgsCache.size()="

    aput-object v9, v8, v3

    const/4 v3, 0x3

    iget-object v9, p0, Leel;->e:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    const/4 v3, 0x4

    const-string/jumbo v9, "all OrgMicroAPPObject = "

    aput-object v9, v8, v3

    const/4 v3, 0x5

    .line 167
    invoke-static {v2}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 165
    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-static {v6, v7, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {v6, v7}, Legl;->c(J)V

    goto/16 :goto_1

    .line 166
    :cond_5
    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_3
.end method

.method public final a(I)Ljava/util/List;
    .locals 10
    .param p1, "scene"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 507
    invoke-virtual {p0}, Leel;->a()Ljava/util/List;

    move-result-object v2

    .line 508
    .local v2, "orgs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 509
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 510
    .local v4, "resultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 512
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 513
    .local v1, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v1, :cond_0

    iget-object v6, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    if-eqz v6, :cond_0

    .line 514
    iget-object v6, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 515
    .local v0, "app":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v0}, Leel;->a(ILcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 516
    iget-wide v8, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 521
    .end local v0    # "app":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v1    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_2
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 523
    :cond_3
    new-instance v5, Leel$2;

    invoke-direct {v5, p0}, Leel$2;-><init>(Leel;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 529
    return-object v3
.end method

.method public final a(JI)Ljava/util/List;
    .locals 5
    .param p1, "orgId"    # J
    .param p3, "scene"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 534
    invoke-virtual {p0, p1, p2}, Leel;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v1

    .line 535
    .local v1, "orgObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 537
    iget-object v3, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 538
    .local v0, "app":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    invoke-virtual {p0, p3, v0}, Leel;->a(ILcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 539
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 543
    .end local v0    # "app":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :cond_1
    new-instance v3, Leel$3;

    invoke-direct {v3, p0}, Leel$3;-><init>(Leel;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 549
    return-object v2
.end method

.method public final a(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "scene"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 571
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    .line 594
    :goto_0
    return-object v3

    .line 572
    :cond_0
    invoke-virtual {p0}, Leel;->a()Ljava/util/List;

    move-result-object v2

    .line 573
    .local v2, "orgs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 575
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 576
    .local v1, "appObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    iget-object v5, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgCid:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 577
    iget-object v4, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 578
    iget-object v4, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 579
    .local v0, "app":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    invoke-virtual {p0, p2, v0}, Leel;->a(ILcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 580
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 588
    .end local v0    # "app":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v1    # "appObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_3
    new-instance v4, Leel$4;

    invoke-direct {v4, p0}, Leel$4;-><init>(Leel;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public final declared-synchronized a(Z)V
    .locals 3
    .param p1, "saveToTemp"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Leel;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 226
    iget-object v0, p0, Leel;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 227
    if-eqz p1, :cond_0

    .line 228
    iget-object v0, p0, Leel;->g:Ljava/util/Map;

    iget-object v1, p0, Leel;->f:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 230
    :cond_0
    iget-object v0, p0, Leel;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Leel;->c:Z

    .line 233
    const-string/jumbo v0, "oa"

    sget-object v1, Leel;->a:Ljava/lang/String;

    const-string/jumbo v2, "clear success."

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(ILcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Z
    .locals 2
    .param p1, "scene"    # I
    .param p2, "appObject"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 675
    if-nez p2, :cond_1

    .line 678
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->localtion:I

    and-int/2addr v1, p1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(J)V
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 502
    const-string/jumbo v0, "current_org_id_key"

    invoke-static {v0, p1, p2}, Lcpk;->b(Ljava/lang/String;J)V

    .line 503
    return-void
.end method

.method public final declared-synchronized b(Ljava/lang/String;I)V
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "unreadCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 713
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Leel;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Leel;->f:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    :cond_0
    iget-object v0, p0, Leel;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 717
    iget-object v0, p0, Leel;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    :cond_1
    monitor-exit p0

    return-void

    .line 713
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 241
    iget-object v2, p0, Leel;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v1

    .line 244
    :cond_1
    invoke-virtual {p0}, Leel;->a()Ljava/util/List;

    move-result-object v0

    .line 245
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 248
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Z
    .locals 6
    .param p1, "microAPPObject"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 731
    const/4 v0, 0x0

    .line 732
    .local v0, "isShowUpdate":Z
    if-eqz p1, :cond_0

    .line 733
    iget-boolean v0, p1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->hintShow:Z

    .line 734
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "micro_app_show_update"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget v2, p1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->hintVersion:I

    if-lt v1, v2, :cond_0

    .line 735
    const/4 v0, 0x0

    .line 738
    :cond_0
    return v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 4
    .param p1, "orgCid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 683
    invoke-virtual {p0}, Leel;->a()Ljava/util/List;

    move-result-object v0

    .line 684
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v0, :cond_1

    .line 685
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 686
    .local v1, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgCid:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 687
    const/4 v2, 0x1

    .line 691
    .end local v1    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final c()J
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v12, -0x1

    const/4 v10, 0x0

    .line 340
    const-string/jumbo v5, "current_org_id_key"

    invoke-static {v5, v12, v13}, Lcpk;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 343
    .local v0, "currentOrgId":J
    const-string/jumbo v5, "oa"

    const-string/jumbo v6, ""

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "getCurrentOrgId currentOrgId "

    aput-object v8, v7, v10

    const/4 v8, 0x1

    .line 344
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 343
    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    cmp-long v5, v12, v0

    if-eqz v5, :cond_1

    .line 347
    invoke-virtual {p0, v0, v1}, Leel;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v2

    .line 348
    .local v2, "model":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-nez v2, :cond_0

    .line 349
    const-wide/16 v0, -0x1

    .line 361
    .end local v2    # "model":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_0
    :goto_0
    return-wide v0

    .line 352
    :cond_1
    invoke-virtual {p0}, Leel;->a()Ljava/util/List;

    move-result-object v4

    .line 353
    .local v4, "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 354
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 355
    .local v3, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v3, :cond_0

    .line 356
    iget-wide v0, v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    goto :goto_0
.end method

.method public final c(J)Z
    .locals 7
    .param p1, "orgId"    # J

    .prologue
    const/4 v1, 0x1

    .line 815
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    .line 816
    .local v0, "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e(J)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 817
    .local v1, "isAdmin":Z
    :goto_0
    const-string/jumbo v2, "oa"

    sget-object v3, Leel;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isAdmin of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    return v1

    .line 816
    .end local v1    # "isAdmin":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final c(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Z
    .locals 6
    .param p1, "microAPPObject"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 832
    if-eqz p1, :cond_0

    .line 833
    const-wide/16 v2, 0x1

    iget-wide v4, p1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->config:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 835
    :cond_0
    return v0
.end method

.method public final declared-synchronized c(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 723
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Leel;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    const/4 v0, 0x1

    .line 726
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 723
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 414
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-object v0

    .line 415
    :cond_1
    iget-boolean v2, p0, Leel;->k:Z

    if-eqz v2, :cond_0

    .line 416
    iget-object v2, p0, Leel;->i:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 417
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 418
    iget-object v2, p0, Leel;->i:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 419
    .local v0, "app":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    goto :goto_0
.end method

.method public final declared-synchronized d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 781
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Leel;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 782
    .local v0, "cid":Ljava/lang/String;
    iget-object v2, p0, Leel;->f:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 781
    .end local v0    # "cid":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 784
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public final d(J)Z
    .locals 7
    .param p1, "orgId"    # J

    .prologue
    .line 765
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    .line 766
    .local v0, "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    .line 767
    .local v1, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    const/4 v2, 0x0

    .line 768
    .local v2, "result":Z
    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->roles:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->roles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 769
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->roles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 770
    .local v3, "role":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/16 v4, 0x64

    if-ne v3, v4, :cond_0

    .line 771
    :cond_1
    const/4 v2, 0x1

    .line 776
    .end local v3    # "role":I
    :cond_2
    return v2
.end method

.method public final e(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 432
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-object v0

    .line 433
    :cond_1
    iget-boolean v1, p0, Leel;->k:Z

    if-eqz v1, :cond_0

    .line 434
    iget-object v0, p0, Leel;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    goto :goto_0
.end method

.method public final e(J)Ljava/lang/String;
    .locals 3
    .param p1, "oid"    # J

    .prologue
    .line 823
    invoke-virtual {p0, p1, p2}, Leel;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v0

    .line 824
    .local v0, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v0, :cond_0

    .line 825
    iget-object v1, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->corpId:Ljava/lang/String;

    .line 827
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 445
    const-string/jumbo v4, "oa"

    const-string/jumbo v5, ""

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "fetchOAData mOrgsCache.size() "

    aput-object v7, v6, v3

    iget-object v7, p0, Leel;->e:Ljava/util/Map;

    .line 446
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const-string/jumbo v7, " buildSafePaths"

    aput-object v7, v6, v8

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 445
    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :try_start_0
    iget-object v4, p0, Leel;->e:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-boolean v4, p0, Leel;->c:Z

    if-eqz v4, :cond_0

    .line 450
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Leel;->e:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 454
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    :goto_0
    invoke-direct {p0, v1}, Leel;->b(Ljava/util/List;)V

    .line 459
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    :goto_1
    return v2

    .line 452
    :cond_0
    iget-object v4, p0, Leel;->h:Leem;

    invoke-interface {v4}, Leem;->a()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    goto :goto_0

    .line 455
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "oa"

    const-string/jumbo v5, ""

    new-array v6, v8, [Ljava/lang/String;

    const-string/jumbo v7, "buildSafePaths err "

    aput-object v7, v6, v3

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 457
    goto :goto_1
.end method
