.class public final Lidf;
.super Ljava/lang/Object;
.source "FollowServiceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/FollowService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lidf$a;,
        Lidf$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lidf;-><init>()V

    return-void
.end method

.method public static a()Lidf;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lidf$b;->a:Lidf;

    return-object v0
.end method

.method private a(ILcom/alibaba/wukong/im/Follow$FollowStatus;ILcom/alibaba/wukong/Callback;)V
    .locals 10
    .param p1, "offset"    # I
    .param p2, "status"    # Lcom/alibaba/wukong/im/Follow$FollowStatus;
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/alibaba/wukong/im/Follow$FollowStatus;",
            "I",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Follow;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 97
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Follow;>;>;"
    if-gtz p3, :cond_1

    .line 98
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid count"

    invoke-static {p4, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-static {p4}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const/4 v9, 0x0

    .line 107
    .local v9, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] FollowServ"

    .line 4014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v9

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "fetch Follow "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 109
    new-instance v0, Lidf$2;

    new-instance v2, Liaf$a;

    invoke-direct {v2, p4}, Liaf$a;-><init>(Lcom/alibaba/wukong/Callback;)V

    const/4 v3, 0x0

    .line 4234
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Liaq;->k()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move v5, p1

    move v6, p3

    move-object v7, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lidf$2;-><init>(Lidf;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;IILcom/alibaba/wukong/im/Follow$FollowStatus;Lcom/alibaba/wukong/Callback;)V

    .line 116
    invoke-virtual {v0}, Lidf$2;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5030
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    .line 6030
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    .line 119
    throw v0
.end method


# virtual methods
.method public final addFollowListener(Lcom/alibaba/wukong/im/FollowListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/wukong/im/FollowListener;

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 42
    invoke-static {p1}, Lidc;->a(Lcom/alibaba/wukong/im/FollowListener;)V

    .line 44
    :cond_0
    return-void
.end method

.method public final fetchAllFollows(Lcom/alibaba/wukong/Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Follow;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 66
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Follow;>;>;"
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    .line 70
    .local v0, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v1, "[TAG] FollowServ"

    .line 1014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 71
    const-string/jumbo v1, "fetchAllFollow"

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 72
    new-instance v1, Lidf$1;

    new-instance v2, Liaf$a;

    invoke-direct {v2, p1}, Liaf$a;-><init>(Lcom/alibaba/wukong/Callback;)V

    const/4 v3, 0x1

    .line 1234
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v4

    .line 72
    invoke-virtual {v4}, Liaq;->k()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lidf$1;-><init>(Lidf;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    .line 88
    invoke-virtual {v1}, Lidf$1;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v1

    .line 3030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 91
    throw v1
.end method

.method public final follow(JJLcom/alibaba/wukong/Callback;)V
    .locals 11
    .param p1, "tag"    # J
    .param p3, "openId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Follow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p5, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Follow;>;"
    const/4 v0, 0x0

    .line 127
    .local v0, "trace":Lhzv;
    invoke-static/range {p5 .. p5}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    :goto_0
    return-void

    .line 130
    :cond_0
    :try_start_0
    const-string/jumbo v1, "[TAG] FollowServ"

    .line 7014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] follow openId"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 133
    invoke-static/range {p5 .. p5}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 7030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 135
    :cond_1
    :try_start_1
    new-instance v1, Lidf$3;

    const/4 v4, 0x1

    .line 7234
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Liaq;->k()Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v2, p0

    move-object/from16 v3, p5

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v1 .. v9}, Lidf$3;-><init>(Lidf;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;JJ)V

    .line 155
    invoke-virtual {v1}, Lidf$3;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v1

    .line 9030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 158
    throw v1
.end method

.method public final getStatus(JJLcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "tag"    # J
    .param p3, "openId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Follow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p5, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Follow;>;"
    const/4 v0, 0x0

    .line 207
    .local v0, "trace":Lhzv;
    invoke-static {p5}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    :goto_0
    return-void

    .line 210
    :cond_0
    :try_start_0
    const-string/jumbo v1, "[TAG] FollowServ"

    .line 13014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] get follow status "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 213
    invoke-static {p5}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 13030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 217
    :cond_1
    :try_start_1
    new-instance v1, Lidf$5;

    const/4 v4, 0x1

    .line 13234
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v2

    .line 217
    invoke-virtual {v2}, Liaq;->k()Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v2, p0

    move-object v3, p5

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lidf$5;-><init>(Lidf;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;JLcom/alibaba/wukong/Callback;)V

    .line 225
    invoke-virtual {v1}, Lidf$5;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v1

    .line 15030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 229
    throw v1
.end method

.method public final listFollowings(IJILcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "tag"    # J
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Follow;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p5, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Follow;>;>;"
    sget-object v0, Lcom/alibaba/wukong/im/Follow$FollowStatus;->FOLLOWING:Lcom/alibaba/wukong/im/Follow$FollowStatus;

    invoke-direct {p0, p1, v0, p4, p5}, Lidf;->a(ILcom/alibaba/wukong/im/Follow$FollowStatus;ILcom/alibaba/wukong/Callback;)V

    .line 56
    return-void
.end method

.method public final listFollows(IJILcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "tag"    # J
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Follow;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p5, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Follow;>;>;"
    sget-object v0, Lcom/alibaba/wukong/im/Follow$FollowStatus;->FOLLOWER:Lcom/alibaba/wukong/im/Follow$FollowStatus;

    invoke-direct {p0, p1, v0, p4, p5}, Lidf;->a(ILcom/alibaba/wukong/im/Follow$FollowStatus;ILcom/alibaba/wukong/Callback;)V

    .line 61
    return-void
.end method

.method public final removeFollowListener(Lcom/alibaba/wukong/im/FollowListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/wukong/im/FollowListener;

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    invoke-static {p1}, Lidc;->b(Lcom/alibaba/wukong/im/FollowListener;)V

    .line 51
    :cond_0
    return-void
.end method

.method public final unfollow(JJLcom/alibaba/wukong/Callback;)V
    .locals 11
    .param p1, "tag"    # J
    .param p3, "openId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Follow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p5, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Follow;>;"
    const/4 v0, 0x0

    .line 167
    .local v0, "trace":Lhzv;
    invoke-static/range {p5 .. p5}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    :goto_0
    return-void

    .line 170
    :cond_0
    :try_start_0
    const-string/jumbo v1, "[TAG] FollowServ"

    .line 10014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] unfollow "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 173
    invoke-static/range {p5 .. p5}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 10030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 175
    :cond_1
    :try_start_1
    new-instance v1, Lidf$4;

    const/4 v4, 0x1

    .line 10234
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v2

    .line 175
    invoke-virtual {v2}, Liaq;->k()Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v2, p0

    move-object/from16 v3, p5

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v1 .. v9}, Lidf$4;-><init>(Lidf;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;JJ)V

    .line 195
    invoke-virtual {v1}, Lidf$4;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v1

    .line 12030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 198
    throw v1
.end method
