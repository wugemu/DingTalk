.class final Ljo$a;
.super Ljp;
.source "AccsSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ljo;


# direct methods
.method constructor <init>(Ljo;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Ljo$a;->a:Ljo;

    invoke-direct {p0}, Ljp;-><init>()V

    return-void
.end method


# virtual methods
.method public final spdyOnStreamResponse(Lorg/android/spdy/SpdySession;JLjava/util/Map;Ljava/lang/Object;)V
    .locals 10
    .param p1, "spdySession"    # Lorg/android/spdy/SpdySession;
    .param p2, "l"    # J
    .param p5, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/android/spdy/SpdySession;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 317
    .local p4, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .line 319
    .local v1, "httpStatusCode":I
    :try_start_0
    const-string/jumbo v3, ":status"

    invoke-static {p4, v3}, Lku;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 323
    :goto_0
    :try_start_1
    const-string/jumbo v3, "awcn.AccsSession"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "AUTH httpStatusCode: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljo$a;->a:Ljo;

    invoke-static {v5}, Ljo;->b(Ljo;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    const/16 v3, 0xc8

    if-ne v1, v3, :cond_3

    .line 325
    iget-object v3, p0, Ljo$a;->a:Ljo;

    sget-object v4, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ljo;->a(Ljo;Lanet/channel/Session$Status;Lip;)V

    .line 326
    iget-object v3, p0, Ljo$a;->a:Ljo;

    invoke-static {v3}, Ljo;->c(Ljo;)Lix;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 327
    iget-object v3, p0, Ljo$a;->a:Ljo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Ljo;->u:J

    .line 328
    iget-object v3, p0, Ljo$a;->a:Ljo;

    invoke-static {v3}, Ljo;->c(Ljo;)Lix;

    move-result-object v3

    invoke-interface {v3}, Lix;->a()V

    .line 330
    :cond_0
    iget-object v3, p0, Ljo$a;->a:Ljo;

    iget-object v3, v3, Ljo;->k:Lanet/channel/statist/SessionStatistic;

    const/4 v4, 0x1

    iput v4, v3, Lanet/channel/statist/SessionStatistic;->ret:I

    .line 331
    const-string/jumbo v3, "awcn.AccsSession"

    const-string/jumbo v4, "spdyOnStreamResponse"

    iget-object v5, p0, Ljo$a;->a:Ljo;

    invoke-static {v5}, Ljo;->d(Ljo;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "authTime"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Ljo$a;->a:Ljo;

    iget-object v8, v8, Ljo;->k:Lanet/channel/statist/SessionStatistic;

    iget-wide v8, v8, Lanet/channel/statist/SessionStatistic;->authTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    :goto_1
    iget-object v3, p0, Ljo$a;->a:Ljo;

    iget-wide v4, v3, Ljo;->v:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 336
    iget-object v3, p0, Ljo$a;->a:Ljo;

    iget-object v3, v3, Ljo;->k:Lanet/channel/statist/SessionStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Ljo$a;->a:Ljo;

    iget-wide v6, v6, Ljo;->v:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lanet/channel/statist/SessionStatistic;->authTime:J

    .line 339
    :cond_1
    const-string/jumbo v3, "x-at"

    invoke-static {p4, v3}, Lku;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, "serverToken":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 341
    sput-object v2, Lic;->b:Ljava/lang/String;

    .line 347
    .end local v2    # "serverToken":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 333
    :cond_3
    iget-object v3, p0, Ljo$a;->a:Ljo;

    invoke-static {v3, v1}, Ljo;->a(Ljo;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "awcn.AccsSession"

    const-string/jumbo v4, "spdyOnStreamResponse"

    iget-object v5, p0, Ljo$a;->a:Ljo;

    invoke-static {v5}, Ljo;->e(Ljo;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v0, v6}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 345
    iget-object v3, p0, Ljo$a;->a:Ljo;

    invoke-virtual {v3}, Ljo;->b()V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto/16 :goto_0
.end method

.method public final spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;JILjava/lang/Object;Lorg/android/spdy/SuperviseData;)V
    .locals 4
    .param p1, "spdySession"    # Lorg/android/spdy/SpdySession;
    .param p2, "l"    # J
    .param p4, "statusCode"    # I
    .param p5, "o"    # Ljava/lang/Object;
    .param p6, "superviseData"    # Lorg/android/spdy/SuperviseData;

    .prologue
    .line 351
    if-eqz p4, :cond_0

    .line 352
    const-string/jumbo v0, "awcn.AccsSession"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AUTH spdyStreamCloseCallback: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljo$a;->a:Ljo;

    invoke-static {v2}, Ljo;->f(Ljo;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    iget-object v0, p0, Ljo$a;->a:Ljo;

    invoke-static {v0, p4}, Ljo;->a(Ljo;I)V

    .line 355
    :cond_0
    return-void
.end method
