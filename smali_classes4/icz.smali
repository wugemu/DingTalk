.class public final Licz;
.super Ljava/lang/Object;
.source "BlacklistServiceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/BlacklistService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Licz$a;,
        Licz$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Licz;-><init>()V

    return-void
.end method

.method static synthetic a(Licz;J)Lcom/alibaba/wukong/im/relation/BlacklistImpl;
    .locals 5
    .param p0, "x0"    # Licz;
    .param p1, "x1"    # J

    .prologue
    .line 26
    .line 15231
    new-instance v0, Lcom/alibaba/wukong/im/relation/BlacklistImpl;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/relation/BlacklistImpl;-><init>()V

    .line 15232
    iput-wide p1, v0, Lcom/alibaba/wukong/im/relation/BlacklistImpl;->mOpenId:J

    .line 15233
    sget-object v1, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;->NORMAL:Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    iput-object v1, v0, Lcom/alibaba/wukong/im/relation/BlacklistImpl;->mStatus:Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    .line 15234
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/alibaba/wukong/im/relation/BlacklistImpl;->mLastModify:J

    .line 26
    return-object v0
.end method

.method public static a()Licz;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Licz$b;->a:Licz;

    return-object v0
.end method


# virtual methods
.method public final addBlacklistListener(Lcom/alibaba/wukong/im/BlacklistListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/wukong/im/BlacklistListener;

    .prologue
    .line 176
    if-eqz p1, :cond_0

    .line 177
    invoke-static {p1}, Licw;->a(Lcom/alibaba/wukong/im/BlacklistListener;)V

    .line 179
    :cond_0
    return-void
.end method

.method public final addToBlacklist(JLcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "openId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Blacklist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Blacklist;>;"
    const/4 v0, 0x0

    .line 46
    .local v0, "trace":Lhzv;
    invoke-static {p3}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 49
    :cond_0
    :try_start_0
    const-string/jumbo v1, "[TAG] BlackServ"

    .line 1014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] add blacklist "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 52
    new-instance v1, Licz$1;

    const/4 v4, 0x1

    .line 1239
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Liaq;->k()Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v2, p0

    move-object v3, p3

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Licz$1;-><init>(Licz;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;J)V

    .line 70
    invoke-virtual {v1}, Licz$1;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v1

    .line 3030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 72
    throw v1
.end method

.method public final blacklist(IILcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Blacklist;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 121
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Blacklist;>;>;"
    if-gtz p2, :cond_1

    .line 122
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid count"

    invoke-static {p3, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-static {p3}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/4 v8, 0x0

    .line 130
    .local v8, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] BlackServ"

    .line 7014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v8

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getBlacklist "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 132
    new-instance v0, Licz$3;

    new-instance v2, Liaf$a;

    invoke-direct {v2, p3}, Liaf$a;-><init>(Lcom/alibaba/wukong/Callback;)V

    const/4 v3, 0x1

    .line 7239
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Liaq;->k()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Licz$3;-><init>(Licz;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;IILcom/alibaba/wukong/Callback;)V

    .line 138
    invoke-virtual {v0}, Licz$3;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    .line 9030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    .line 141
    throw v0
.end method

.method public final fetchAllBlacklist(Lcom/alibaba/wukong/Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Blacklist;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 198
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Blacklist;>;>;"
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    :goto_0
    return-void

    .line 200
    :cond_0
    const/4 v0, 0x0

    .line 202
    .local v0, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v1, "[TAG] BlackServ"

    .line 13014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 203
    const-string/jumbo v1, "fetchAllBlacklist"

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 204
    new-instance v1, Licz$5;

    new-instance v2, Liaf$a;

    invoke-direct {v2, p1}, Liaf$a;-><init>(Lcom/alibaba/wukong/Callback;)V

    const/4 v3, 0x1

    .line 13239
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v4

    .line 204
    invoke-virtual {v4}, Liaq;->k()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Licz$5;-><init>(Licz;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    .line 219
    invoke-virtual {v1}, Licz$5;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v1

    .line 15030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 222
    throw v1
.end method

.method public final getBlacklistStatus(JLcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "openId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Blacklist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Blacklist;>;"
    const/4 v0, 0x0

    .line 152
    .local v0, "trace":Lhzv;
    invoke-static {p3}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 155
    :cond_0
    :try_start_0
    const-string/jumbo v1, "[TAG] BlackServ"

    .line 10014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] getBlacklist "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 157
    new-instance v1, Licz$4;

    const/4 v4, 0x1

    .line 10239
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v2

    .line 157
    invoke-virtual {v2}, Liaq;->k()Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v2, p0

    move-object v3, p3

    move-wide v6, p1

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Licz$4;-><init>(Licz;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;JLcom/alibaba/wukong/Callback;)V

    .line 164
    invoke-virtual {v1}, Licz$4;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v1

    .line 12030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 166
    throw v1
.end method

.method public final removeBlacklistListener(Lcom/alibaba/wukong/im/BlacklistListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/wukong/im/BlacklistListener;

    .prologue
    .line 187
    if-eqz p1, :cond_0

    .line 188
    invoke-static {p1}, Licw;->b(Lcom/alibaba/wukong/im/BlacklistListener;)V

    .line 190
    :cond_0
    return-void
.end method

.method public final removeFromBlacklist(JLcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "openId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Blacklist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Blacklist;>;"
    const/4 v0, 0x0

    .line 83
    .local v0, "trace":Lhzv;
    invoke-static {p3}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 86
    :cond_0
    :try_start_0
    const-string/jumbo v1, "[TAG] BlackServ"

    .line 4014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] remove blacklist "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 88
    new-instance v1, Licz$2;

    const/4 v4, 0x1

    .line 4239
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v2

    .line 88
    invoke-virtual {v2}, Liaq;->k()Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v2, p0

    move-object v3, p3

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Licz$2;-><init>(Licz;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;J)V

    .line 106
    invoke-virtual {v1}, Licz$2;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v1

    .line 6030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 109
    throw v1
.end method
