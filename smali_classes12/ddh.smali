.class public final Lddh;
.super Ljava/lang/Object;
.source "ChannelLocalDataHandlerImpl.java"

# interfaces
.implements Lddk;


# static fields
.field private static volatile c:Lddk;


# instance fields
.field private a:Landroid/content/Context;

.field private b:J


# direct methods
.method private constructor <init>(Landroid/content/Context;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # J

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lddh;->a:Landroid/content/Context;

    .line 44
    iput-wide p2, p0, Lddh;->b:J

    .line 45
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;J)Lddk;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # J

    .prologue
    .line 30
    const-class v1, Lddh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lddh;->c:Lddk;

    if-nez v0, :cond_1

    .line 31
    const-class v2, Lddf;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    :try_start_1
    sget-object v0, Lddh;->c:Lddk;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lddh;

    invoke-direct {v0, p0, p1, p2}, Lddh;-><init>(Landroid/content/Context;J)V

    sput-object v0, Lddh;->c:Lddk;

    .line 36
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :cond_1
    :try_start_2
    sget-object v0, Lddh;->c:Lddk;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 36
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

    .line 30
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b()Ljava/lang/String;
    .locals 6

    .prologue
    .line 102
    const-string/jumbo v0, "%s#%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "sp_key_channel_data"

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
.method public final a(J)Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    .locals 7
    .param p1, "orgId"    # J

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-virtual {p0}, Lddh;->a()Ljava/util/List;

    move-result-object v1

    .line 69
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;>;"
    if-nez v1, :cond_0

    move-object v0, v2

    .line 77
    :goto_0
    return-object v0

    .line 72
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    .line 73
    .local v0, "item":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgId:J

    cmp-long v4, p1, v4

    if-nez v4, :cond_1

    goto :goto_0

    .end local v0    # "item":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    :cond_2
    move-object v0, v2

    .line 77
    goto :goto_0
.end method

.method public final a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 50
    iget-object v2, p0, Lddh;->a:Landroid/content/Context;

    const-string/jumbo v4, "sp_channel_data"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 51
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-static {}, Lddh;->b()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, ""

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "data":Ljava/lang/String;
    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v3

    .line 60
    :goto_0
    return-object v2

    .line 1106
    :cond_0
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 56
    new-instance v4, Lddh$1;

    invoke-direct {v4, p0}, Lddh$1;-><init>(Lddh;)V

    .line 57
    invoke-virtual {v4}, Lddh$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 56
    invoke-virtual {v2, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v2

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {}, Lddh;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object v2, v3

    .line 60
    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;>;"
    if-nez p1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 86
    :cond_0
    :try_start_0
    iget-object v2, p0, Lddh;->a:Landroid/content/Context;

    const-string/jumbo v3, "sp_channel_data"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 87
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {}, Lddh;->b()Ljava/lang/String;

    move-result-object v3

    .line 2106
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 87
    new-instance v5, Lddh$2;

    invoke-direct {v5, p0}, Lddh$2;-><init>(Lddh;)V

    .line 89
    invoke-virtual {v5}, Lddh$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 87
    invoke-virtual {v4, p1, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 89
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
