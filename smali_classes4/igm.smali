.class public final Ligm;
.super Ligq;
.source "DefaultWebSocketClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ligm$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field private f:Lign;

.field private g:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;

.field private h:J

.field private i:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private j:Ligp;

.field private k:Lihj;

.field private l:Z


# direct methods
.method private constructor <init>(Ljava/net/URI;Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;Ljava/util/Map;ILign;)V
    .locals 7
    .param p1, "serverUri"    # Ljava/net/URI;
    .param p2, "protocolDraft"    # Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;
    .param p4, "connectTimeout"    # I
    .param p5, "webSocketCallback"    # Lign;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lign;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    .local p3, "httpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const v4, 0xea60

    new-instance v6, Ligl;

    invoke-direct {v6}, Ligl;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Ligm;-><init>(Ljava/net/URI;Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;Ljava/util/Map;ILign;Ligp;)V

    .line 85
    return-void
.end method

.method private constructor <init>(Ljava/net/URI;Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;Ljava/util/Map;ILign;Ligp;)V
    .locals 2
    .param p1, "serverUri"    # Ljava/net/URI;
    .param p2, "protocolDraft"    # Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;
    .param p4, "connectTimeout"    # I
    .param p5, "webSocketCallback"    # Lign;
    .param p6, "webSocketContext"    # Ligp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lign;",
            "Ligp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p3, "httpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ligq;-><init>(Ljava/net/URI;Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;Ljava/util/Map;I)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Ligm;->l:Z

    .line 65
    iput-object p5, p0, Ligm;->f:Lign;

    .line 66
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ligm;->a:Ljava/lang/String;

    .line 67
    iput-object p6, p0, Ligm;->j:Ligp;

    .line 68
    const/16 v0, 0xfa0

    if-le p4, v0, :cond_0

    .line 69
    int-to-long v0, p4

    iput-wide v0, p0, Ligm;->h:J

    .line 73
    :goto_0
    new-instance v0, Lihj;

    invoke-direct {v0, p0}, Lihj;-><init>(Ligm;)V

    iput-object v0, p0, Ligm;->k:Lihj;

    .line 74
    return-void

    .line 71
    :cond_0
    const-wide/16 v0, 0xfa0

    iput-wide v0, p0, Ligm;->h:J

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/util/Map;Lign;)V
    .locals 6
    .param p1, "serverUri"    # Ljava/net/URI;
    .param p3, "webSocketCallback"    # Lign;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lign;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, "httpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ligr;

    invoke-direct {v2}, Ligr;-><init>()V

    const v4, 0xea60

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ligm;-><init>(Ljava/net/URI;Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;Ljava/util/Map;ILign;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/util/Map;Lign;Ligp;)V
    .locals 7
    .param p1, "serverUri"    # Ljava/net/URI;
    .param p3, "webSocketCallback"    # Lign;
    .param p4, "webSocketContext"    # Ligp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lign;",
            "Ligp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    .local p2, "httpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ligr;

    invoke-direct {v2}, Ligr;-><init>()V

    const v4, 0xea60

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Ligm;-><init>(Ljava/net/URI;Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;Ljava/util/Map;ILign;Ligp;)V

    .line 105
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 4
    .param p1, "err"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 277
    iget-object v0, p0, Ligm;->f:Lign;

    invoke-interface {v0, p1}, Lign;->b(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Ligm;->k:Lihj;

    const-string/jumbo v1, "1"

    .line 12050
    const-string/jumbo v2, "error"

    invoke-virtual {v0, v2}, Lihj;->a(Ljava/lang/String;)Lihk;

    move-result-object v0

    .line 13044
    iget-object v2, v0, Lihk;->b:Ljava/util/Map;

    const-string/jumbo v3, "CODE"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13049
    iget-object v1, v0, Lihk;->b:Ljava/util/Map;

    const-string/jumbo v2, "ERRMSG"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12053
    invoke-static {}, Liht;->a()Lihs;

    move-result-object v1

    invoke-interface {v1, v0}, Lihs;->a(Lihk;)V

    .line 279
    return-void
.end method

.method private i()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 355
    :try_start_0
    const-string/jumbo v1, "WebSocketClient"

    const-string/jumbo v2, "cancelTimeoutScheduleFuture. try to stop connectTimer"

    invoke-static {v1, v2}, Lihq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Ligm;->i:Ljava/util/concurrent/ScheduledFuture;

    if-nez v1, :cond_0

    .line 364
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v1, p0, Ligm;->i:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 360
    const/4 v1, 0x0

    iput-object v1, p0, Ligm;->i:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "WebSocketClient"

    const-string/jumbo v2, "cancelTimeoutScheduleFuture. Cancel old timeoutScheduleFuture error"

    invoke-static {v1, v2, v0}, Lihq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private j()Ligp;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Ligm;->j:Ligp;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Ligm;->j:Ligp;

    .line 377
    :goto_0
    return-object v0

    .line 371
    :cond_0
    monitor-enter p0

    .line 372
    :try_start_0
    iget-object v0, p0, Ligm;->j:Ligp;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Ligm;->j:Ligp;

    monitor-exit p0

    goto :goto_0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 375
    :cond_1
    :try_start_1
    new-instance v0, Ligl;

    invoke-direct {v0}, Ligl;-><init>()V

    iput-object v0, p0, Ligm;->j:Ligp;

    .line 376
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    iget-object v0, p0, Ligm;->j:Ligp;

    goto :goto_0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 340
    :try_start_0
    const-string/jumbo v1, "WebSocketClient"

    const-string/jumbo v2, "close. try to close socket"

    invoke-static {v1, v2}, Lihq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/4 v1, 0x1

    iput-boolean v1, p0, Ligm;->l:Z

    .line 342
    invoke-super {p0, p1, p2}, Ligq;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "WebSocketClient"

    const-string/jumbo v2, "send err. "

    invoke-static {v1, v2, v0}, Lihq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(J)V
    .locals 5
    .param p1, "cost"    # J

    .prologue
    .line 191
    iget-object v0, p0, Ligm;->k:Lihj;

    .line 4122
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 4125
    invoke-virtual {v0}, Lihj;->a()Lihl;

    move-result-object v0

    iput-wide p1, v0, Lihl;->l:J

    .line 192
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 4
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "cost"    # J

    .prologue
    .line 179
    iget-object v0, p0, Ligm;->k:Lihj;

    .line 4101
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    .line 4104
    invoke-virtual {v0}, Lihj;->a()Lihl;

    move-result-object v0

    iput-wide p2, v0, Lihl;->j:J

    .line 180
    :cond_0
    iget-object v0, p0, Ligm;->k:Lihj;

    invoke-virtual {v0, p1}, Lihj;->b(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public final b(ILjava/lang/String;Z)V
    .locals 10
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "remote"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 251
    invoke-direct {p0}, Ligm;->i()V

    .line 252
    const-string/jumbo v0, "WebSocketClient"

    const-string/jumbo v1, "onClose. url\u00a0is\u00a0%s\u00a0,state:\u00a0closed\u00a0,reason:\u00a0%s,\u00a0errCode\u00a0=\u00a0%d, remote = %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Ligm;->a:Ljava/lang/String;

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lihq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-boolean v0, p0, Ligm;->l:Z

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x3

    if-ne p1, v0, :cond_1

    .line 254
    :cond_0
    invoke-virtual {p0, p2}, Ligm;->d(Ljava/lang/String;)V

    .line 258
    :goto_0
    iget-object v2, p0, Ligm;->k:Lihj;

    .line 9036
    invoke-virtual {v2}, Lihj;->a()Lihl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lihl;->d:J

    .line 9037
    const-string/jumbo v0, "disconn"

    invoke-virtual {v2, v0}, Lihj;->a(Ljava/lang/String;)Lihk;

    move-result-object v3

    .line 9038
    invoke-virtual {v2}, Lihj;->a()Lihl;

    move-result-object v0

    iget-wide v0, v0, Lihl;->e:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 9067
    invoke-static {v0}, Liic;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9039
    :goto_1
    invoke-virtual {v2}, Lihj;->a()Lihl;

    move-result-object v0

    iget-object v0, v0, Lihl;->g:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9083
    invoke-static {v0}, Liic;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9040
    :goto_2
    invoke-virtual {v2}, Lihj;->a()Lihl;

    move-result-object v0

    iget-wide v0, v0, Lihl;->f:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 10059
    invoke-static {v0}, Liic;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9041
    :goto_3
    invoke-virtual {v2}, Lihj;->a()Lihl;

    move-result-object v0

    iget-object v0, v0, Lihl;->h:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10075
    invoke-static {v0}, Liic;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9042
    :goto_4
    invoke-virtual {v2}, Lihj;->a()Lihl;

    move-result-object v0

    .line 11046
    iget-wide v6, v0, Lihl;->c:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_6

    iget-wide v6, v0, Lihl;->d:J

    iget-wide v8, v0, Lihl;->c:J

    cmp-long v1, v6, v8

    if-lez v1, :cond_6

    .line 11047
    iget-wide v6, v0, Lihl;->d:J

    iget-wide v0, v0, Lihl;->c:J

    sub-long v0, v6, v0

    .line 9042
    :goto_5
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 11054
    iget-object v1, v3, Lihk;->b:Ljava/util/Map;

    const-string/jumbo v5, "LIVE_TIME"

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9043
    invoke-static {}, Liht;->a()Lihs;

    move-result-object v0

    invoke-interface {v0, v3}, Lihs;->a(Lihk;)V

    .line 9046
    const/4 v0, 0x0

    iput-object v0, v2, Lihj;->a:Lihl;

    .line 259
    new-instance v0, Lihi;

    iget-object v1, p0, Ligm;->a:Ljava/lang/String;

    .line 260
    invoke-virtual {p0}, Ligm;->h()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "close"

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lihi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 259
    invoke-static {v0}, Lihj;->a(Lihi;)V

    .line 263
    return-void

    .line 256
    :cond_1
    iget-object v0, p0, Ligm;->f:Lign;

    invoke-interface {v0}, Lign;->b()V

    goto/16 :goto_0

    .line 9070
    :cond_2
    iget-object v1, v3, Lihk;->b:Ljava/util/Map;

    const-string/jumbo v5, "DOWNC"

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 9086
    :cond_3
    iget-object v1, v3, Lihk;->b:Ljava/util/Map;

    const-string/jumbo v5, "DOWNMSG"

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 10062
    :cond_4
    iget-object v1, v3, Lihk;->b:Ljava/util/Map;

    const-string/jumbo v5, "UPC"

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 10078
    :cond_5
    iget-object v1, v3, Lihk;->b:Ljava/util/Map;

    const-string/jumbo v5, "UPMSG"

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 11049
    :cond_6
    const-wide/16 v0, -0x1

    goto :goto_5
.end method

.method public final b(J)V
    .locals 5
    .param p1, "cost"    # J

    .prologue
    .line 196
    const-string/jumbo v0, "WebSocketClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onWsHandshake cost: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lihq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Ligm;->k:Lihj;

    .line 4129
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 4132
    invoke-virtual {v0}, Lihj;->a()Lihl;

    move-result-object v0

    iput-wide p1, v0, Lihl;->m:J

    .line 198
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 5
    .param p1, "ex"    # Ljava/lang/Exception;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 267
    const-string/jumbo v0, "WebSocketClient"

    const-string/jumbo v1, "onError. url\u00a0is\u00a0%s\u00a0,error\u00a0is\u00a0%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Ligm;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lihq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ligm;->e(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    const-string/jumbo v0, "WebSocketClient"

    const-string/jumbo v1, "[send] text is null"

    invoke-static {v0, v1}, Lihq;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 137
    const-string/jumbo v0, "WebSocketClient"

    const-string/jumbo v1, "[send] text is empty, but continue send."

    invoke-static {v0, v1}, Lihq;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_1
    invoke-super {p0, p1}, Ligq;->b(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Ligm;->k:Lihj;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lihj;->b(I)V

    .line 142
    new-instance v0, Lihi;

    iget-object v1, p0, Ligm;->a:Ljava/lang/String;

    .line 143
    invoke-virtual {p0}, Ligm;->h()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "send"

    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lihi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 142
    invoke-static {v0}, Lihj;->a(Lihi;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;J)V
    .locals 4
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "cost"    # J

    .prologue
    .line 185
    iget-object v0, p0, Ligm;->k:Lihj;

    .line 4115
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    .line 4118
    invoke-virtual {v0}, Lihj;->a()Lihl;

    move-result-object v0

    iput-wide p2, v0, Lihl;->k:J

    .line 186
    :cond_0
    iget-object v0, p0, Ligm;->k:Lihj;

    invoke-virtual {v0, p1}, Lihj;->b(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public final b(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 165
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_1

    .line 166
    :cond_0
    const-string/jumbo v0, "WebSocketClient"

    const-string/jumbo v1, "[send] ByteBuffer is null or length <= 0."

    invoke-static {v0, v1}, Lihq;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :goto_0
    return-void

    .line 169
    :cond_1
    invoke-super {p0, p1}, Ligq;->b(Ljava/nio/ByteBuffer;)V

    .line 170
    iget-object v0, p0, Ligm;->k:Lihj;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Lihj;->b(I)V

    .line 171
    new-instance v0, Lihi;

    iget-object v1, p0, Ligm;->a:Ljava/lang/String;

    .line 172
    invoke-virtual {p0}, Ligm;->h()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "send"

    .line 173
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lihi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 171
    invoke-static {v0}, Lihj;->a(Lihi;)V

    goto :goto_0
.end method

.method public final c(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;)V
    .locals 5
    .param p1, "pFrame"    # Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 287
    invoke-interface {p1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;->f()Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->CONTINUOUS:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    if-eq v2, v3, :cond_1

    invoke-interface {p1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;->d()Z

    move-result v2

    if-nez v2, :cond_1

    .line 288
    iput-object p1, p0, Ligm;->g:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    invoke-interface {p1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;->f()Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->CONTINUOUS:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ligm;->g:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;

    if-eqz v2, :cond_0

    .line 294
    iget-object v2, p0, Ligm;->g:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;

    invoke-interface {v2}, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;->c()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    const/high16 v3, 0xa00000

    if-le v2, v3, :cond_2

    .line 295
    const-string/jumbo v2, "WebSocketClient"

    const-string/jumbo v3, "onFragment. Pending\u00a0frame\u00a0exploded"

    invoke-static {v2, v3}, Lihq;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Pending\u00a0frame\u00a0exploded"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ligm;->b(Ljava/lang/Exception;)V

    .line 297
    invoke-virtual {p0}, Ligm;->g()V

    .line 298
    iput-object v4, p0, Ligm;->g:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;

    goto :goto_0

    .line 302
    :cond_2
    :try_start_0
    iget-object v2, p0, Ligm;->g:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;

    invoke-interface {v2, p1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;->a(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_1
    invoke-interface {p1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    iget-object v2, p0, Ligm;->g:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;

    invoke-interface {v2}, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;->f()Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->BINARY:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    if-ne v2, v3, :cond_4

    .line 314
    iget-object v2, p0, Ligm;->g:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;

    invoke-interface {v2}, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;->c()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ligm;->c(Ljava/nio/ByteBuffer;)V

    .line 323
    :cond_3
    :goto_2
    iput-object v4, p0, Ligm;->g:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;

    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "WebSocketClient"

    const-string/jumbo v3, "onFragment. append frame err. "

    invoke-static {v2, v3, v0}, Lihq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 315
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    iget-object v2, p0, Ligm;->g:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;

    invoke-interface {v2}, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;->f()Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->TEXT:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    if-ne v2, v3, :cond_3

    .line 317
    :try_start_1
    iget-object v2, p0, Ligm;->g:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;

    invoke-interface {v2}, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;->c()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Liib;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "playloadDataStr":Ljava/lang/String;
    if-nez v1, :cond_5

    const-string/jumbo v1, ""

    .end local v1    # "playloadDataStr":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v1}, Ligm;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 319
    :catch_1
    move-exception v0

    .line 320
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "WebSocketClient"

    const-string/jumbo v3, "onFragment. ByteBuffer to String err "

    invoke-static {v2, v3, v0}, Lihq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public final c(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 217
    const-string/jumbo v1, "WebSocketClient"

    const-string/jumbo v2, "onMessage. url\u00a0is\u00a0%s\u00a0,socket\u00a0onmessage\u00a0length\u00a0:%d"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Ligm;->a:Ljava/lang/String;

    aput-object v0, v3, v4

    const/4 v5, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lihq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 229
    :cond_0
    :goto_1
    return-void

    .line 217
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 222
    :cond_2
    iget-object v0, p0, Ligm;->f:Lign;

    invoke-interface {v0, p1}, Lign;->a(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Ligm;->k:Lihj;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lihj;->a(I)V

    .line 225
    new-instance v0, Lihi;

    iget-object v1, p0, Ligm;->a:Ljava/lang/String;

    .line 226
    invoke-virtual {p0}, Ligm;->h()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "receive"

    .line 228
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lihi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 225
    invoke-static {v0}, Lihj;->a(Lihi;)V

    goto :goto_1
.end method

.method public final c(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 232
    const-string/jumbo v1, "WebSocketClient"

    const-string/jumbo v2, "onMessage. url\u00a0is\u00a0%s\u00a0,\u00a0socket\u00a0onMessage\u00a0buffer\u00a0length\u00a0:\u00a0%d"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Ligm;->a:Ljava/lang/String;

    aput-object v0, v3, v4

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lihq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    if-nez p1, :cond_1

    .line 247
    :goto_1
    return-void

    .line 232
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 238
    :cond_1
    iget-object v0, p0, Ligm;->f:Lign;

    invoke-interface {v0, p1}, Lign;->a(Ljava/nio/ByteBuffer;)V

    .line 241
    iget-object v0, p0, Ligm;->k:Lihj;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Lihj;->a(I)V

    .line 243
    new-instance v0, Lihi;

    iget-object v1, p0, Ligm;->a:Ljava/lang/String;

    .line 244
    invoke-virtual {p0}, Ligm;->h()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "receive"

    .line 246
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    array-length v5, v5

    invoke-direct/range {v0 .. v5}, Lihi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 243
    invoke-static {v0}, Lihj;->a(Lihi;)V

    goto :goto_1
.end method

.method public final d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    .line 1464
    iput-object v0, p0, Ligq;->d:Ljavax/net/ssl/SSLSocketFactory;

    .line 120
    invoke-virtual {p0}, Ligm;->e()V

    .line 121
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 5
    .param p1, "err"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 272
    const-string/jumbo v0, "WebSocketClient"

    const-string/jumbo v1, "onError. url\u00a0is\u00a0%s\u00a0,error\u00a0is\u00a0%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Ligm;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lihq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-direct {p0, p1}, Ligm;->e(Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public final e()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 125
    .line 2397
    const-string/jumbo v0, "WebSocketClient"

    const-string/jumbo v1, "enter beforeConnect"

    invoke-static {v0, v1}, Lihq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2398
    iget-object v0, p0, Ligm;->k:Lihj;

    .line 3093
    invoke-virtual {v0}, Lihj;->a()Lihl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lihl;->a:J

    .line 126
    invoke-super {p0}, Ligq;->e()V

    .line 3349
    invoke-direct {p0}, Ligm;->i()V

    .line 3350
    new-instance v0, Ligm$a;

    iget-object v1, p0, Ligm;->f:Lign;

    invoke-direct {v0, p0, p0, v1}, Ligm$a;-><init>(Ligm;Ligm;Lign;)V

    iget-wide v2, p0, Ligm;->h:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4078
    invoke-static {}, Lihz;->a()Lihy;

    move-result-object v4

    .line 4054
    invoke-interface {v4, v0, v2, v3, v1}, Lihy;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 3350
    iput-object v0, p0, Ligm;->i:Ljava/util/concurrent/ScheduledFuture;

    .line 128
    return-void
.end method

.method public final f()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 202
    .line 4402
    const-string/jumbo v0, "WebSocketClient"

    const-string/jumbo v1, "enter afterConnect"

    invoke-static {v0, v1}, Lihq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4403
    iget-object v0, p0, Ligm;->k:Lihj;

    .line 5097
    invoke-virtual {v0}, Lihj;->a()Lihl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lihl;->c:J

    .line 4404
    iget-object v0, p0, Ligm;->k:Lihj;

    .line 6022
    invoke-virtual {v0}, Lihj;->a()Lihl;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lihl;->b:J

    .line 6023
    const-string/jumbo v1, "conn"

    invoke-virtual {v0, v1}, Lihj;->a(Ljava/lang/String;)Lihk;

    move-result-object v2

    .line 6024
    invoke-virtual {v0}, Lihj;->a()Lihl;

    move-result-object v1

    iget-wide v4, v1, Lihl;->j:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 6091
    invoke-static {v1}, Liic;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "-1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6025
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lihj;->a()Lihl;

    move-result-object v1

    iget-wide v4, v1, Lihl;->k:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 6099
    invoke-static {v1}, Liic;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "-1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6026
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lihj;->a()Lihl;

    move-result-object v1

    iget-wide v4, v1, Lihl;->l:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 6108
    invoke-static {v1}, Liic;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "-1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 6027
    :cond_2
    :goto_2
    invoke-virtual {v0}, Lihj;->a()Lihl;

    move-result-object v1

    iget-wide v4, v1, Lihl;->m:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 6116
    invoke-static {v1}, Liic;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "-1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 6028
    :cond_3
    :goto_3
    invoke-virtual {v0}, Lihj;->a()Lihl;

    move-result-object v1

    iget-object v1, v1, Lihl;->i:Ljava/lang/String;

    .line 6124
    invoke-static {v1}, Liic;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "null"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 6029
    :cond_4
    :goto_4
    invoke-virtual {v0}, Lihj;->a()Lihl;

    move-result-object v0

    .line 7039
    iget-wide v4, v0, Lihl;->a:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_a

    iget-wide v4, v0, Lihl;->b:J

    iget-wide v6, v0, Lihl;->a:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_a

    .line 7040
    iget-wide v4, v0, Lihl;->b:J

    iget-wide v0, v0, Lihl;->a:J

    sub-long v0, v4, v0

    .line 6029
    :goto_5
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 8039
    iget-object v1, v2, Lihk;->b:Ljava/util/Map;

    const-string/jumbo v3, "ALL_TIME"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9034
    iget-object v0, v2, Lihk;->b:Ljava/util/Map;

    const-string/jumbo v1, "RESULT"

    const-string/jumbo v3, "T"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6031
    invoke-static {}, Liht;->a()Lihs;

    move-result-object v0

    invoke-interface {v0, v2}, Lihs;->a(Lihk;)V

    .line 203
    invoke-direct {p0}, Ligm;->i()V

    .line 204
    const-string/jumbo v0, "WebSocketClient"

    const-string/jumbo v1, "onOpen. url is %s , state: opened"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Ligm;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lihq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Ligm;->f:Lign;

    invoke-interface {v0}, Lign;->a()V

    .line 208
    new-instance v0, Lihi;

    iget-object v1, p0, Ligm;->a:Ljava/lang/String;

    .line 209
    invoke-virtual {p0}, Ligm;->h()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "connect"

    iget-object v4, p0, Ligm;->a:Ljava/lang/String;

    .line 211
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit16 v4, v4, 0xbd

    const/16 v5, 0xb9

    invoke-direct/range {v0 .. v5}, Lihi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 208
    invoke-static {v0}, Lihj;->a(Lihi;)V

    .line 213
    return-void

    .line 6094
    :cond_5
    iget-object v3, v2, Lihk;->b:Ljava/util/Map;

    const-string/jumbo v4, "DNS_TIME"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 6102
    :cond_6
    iget-object v3, v2, Lihk;->b:Ljava/util/Map;

    const-string/jumbo v4, "TCP_TIME"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 6111
    :cond_7
    iget-object v3, v2, Lihk;->b:Ljava/util/Map;

    const-string/jumbo v4, "SSL_TIME"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 6119
    :cond_8
    iget-object v3, v2, Lihk;->b:Ljava/util/Map;

    const-string/jumbo v4, "WSHS_TIME"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 6127
    :cond_9
    iget-object v3, v2, Lihk;->b:Ljava/util/Map;

    const-string/jumbo v4, "TARGET_HOST"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 7042
    :cond_a
    const-wide/16 v0, -0x1

    goto/16 :goto_5
.end method

.method public final g()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 330
    :try_start_0
    const-string/jumbo v1, "WebSocketClient"

    const-string/jumbo v2, "close. try to close socket"

    invoke-static {v1, v2}, Lihq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const/4 v1, 0x1

    iput-boolean v1, p0, Ligm;->l:Z

    .line 332
    invoke-super {p0}, Ligq;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "WebSocketClient"

    const-string/jumbo v2, "send err. "

    invoke-static {v1, v2, v0}, Lihq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final h()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 389
    invoke-direct {p0}, Ligm;->j()Ligp;

    move-result-object v1

    const-string/jumbo v2, "ws.biz-unique-id"

    invoke-interface {v1, v2}, Ligp;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 390
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 391
    :cond_0
    const-string/jumbo v1, "unkown"

    .line 393
    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
