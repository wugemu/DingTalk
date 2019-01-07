.class final Lkd;
.super Ljava/lang/Object;
.source "StrategyInstance.java"

# interfaces
.implements Lka;
.implements Lkn$a;


# instance fields
.field protected a:Lanet/channel/strategy/StrategyInfoHolder;

.field private b:Z

.field private c:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkd;->b:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lkd;->a:Lanet/channel/strategy/StrategyInfoHolder;

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lkd;->c:J

    return-void
.end method

.method static synthetic a(Lkd;)Z
    .locals 1
    .param p0, "x0"    # Lkd;

    .prologue
    .line 32
    invoke-direct {p0}, Lkd;->e()Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "dft"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 163
    invoke-direct {p0}, Lkd;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    .end local p2    # "dft":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 167
    .restart local p2    # "dft":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lkd;->a:Lanet/channel/strategy/StrategyInfoHolder;

    iget-object v2, v2, Lanet/channel/strategy/StrategyInfoHolder;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    .local v0, "cname":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 169
    move-object p1, v0

    .line 172
    :cond_1
    iget-object v2, p0, Lkd;->a:Lanet/channel/strategy/StrategyInfoHolder;

    iget-object v2, v2, Lanet/channel/strategy/StrategyInfoHolder;->c:Lanet/channel/strategy/SafeAislesMap;

    invoke-virtual {v2, p1}, Lanet/channel/strategy/SafeAislesMap;->getSafeAislesByHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "safeAisles":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 175
    iget-object v2, p0, Lkd;->a:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v2}, Lanet/channel/strategy/StrategyInfoHolder;->b()Lanet/channel/strategy/StrategyTable;

    move-result-object v2

    invoke-virtual {v2, p1}, Lanet/channel/strategy/StrategyTable;->querySchemeByHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    if-eqz v1, :cond_5

    .line 177
    iget-object v2, p0, Lkd;->a:Lanet/channel/strategy/StrategyInfoHolder;

    iget-object v2, v2, Lanet/channel/strategy/StrategyInfoHolder;->c:Lanet/channel/strategy/SafeAislesMap;

    invoke-virtual {v2, p1, v1}, Lanet/channel/strategy/SafeAislesMap;->putSafeAisles(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_2
    :goto_1
    const-string/jumbo v2, "No_Result"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 184
    const/4 v1, 0x0

    .line 187
    :cond_3
    if-nez v1, :cond_4

    if-eqz p2, :cond_4

    .line 188
    move-object v1, p2

    :cond_4
    move-object p2, v1

    .line 190
    goto :goto_0

    .line 179
    :cond_5
    iget-object v2, p0, Lkd;->a:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v2}, Lanet/channel/strategy/StrategyInfoHolder;->b()Lanet/channel/strategy/StrategyTable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lanet/channel/strategy/StrategyTable;->sendAmdcRequest(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private e()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 237
    iget-object v2, p0, Lkd;->a:Lanet/channel/strategy/StrategyInfoHolder;

    if-nez v2, :cond_0

    .line 238
    const-string/jumbo v2, "StrategyCenter not initialized"

    const/4 v3, 0x0

    const-string/jumbo v4, "isInitialized"

    new-array v5, v0, [Ljava/lang/Object;

    iget-boolean v6, p0, Lkd;->b:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "rawUrlString"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 102
    invoke-static {p1}, Lla;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, "urlElement":[Ljava/lang/String;
    if-nez v4, :cond_1

    .line 104
    const-string/jumbo v5, "awcn.StrategyCenter"

    const-string/jumbo v6, "url is invalid."

    const/4 v7, 0x0

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "URL"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "stack"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    new-instance v10, Ljava/lang/Exception;

    const-string/jumbo v11, "getFormalizeUrl"

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Llb;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7, v8}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    const/4 v2, 0x0

    .line 130
    :cond_0
    :goto_0
    return-object v2

    .line 108
    :cond_1
    const-string/jumbo v5, "//"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x0

    aget-object v1, v4, v5

    .line 109
    .local v1, "rawScheme":Ljava/lang/String;
    :goto_1
    move-object v2, p1

    .line 111
    .local v2, "ret":Ljava/lang/String;
    const/4 v5, 0x1

    :try_start_0
    aget-object v5, v4, v5

    invoke-direct {p0, v5, v1}, Lkd;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "safeAisle":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 113
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    aget-object v9, v4, v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljf;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "safeAisle":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 115
    .restart local v3    # "safeAisle":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 116
    const-string/jumbo v3, "http"

    .line 120
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 121
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, ":"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "//"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lla;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    :cond_3
    const/4 v5, 0x1

    invoke-static {v5}, Lanet/channel/util/ALog;->a(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 125
    const-string/jumbo v5, "awcn.StrategyCenter"

    const-string/jumbo v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "raw"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "ret"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v2, v8, v9

    invoke-static {v5, v6, v7, v8}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    .end local v3    # "safeAisle":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "awcn.StrategyCenter"

    const-string/jumbo v6, "getFormalizeUrl failed"

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "raw"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-static {v5, v6, v7, v0, v8}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "rawScheme":Ljava/lang/String;
    .end local v2    # "ret":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "utdid"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-direct {p0}, Lkd;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x0

    .line 205
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lkd;->a:Lanet/channel/strategy/StrategyInfoHolder;

    iget-object v0, v0, Lanet/channel/strategy/StrategyInfoHolder;->b:Lanet/channel/strategy/UnitMap;

    invoke-virtual {v0, p1, p2}, Lanet/channel/strategy/UnitMap;->getUnitPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final declared-synchronized a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lkd;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 54
    :goto_0
    monitor-exit p0

    return-void

    .line 43
    :cond_0
    :try_start_1
    const-string/jumbo v1, "awcn.StrategyCenter"

    const-string/jumbo v2, "StrategyCenter initialize started."

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-static {}, Lkf;->a()V

    .line 1043
    sget-object v1, Lkn$b;->a:Lkn;

    .line 45
    invoke-virtual {v1, p0}, Lkn;->a(Lkn$a;)V

    .line 46
    invoke-static {}, Lic;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lanet/channel/status/NetworkStatusHelper;->a(Landroid/content/Context;)V

    .line 1051
    new-instance v1, Lanet/channel/strategy/StrategyInfoHolder;

    invoke-direct {v1}, Lanet/channel/strategy/StrategyInfoHolder;-><init>()V

    .line 47
    iput-object v1, p0, Lkd;->a:Lanet/channel/strategy/StrategyInfoHolder;

    .line 49
    const/4 v1, 0x1

    iput-boolean v1, p0, Lkd;->b:Z

    .line 50
    const-string/jumbo v1, "awcn.StrategyCenter"

    const-string/jumbo v2, "StrategyCenter initialize finished."

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v1, "awcn.StrategyCenter"

    const-string/jumbo v2, "StrategyCenter initialize failed."

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 39
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "utdid"    # Ljava/lang/String;
    .param p3, "unitPrefix"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-direct {p0}, Lkd;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lkd;->a:Lanet/channel/strategy/StrategyInfoHolder;

    iget-object v0, v0, Lanet/channel/strategy/StrategyInfoHolder;->b:Lanet/channel/strategy/UnitMap;

    invoke-virtual {v0, p1, p2, p3}, Lanet/channel/strategy/UnitMap;->setUnitPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljy;Lanet/channel/entity/EventType;Lip;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "connStrategy"    # Ljy;
    .param p3, "eventType"    # Lanet/channel/entity/EventType;
    .param p4, "event"    # Lip;

    .prologue
    .line 230
    invoke-direct {p0}, Lkd;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lkd;->a:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyInfoHolder;->b()Lanet/channel/strategy/StrategyTable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lanet/channel/strategy/StrategyTable;->notifyConnEvent(Ljava/lang/String;Ljy;Lanet/channel/entity/EventType;Lip;)V

    goto :goto_0
.end method

.method public final a(Lkk;)V
    .locals 17
    .param p1, "event"    # Lkk;

    .prologue
    .line 246
    move-object/from16 v0, p1

    iget v5, v0, Lkk;->a:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lkd;->a:Lanet/channel/strategy/StrategyInfoHolder;

    if-eqz v5, :cond_0

    .line 247
    const-string/jumbo v5, "awcn.StrategyCenter"

    const-string/jumbo v6, "receive DNS event"

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    move-object/from16 v0, p1

    iget-object v5, v0, Lkk;->b:Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONObject;

    invoke-static {v5}, Lke;->a(Lorg/json/JSONObject;)Lke$c;

    move-result-object v4

    .line 249
    .local v4, "response":Lke$c;
    if-nez v4, :cond_1

    .line 259
    .end local v4    # "response":Lke$c;
    :cond_0
    :goto_0
    return-void

    .line 252
    .restart local v4    # "response":Lke$c;
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lkd;->a:Lanet/channel/strategy/StrategyInfoHolder;

    .line 3207
    iget v5, v4, Lke$c;->g:I

    if-eqz v5, :cond_2

    .line 3208
    iget v5, v4, Lke$c;->g:I

    iget v7, v4, Lke$c;->h:I

    invoke-static {v5, v7}, Lic;->a(II)V

    .line 3221
    :cond_2
    iget-object v5, v4, Lke$c;->c:[Lke$b;

    if-eqz v5, :cond_4

    .line 3222
    const/4 v5, 0x0

    :goto_1
    iget-object v7, v4, Lke$c;->c:[Lke$b;

    array-length v7, v7

    if-ge v5, v7, :cond_4

    .line 3223
    iget-object v7, v4, Lke$c;->c:[Lke$b;

    aget-object v7, v7, v5

    .line 3224
    iget-object v8, v7, Lke$b;->d:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 3225
    iget-object v8, v6, Lanet/channel/strategy/StrategyInfoHolder;->f:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v9, v7, Lke$b;->a:Ljava/lang/String;

    iget-object v7, v7, Lke$b;->d:Ljava/lang/String;

    invoke-virtual {v8, v9, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3222
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3227
    :cond_3
    iget-object v8, v6, Lanet/channel/strategy/StrategyInfoHolder;->f:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v7, v7, Lke$b;->a:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3211
    :cond_4
    invoke-virtual {v6}, Lanet/channel/strategy/StrategyInfoHolder;->b()Lanet/channel/strategy/StrategyTable;

    move-result-object v5

    invoke-virtual {v5, v4}, Lanet/channel/strategy/StrategyTable;->update(Lke$c;)V

    .line 3212
    iget-object v7, v6, Lanet/channel/strategy/StrategyInfoHolder;->g:Ljava/lang/Object;

    monitor-enter v7

    .line 3213
    :try_start_0
    iget-object v5, v6, Lanet/channel/strategy/StrategyInfoHolder;->c:Lanet/channel/strategy/SafeAislesMap;

    invoke-virtual {v5, v4}, Lanet/channel/strategy/SafeAislesMap;->update(Lke$c;)V

    .line 3214
    iget-object v5, v6, Lanet/channel/strategy/StrategyInfoHolder;->b:Lanet/channel/strategy/UnitMap;

    invoke-virtual {v5, v4}, Lanet/channel/strategy/UnitMap;->update(Lke$c;)V

    .line 3215
    iget-object v5, v6, Lanet/channel/strategy/StrategyInfoHolder;->d:Lanet/channel/strategy/HorseRideStrategyMap;

    invoke-virtual {v5, v4}, Lanet/channel/strategy/HorseRideStrategyMap;->update(Lke$c;)V

    .line 3216
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3217
    iget-object v9, v4, Lke$c;->c:[Lke$b;

    .line 3234
    const/4 v5, 0x0

    move v6, v5

    :goto_3
    array-length v5, v9

    if-ge v6, v5, :cond_d

    .line 3235
    aget-object v5, v9, v6

    .line 3236
    iget-boolean v7, v5, Lke$b;->q:Z

    if-eqz v7, :cond_c

    .line 3237
    const-string/jumbo v7, "awcn.StrategyInfoHolder"

    const-string/jumbo v8, "find effectNow"

    const/4 v10, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "host"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, v5, Lke$b;->a:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v7, v8, v10, v11}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3238
    iget-object v10, v5, Lke$b;->f:[Lke$a;

    .line 3239
    iget-object v11, v5, Lke$b;->e:[Ljava/lang/String;

    .line 4038
    sget-object v7, Lif$a;->a:Lif;

    .line 3241
    iget-object v8, v5, Lke$b;->c:Ljava/lang/String;

    iget-object v5, v5, Lke$b;->a:Ljava/lang/String;

    invoke-static {v8, v5}, Lkg;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lif;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 3242
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lanet/channel/Session;

    .line 3243
    invoke-virtual {v5}, Lanet/channel/Session;->g()Lanet/channel/entity/ConnType;

    move-result-object v7

    invoke-virtual {v7}, Lanet/channel/entity/ConnType;->isHttpType()Z

    move-result v7

    if-nez v7, :cond_5

    .line 3247
    const/4 v8, 0x0

    .line 3248
    const/4 v7, 0x0

    :goto_5
    array-length v13, v11

    if-ge v7, v13, :cond_f

    .line 3249
    invoke-virtual {v5}, Lanet/channel/Session;->e()Ljava/lang/String;

    move-result-object v13

    aget-object v14, v11, v7

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 3250
    const/4 v7, 0x1

    .line 3255
    :goto_6
    if-nez v7, :cond_8

    .line 3256
    const/4 v7, 0x2

    invoke-static {v7}, Lanet/channel/util/ALog;->a(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3257
    const-string/jumbo v7, "awcn.StrategyInfoHolder"

    const-string/jumbo v8, "ip not match"

    const/4 v13, 0x0

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "session ip"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v5}, Lanet/channel/Session;->e()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string/jumbo v16, "ips"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v7, v8, v13, v14}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3259
    :cond_6
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lanet/channel/Session;->b(Z)V

    goto :goto_4

    .line 3216
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 3248
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 3263
    :cond_8
    const/4 v8, 0x0

    .line 3264
    const/4 v7, 0x0

    :goto_7
    array-length v13, v10

    if-ge v7, v13, :cond_e

    .line 3265
    invoke-virtual {v5}, Lanet/channel/Session;->f()I

    move-result v13

    aget-object v14, v10, v7

    iget v14, v14, Lke$a;->a:I

    if-ne v13, v14, :cond_a

    invoke-virtual {v5}, Lanet/channel/Session;->g()Lanet/channel/entity/ConnType;

    move-result-object v13

    aget-object v14, v10, v7

    invoke-static {v14}, Lanet/channel/entity/ConnType;->valueOf(Lke$a;)Lanet/channel/entity/ConnType;

    move-result-object v14

    invoke-virtual {v13, v14}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 3266
    const/4 v7, 0x1

    .line 3271
    :goto_8
    if-nez v7, :cond_b

    .line 3272
    const/4 v7, 0x2

    invoke-static {v7}, Lanet/channel/util/ALog;->a(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 3273
    const-string/jumbo v7, "awcn.StrategyInfoHolder"

    const-string/jumbo v8, "aisle not match"

    const/4 v13, 0x0

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "port"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v5}, Lanet/channel/Session;->f()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string/jumbo v16, "connType"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-virtual {v5}, Lanet/channel/Session;->g()Lanet/channel/entity/ConnType;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string/jumbo v16, "aisle"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v7, v8, v13, v14}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3276
    :cond_9
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lanet/channel/Session;->b(Z)V

    goto/16 :goto_4

    .line 3264
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 3278
    :cond_b
    const-string/jumbo v5, "awcn.StrategyInfoHolder"

    const-string/jumbo v7, "session matches, do nothing"

    const/4 v8, 0x0

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v5, v7, v8, v13}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 3234
    :cond_c
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto/16 :goto_3

    .line 253
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 254
    .local v2, "now":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lkd;->c:J

    sub-long v6, v2, v6

    const-wide/32 v8, 0x2bf20

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 255
    invoke-virtual/range {p0 .. p0}, Lkd;->c()V

    .line 256
    move-object/from16 v0, p0

    iput-wide v2, v0, Lkd;->c:J

    goto/16 :goto_0

    .end local v2    # "now":J
    :cond_e
    move v7, v8

    goto :goto_8

    :cond_f
    move v7, v8

    goto/16 :goto_6
.end method

.method public final b(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljy;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lkd;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 159
    :cond_1
    :goto_0
    return-object v1

    .line 146
    :cond_2
    iget-object v2, p0, Lkd;->a:Lanet/channel/strategy/StrategyInfoHolder;

    iget-object v2, v2, Lanet/channel/strategy/StrategyInfoHolder;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    .local v0, "cname":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 148
    move-object p1, v0

    .line 151
    :cond_3
    iget-object v2, p0, Lkd;->a:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v2}, Lanet/channel/strategy/StrategyInfoHolder;->b()Lanet/channel/strategy/StrategyTable;

    move-result-object v2

    invoke-virtual {v2, p1}, Lanet/channel/strategy/StrategyTable;->queryByHost(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 152
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljy;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 153
    iget-object v2, p0, Lkd;->a:Lanet/channel/strategy/StrategyInfoHolder;

    iget-object v2, v2, Lanet/channel/strategy/StrategyInfoHolder;->e:Lkb;

    invoke-virtual {v2, p1}, Lkb;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 156
    :cond_4
    invoke-static {v7}, Lanet/channel/util/ALog;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    const-string/jumbo v2, "getConnStrategyListByHost"

    const/4 v3, 0x0

    const-string/jumbo v4, "host"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const-string/jumbo v6, "result"

    aput-object v6, v5, v7

    const/4 v6, 0x2

    aput-object v1, v5, v6

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final declared-synchronized b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkd;->b:Z

    if-nez v0, :cond_0

    .line 58
    const-string/jumbo v0, "awcn.StrategyCenter"

    const-string/jumbo v1, "call switch Env before StrategyCenter not initialized!"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :goto_0
    monitor-exit p0

    return-void

    .line 61
    :cond_0
    :try_start_1
    invoke-static {}, Lkf;->b()V

    .line 2043
    sget-object v0, Lkn$b;->a:Lkn;

    .line 2124
    iget-object v1, v0, Lkn;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 2125
    iget-object v1, v0, Lkn;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 2126
    iget-object v0, v0, Lkn;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3051
    new-instance v0, Lanet/channel/strategy/StrategyInfoHolder;

    invoke-direct {v0}, Lanet/channel/strategy/StrategyInfoHolder;-><init>()V

    .line 63
    iput-object v0, p0, Lkd;->a:Lanet/channel/strategy/StrategyInfoHolder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "host"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 79
    :goto_0
    return-object v0

    .line 77
    :cond_0
    invoke-direct {p0, p1, v1}, Lkd;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "scheme":Ljava/lang/String;
    const-string/jumbo v2, "awcn.StrategyCenter"

    const-string/jumbo v3, "getSchemeByHost"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "host"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "scheme"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    invoke-static {v2, v3, v1, v4}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final declared-synchronized c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    new-instance v0, Lkd$1;

    invoke-direct {v0, p0}, Lkd$1;-><init>(Lkd;)V

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lkq;->a(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    monitor-exit p0

    return-void

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Lkd;->e()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 92
    :cond_1
    :goto_0
    return-object v0

    .line 88
    :cond_2
    iget-object v2, p0, Lkd;->a:Lanet/channel/strategy/StrategyInfoHolder;

    iget-object v2, v2, Lanet/channel/strategy/StrategyInfoHolder;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    .local v0, "cname":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 92
    goto :goto_0
.end method

.method public final d()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljz;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 216
    invoke-direct {p0}, Lkd;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 219
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lkd;->a:Lanet/channel/strategy/StrategyInfoHolder;

    iget-object v0, v0, Lanet/channel/strategy/StrategyInfoHolder;->d:Lanet/channel/strategy/HorseRideStrategyMap;

    iget-object v1, p0, Lkd;->a:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v1}, Lanet/channel/strategy/StrategyInfoHolder;->b()Lanet/channel/strategy/StrategyTable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanet/channel/strategy/HorseRideStrategyMap;->getHRStrategyMap(Lanet/channel/strategy/StrategyTable;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 194
    invoke-direct {p0}, Lkd;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lkd;->a:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyInfoHolder;->b()Lanet/channel/strategy/StrategyTable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lanet/channel/strategy/StrategyTable;->sendAmdcRequest(Ljava/lang/String;Z)V

    goto :goto_0
.end method
