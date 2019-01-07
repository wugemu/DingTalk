.class public Lddf;
.super Ljava/lang/Object;
.source "ChannelDataFetcherImpl.java"

# interfaces
.implements Lddi;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field private static volatile f:Lddi;


# instance fields
.field private c:J

.field private d:J

.field private e:Lddk;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
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

.field private i:Ljava/util/Map;
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

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    :try_start_0
    const-string/jumbo v1, "$"

    const-string/jumbo v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lddf;->a:Ljava/lang/String;

    .line 56
    const-string/jumbo v1, "$CORPID$"

    const-string/jumbo v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lddf;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-void

    .line 57
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_0
    move-exception v0

    .line 58
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private constructor <init>(J)V
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lddf;->g:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lddf;->h:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lddf;->i:Ljava/util/Map;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->j:Z

    .line 98
    iput-wide p1, p0, Lddf;->c:J

    .line 100
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lddh;->a(Landroid/content/Context;J)Lddk;

    move-result-object v0

    iput-object v0, p0, Lddf;->e:Lddk;

    .line 101
    return-void
.end method

.method public static declared-synchronized a()Lddi;
    .locals 6

    .prologue
    .line 85
    const-class v1, Lddf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lddf;->f:Lddi;

    if-nez v0, :cond_1

    .line 86
    const-class v2, Lddf;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    :try_start_1
    sget-object v0, Lddf;->f:Lddi;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lddf;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lddf;-><init>(J)V

    sput-object v0, Lddf;->f:Lddi;

    .line 91
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :cond_1
    :try_start_2
    sget-object v0, Lddf;->f:Lddi;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 91
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

    .line 85
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "rawUrl"    # Ljava/lang/String;
    .param p1, "corpId"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v1, p0

    .line 177
    :goto_0
    return-object v1

    .line 168
    :cond_1
    move-object v1, p0

    .line 171
    .local v1, "richUrl":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lddf;->b:Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    const-string/jumbo v2, "\\$CORPID\\$"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized b(Ljava/util/List;)V
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
    .line 504
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;>;"
    monitor-enter p0

    if-nez p1, :cond_1

    .line 537
    :cond_0
    monitor-exit p0

    return-void

    .line 508
    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    .line 509
    .local v0, "item":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    iget-object v2, p0, Lddf;->g:Ljava/util/Map;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 511
    iget-wide v2, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgId:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 513
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgName:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgNameAlias:Ljava/lang/String;

    .line 515
    :cond_3
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgNameAlias:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 517
    :cond_4
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 518
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgNameAlias:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgName:Ljava/lang/String;

    .line 521
    :cond_5
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgNameAlias:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 522
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgName:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgNameAlias:Ljava/lang/String;

    .line 525
    :cond_6
    iget-object v2, p0, Lddf;->g:Ljava/util/Map;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgCid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 527
    iget-object v2, p0, Lddf;->i:Ljava/util/Map;

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgCid:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 528
    iget-object v2, p0, Lddf;->h:Ljava/util/Map;

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgCid:Ljava/lang/String;

    iget-object v4, p0, Lddf;->i:Ljava/util/Map;

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgCid:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    iget-object v2, p0, Lddf;->i:Ljava/util/Map;

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgCid:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 504
    .end local v0    # "item":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 531
    .restart local v0    # "item":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    :cond_7
    :try_start_1
    iget-object v2, p0, Lddf;->h:Ljava/util/Map;

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgCid:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(J)Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    .locals 7
    .param p1, "orgId"    # J

    .prologue
    .line 260
    const-wide/16 v4, -0x1

    cmp-long v3, p1, v4

    if-nez v3, :cond_1

    .line 261
    invoke-virtual {p0}, Lddf;->e()Ljava/util/List;

    move-result-object v0

    .line 262
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 263
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    .line 279
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;>;"
    :goto_0
    return-object v3

    .line 265
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 268
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;>;"
    :cond_1
    iget-object v3, p0, Lddf;->g:Ljava/util/Map;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lddf;->g:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 269
    iget-object v3, p0, Lddf;->g:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    goto :goto_0

    .line 272
    :cond_2
    iget-object v3, p0, Lddf;->e:Lddk;

    invoke-interface {v3, p1, p2}, Lddk;->a(J)Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    move-result-object v1

    .line 273
    .local v1, "model":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    if-eqz v1, :cond_3

    iget-object v3, p0, Lddf;->g:Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 274
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 275
    .local v2, "orgMicroAPPObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-direct {p0, v2}, Lddf;->b(Ljava/util/List;)V

    .end local v2    # "orgMicroAPPObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;>;"
    :cond_3
    move-object v3, v1

    .line 279
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    .locals 3
    .param p1, "orgCid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 284
    iget-object v1, p0, Lddf;->g:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 285
    iget-object v1, p0, Lddf;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    .line 286
    .local v0, "channelOrgModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgCid:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    .end local v0    # "channelOrgModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;J)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "senderId"    # J

    .prologue
    const/4 v10, 0x0

    .line 135
    invoke-virtual {p0}, Lddf;->e()Ljava/util/List;

    move-result-object v3

    .line 136
    .local v3, "channelOrgModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;>;"
    const-string/jumbo v5, ""

    .line 137
    .local v5, "homePage":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 138
    .local v4, "corpId":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 140
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    .line 141
    .local v2, "channelOrgModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    iget-object v1, v2, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->serviceWindowAppModels:Ljava/util/List;

    .line 142
    .local v1, "channelAppModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 143
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    .line 144
    .local v0, "channelAppModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;
    iget-wide v8, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->senderUid:J

    cmp-long v8, p2, v8

    if-nez v8, :cond_1

    .line 145
    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->rawHomepage:Ljava/lang/String;

    .line 146
    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->corpId:Ljava/lang/String;

    .line 153
    .end local v0    # "channelAppModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;
    .end local v1    # "channelAppModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;>;"
    .end local v2    # "channelOrgModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    :cond_2
    invoke-static {v5, v4}, Lddf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1181
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    if-nez p1, :cond_4

    .line 1192
    :cond_3
    :goto_0
    return-void

    .line 1185
    :cond_4
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1186
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1187
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1188
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1189
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1190
    const/16 v8, 0xc0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 1191
    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 1192
    const-string/jumbo v6, "NAVIGATOR"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v6, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    invoke-interface {v6, v5, v10, v10}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0

    .line 1195
    :cond_5
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1196
    const-string/jumbo v7, "url"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    const-string/jumbo v7, "title"

    invoke-virtual {v6, v7, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v7

    invoke-virtual {v7, p1, v6}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final a(Lcma;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 376
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lddf$2;

    invoke-direct {v1, p0, p1}, Lddf$2;-><init>(Lddf;Lcma;)V

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/wukong/im/ConversationService;->listConversations(Lcom/alibaba/wukong/Callback;II)V

    .line 429
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "unreadCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 333
    iget-object v0, p0, Lddf;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lddf;->h:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_0
    iget-object v0, p0, Lddf;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lddf;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_1
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "serviceWindowOrgModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;>;"
    iget-object v0, p0, Lddf;->e:Lddk;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lddf;->e:Lddk;

    invoke-interface {v0, p1}, Lddk;->a(Ljava/util/List;)V

    .line 227
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "saveToTemp"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 231
    iget-object v0, p0, Lddf;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 232
    iget-object v0, p0, Lddf;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 234
    iget-object v0, p0, Lddf;->i:Ljava/util/Map;

    iget-object v1, p0, Lddf;->h:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 236
    iget-object v0, p0, Lddf;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lddf;->j:Z

    .line 238
    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    .locals 3
    .param p1, "corpId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 296
    iget-object v1, p0, Lddf;->g:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 297
    iget-object v1, p0, Lddf;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    .line 298
    .local v0, "channelOrgModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->corpId:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    .end local v0    # "channelOrgModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(J)Ljava/lang/String;
    .locals 3
    .param p1, "orgId"    # J

    .prologue
    .line 370
    invoke-virtual {p0, p1, p2}, Lddf;->a(J)Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    move-result-object v0

    .line 371
    .local v0, "channelOrgModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->corpId:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lddf;->e:Lddk;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lddf;->e:Lddk;

    invoke-interface {v0}, Lddk;->a()Ljava/util/List;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()J
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 113
    iget-wide v4, p0, Lddf;->d:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    iget-wide v4, p0, Lddf;->d:J

    .line 125
    :goto_0
    return-wide v4

    .line 114
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    .line 115
    .local v0, "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 116
    .local v2, "userProfileExt":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-nez v3, :cond_2

    .line 117
    :cond_1
    iput-wide v6, p0, Lddf;->d:J

    .line 118
    :cond_2
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 119
    .local v1, "orgEmployee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_3

    .line 121
    iget-boolean v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->isMainOrg:Z

    if-eqz v4, :cond_3

    .line 122
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iput-wide v4, p0, Lddf;->d:J

    goto :goto_1

    .line 125
    .end local v1    # "orgEmployee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_4
    iget-wide v4, p0, Lddf;->d:J

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1
    .param p1, "conversationId"    # Ljava/lang/String;

    .prologue
    .line 308
    iget-object v0, p0, Lddf;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    const/4 v0, 0x1

    .line 311
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)J
    .locals 4
    .param p1, "corpId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lddf;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    move-result-object v0

    .line 365
    .local v0, "channelOrgModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgId:J

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lddf;->d:J

    .line 130
    return-void
.end method

.method public final e()Ljava/util/List;
    .locals 3
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

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 242
    iget-object v2, p0, Lddf;->g:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lddf;->j:Z

    if-eqz v2, :cond_0

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lddf;->g:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 244
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;>;"
    new-instance v2, Lddf$1;

    invoke-direct {v2, p0}, Lddf$1;-><init>(Lddf;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v1, v0

    .line 255
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;>;"
    .local v1, "list":Ljava/lang/Object;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;>;"
    :goto_0
    return-object v1

    .line 252
    .end local v1    # "list":Ljava/lang/Object;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;>;"
    :cond_0
    iget-object v2, p0, Lddf;->e:Lddk;

    invoke-interface {v2}, Lddk;->a()Ljava/util/List;

    move-result-object v0

    .line 253
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;>;"
    invoke-direct {p0, v0}, Lddf;->b(Ljava/util/List;)V

    .line 254
    const/4 v2, 0x1

    iput-boolean v2, p0, Lddf;->j:Z

    move-object v1, v0

    .line 255
    .restart local v1    # "list":Ljava/lang/Object;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;>;"
    goto :goto_0
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 492
    invoke-virtual {p0}, Lddf;->e()Ljava/util/List;

    move-result-object v1

    .line 493
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;>;"
    if-eqz v1, :cond_1

    .line 494
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    .line 495
    .local v0, "channelOrgModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgCid:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 496
    const/4 v2, 0x1

    .line 500
    .end local v0    # "channelOrgModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 343
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_channel_app_unread_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 345
    return-void
.end method
