.class public final Leen;
.super Ljava/lang/Object;
.source "OAXmlLocalDataAccessor.java"

# interfaces
.implements Leem;


# static fields
.field private static a:Leen;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Leen;->b:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public static declared-synchronized b()Leen;
    .locals 2

    .prologue
    .line 40
    const-class v1, Leen;

    monitor-enter v1

    :try_start_0
    sget-object v0, Leen;->a:Leen;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Leen;

    invoke-direct {v0}, Leen;-><init>()V

    sput-object v0, Leen;->a:Leen;

    .line 44
    :cond_0
    sget-object v0, Leen;->a:Leen;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static c()Ljava/lang/String;
    .locals 6

    .prologue
    .line 130
    const-string/jumbo v0, "%s#%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "sp_key_oadata"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .locals 7
    .param p1, "orgId"    # J

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-virtual {p0}, Leen;->a()Ljava/util/List;

    move-result-object v1

    .line 78
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-nez v1, :cond_0

    move-object v0, v2

    .line 86
    :goto_0
    return-object v0

    .line 81
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 82
    .local v0, "item":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    iget-wide v4, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    cmp-long v4, p1, v4

    if-nez v4, :cond_1

    goto :goto_0

    .end local v0    # "item":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_2
    move-object v0, v2

    .line 86
    goto :goto_0
.end method

.method public final declared-synchronized a()Ljava/util/List;
    .locals 12
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

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    invoke-static {}, Leen;->c()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "currentKey":Ljava/lang/String;
    const/4 v5, 0x0

    .line 58
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 59
    .local v8, "start":J
    iget-object v7, p0, Leen;->b:Landroid/content/Context;

    const-string/jumbo v10, "sp_oadata"

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 60
    .local v6, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v7, ""

    invoke-interface {v6, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "data":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 64
    :try_start_1
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 65
    .local v4, "gson":Lcom/google/gson/Gson;
    new-instance v7, Leen$1;

    invoke-direct {v7, p0}, Leen$1;-><init>(Leen;)V

    invoke-virtual {v7}, Leen$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/List;

    move-object v5, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .end local v4    # "gson":Lcom/google/gson/Gson;
    :cond_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    invoke-static {v10, v11}, Legl;->a(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v5

    .line 72
    :goto_0
    monitor-exit p0

    return-object v7

    .line 67
    :catch_0
    move-exception v7

    :try_start_3
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    const/4 v7, 0x0

    goto :goto_0

    .line 54
    .end local v2    # "currentKey":Ljava/lang/String;
    .end local v3    # "data":Ljava/lang/String;
    .end local v5    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    .end local v6    # "sp":Landroid/content/SharedPreferences;
    .end local v8    # "start":J
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public final declared-synchronized a(Ljava/util/List;)V
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
    .line 90
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    monitor-enter p0

    if-nez p1, :cond_0

    .line 112
    :goto_0
    monitor-exit p0

    return-void

    .line 93
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 95
    .local v2, "start":J
    :try_start_1
    iget-object v5, p0, Leen;->b:Landroid/content/Context;

    const-string/jumbo v6, "sp_oadata"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 96
    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v5, Leen$2;

    invoke-direct {v5, p0}, Leen$2;-><init>(Leen;)V

    .line 98
    invoke-virtual {v5}, Leen$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 96
    invoke-static {p1, v5}, Lcor;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 100
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-static {}, Leen;->c()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 101
    const-string/jumbo v5, "oa"

    const-string/jumbo v6, "saveDataToLocal"

    const-string/jumbo v7, "saveDataToLocal success."

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v4    # "value":Ljava/lang/String;
    :goto_1
    const/4 v5, 0x0

    :try_start_2
    invoke-static {}, Leen;->c()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcmz;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Legl;->b(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 90
    .end local v2    # "start":J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 103
    .restart local v1    # "sp":Landroid/content/SharedPreferences;
    .restart local v2    # "start":J
    .restart local v4    # "value":Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string/jumbo v5, "oa"

    const-string/jumbo v6, "saveDataToLocal"

    const-string/jumbo v7, "saveDataToLocal gson tojson ret null."

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 105
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    const-string/jumbo v5, "oa"

    const-string/jumbo v6, "saveDataToLocal"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "saveDataToLocal ex="

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 108
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 107
    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
