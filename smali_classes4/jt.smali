.class public abstract Ljt;
.super Lanet/channel/Session;
.source "TnetSpdySession.java"

# interfaces
.implements Lorg/android/spdy/SessionCb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljt$a;
    }
.end annotation


# instance fields
.field protected r:Lorg/android/spdy/SpdyAgent;

.field protected s:Lorg/android/spdy/SpdySession;

.field protected volatile t:Z

.field protected u:J

.field protected v:J

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lim;Lanet/channel/entity/ConnType;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lim;
    .param p3, "type"    # Lanet/channel/entity/ConnType;

    .prologue
    const/4 v4, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lanet/channel/Session;-><init>(Landroid/content/Context;Lim;Lanet/channel/entity/ConnType;)V

    .line 62
    iput-boolean v4, p0, Ljt;->t:Z

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljt;->v:J

    .line 66
    iput v4, p0, Ljt;->w:I

    .line 1284
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lorg/android/spdy/SpdyAgent;->enableDebug:Z

    .line 1285
    iget-object v0, p0, Ljt;->a:Landroid/content/Context;

    sget-object v1, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v2, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {v0, v1, v2}, Lorg/android/spdy/SpdyAgent;->getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;

    move-result-object v0

    iput-object v0, p0, Ljt;->r:Lorg/android/spdy/SpdyAgent;

    .line 1286
    iget-object v0, p0, Ljt;->r:Lorg/android/spdy/SpdyAgent;

    new-instance v1, Ljt$1;

    invoke-direct {v1, p0}, Ljt$1;-><init>(Ljt;)V

    invoke-virtual {v0, v1}, Lorg/android/spdy/SpdyAgent;->setAccsSslCallback(Lorg/android/spdy/AccsSSLCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1294
    :goto_0
    return-void

    .line 1292
    :catch_0
    move-exception v0

    .line 1293
    const-string/jumbo v1, "awcn.TnetSpdySession"

    const-string/jumbo v2, "Init failed."

    const/4 v3, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Ljt;I)I
    .locals 1
    .param p0, "x0"    # Ljt;
    .param p1, "x1"    # I

    .prologue
    .line 58
    const/4 v0, 0x0

    iput v0, p0, Ljt;->w:I

    return v0
.end method

.method static synthetic a(Ljt;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Ljt;

    .prologue
    .line 58
    iget-object v0, p0, Ljt;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Ljt;Lanet/channel/entity/EventType;Lip;)V
    .locals 1
    .param p0, "x0"    # Ljt;
    .param p1, "x1"    # Lanet/channel/entity/EventType;
    .param p2, "x2"    # Lip;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljt;->a(Lanet/channel/entity/EventType;Lip;)V

    return-void
.end method

.method static synthetic b(Ljt;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljt;

    .prologue
    .line 58
    iget-object v0, p0, Ljt;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Ljt;Lanet/channel/entity/EventType;Lip;)V
    .locals 1
    .param p0, "x0"    # Ljt;
    .param p1, "x1"    # Lanet/channel/entity/EventType;
    .param p2, "x2"    # Lip;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljt;->a(Lanet/channel/entity/EventType;Lip;)V

    return-void
.end method

.method static synthetic c(Ljt;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljt;

    .prologue
    .line 58
    iget-object v0, p0, Ljt;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Ljt;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljt;

    .prologue
    .line 58
    iget-object v0, p0, Ljt;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Ljt;)I
    .locals 1
    .param p0, "x0"    # Ljt;

    .prologue
    .line 58
    iget v0, p0, Ljt;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljt;->w:I

    return v0
.end method

.method static synthetic f(Ljt;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljt;

    .prologue
    .line 58
    iget-object v0, p0, Ljt;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Ljt;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljt;

    .prologue
    .line 58
    iget-object v0, p0, Ljt;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lanet/channel/request/Request;Lie;)Lji;
    .locals 20
    .param p1, "request"    # Lanet/channel/request/Request;
    .param p2, "cb"    # Lie;

    .prologue
    .line 83
    sget-object v14, Ljk;->a:Ljk;

    .line 85
    .local v14, "ret":Lji;
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    move-object/from16 v16, v0

    .line 86
    .local v16, "rs":Lanet/channel/statist/RequestStatistic;
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Ljt;->g:Lanet/channel/entity/ConnType;

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lanet/channel/statist/RequestStatistic;->setConnType(Lanet/channel/entity/ConnType;)V

    .line 87
    move-object/from16 v0, p0

    iget-object v6, v0, Ljt;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Ljt;->f:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Lanet/channel/statist/RequestStatistic;->setIPAndPort(Ljava/lang/String;I)V

    .line 88
    move-object/from16 v0, v16

    iget-wide v6, v0, Lanet/channel/statist/RequestStatistic;->start:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, v16

    iput-wide v6, v0, Lanet/channel/statist/RequestStatistic;->start:J

    .line 92
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_4

    .line 93
    :cond_1
    if-eqz p2, :cond_2

    .line 94
    const/16 v6, -0x66

    const/16 v7, -0x66

    invoke-static {v7}, Lks;->a(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v6, v7, v1}, Lie;->a(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    :cond_2
    move-object v15, v14

    .line 151
    .end local v14    # "ret":Lji;
    .local v15, "ret":Ljava/lang/Object;
    :goto_1
    return-object v15

    .line 85
    .end local v15    # "ret":Ljava/lang/Object;
    .end local v16    # "rs":Lanet/channel/statist/RequestStatistic;
    .restart local v14    # "ret":Lji;
    :cond_3
    new-instance v16, Lanet/channel/statist/RequestStatistic;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljt;->d:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v6, v7}, Lanet/channel/statist/RequestStatistic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    .restart local v16    # "rs":Lanet/channel/statist/RequestStatistic;
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Ljt;->s:Lorg/android/spdy/SpdySession;

    if-eqz v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Ljt;->d()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 101
    const-string/jumbo v6, ":host"

    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->b()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lanet/channel/request/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v6, 0x2

    invoke-static {v6}, Lanet/channel/util/ALog;->a(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 104
    const-string/jumbo v6, "awcn.TnetSpdySession"

    const-string/jumbo v7, ""

    .line 2176
    move-object/from16 v0, p1

    iget-object v8, v0, Lanet/channel/request/Request;->g:Ljava/lang/String;

    .line 104
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v18, 0x0

    const-string/jumbo v19, "request URL"

    aput-object v19, v9, v18

    const/16 v18, 0x1

    .line 3079
    move-object/from16 v0, p1

    iget-object v0, v0, Lanet/channel/request/Request;->a:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 104
    aput-object v19, v9, v18

    invoke-static {v6, v7, v8, v9}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    const-string/jumbo v6, "awcn.TnetSpdySession"

    const-string/jumbo v7, ""

    .line 3176
    move-object/from16 v0, p1

    iget-object v8, v0, Lanet/channel/request/Request;->g:Ljava/lang/String;

    .line 105
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v18, 0x0

    const-string/jumbo v19, "request headers"

    aput-object v19, v9, v18

    const/16 v18, 0x1

    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->c()Ljava/util/Map;

    move-result-object v19

    aput-object v19, v9, v18

    invoke-static {v6, v7, v8, v9}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->a()Ljava/net/URL;

    move-result-object v5

    .line 109
    .local v5, "realURL":Ljava/net/URL;
    const/4 v6, 0x0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 110
    new-instance v4, Lorg/android/spdy/SpdyRequest;

    .line 4122
    move-object/from16 v0, p1

    iget-object v6, v0, Lanet/channel/request/Request;->c:Lanet/channel/request/Request$Method;

    .line 110
    invoke-virtual {v6}, Lanet/channel/request/Request$Method;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    .line 4180
    move-object/from16 v0, p1

    iget v8, v0, Lanet/channel/request/Request;->j:I

    .line 4184
    move-object/from16 v0, p1

    iget v9, v0, Lanet/channel/request/Request;->i:I

    .line 110
    invoke-direct/range {v4 .. v9}, Lorg/android/spdy/SpdyRequest;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/android/spdy/RequestPriority;II)V

    .line 120
    .local v4, "req":Lorg/android/spdy/SpdyRequest;
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->c()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/android/spdy/SpdyRequest;->addHeaders(Ljava/util/Map;)V

    .line 121
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->d()[B

    move-result-object v13

    .line 122
    .local v13, "requestBody":[B
    new-instance v12, Lorg/android/spdy/SpdyDataProvider;

    invoke-direct {v12, v13}, Lorg/android/spdy/SpdyDataProvider;-><init>([B)V

    .line 125
    .local v12, "provider":Lorg/android/spdy/SpdyDataProvider;
    move-object/from16 v0, p0

    iget-object v6, v0, Ljt;->s:Lorg/android/spdy/SpdySession;

    new-instance v7, Ljt$a;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v7, v0, v1, v2}, Ljt$a;-><init>(Ljt;Lanet/channel/request/Request;Lie;)V

    move-object/from16 v0, p0

    invoke-virtual {v6, v4, v12, v0, v7}, Lorg/android/spdy/SpdySession;->submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Lorg/android/spdy/Spdycb;)I

    move-result v17

    .line 126
    .local v17, "streamId":I
    const/4 v6, 0x1

    invoke-static {v6}, Lanet/channel/util/ALog;->a(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 127
    const-string/jumbo v6, "awcn.TnetSpdySession"

    const-string/jumbo v7, ""

    .line 5176
    move-object/from16 v0, p1

    iget-object v8, v0, Lanet/channel/request/Request;->g:Ljava/lang/String;

    .line 127
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v18, 0x0

    const-string/jumbo v19, "streamId"

    aput-object v19, v9, v18

    const/16 v18, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v9, v18

    invoke-static {v6, v7, v8, v9}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :cond_6
    new-instance v15, Ljk;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljt;->s:Lorg/android/spdy/SpdySession;

    .line 6176
    move-object/from16 v0, p1

    iget-object v7, v0, Lanet/channel/request/Request;->g:Ljava/lang/String;

    .line 129
    move/from16 v0, v17

    invoke-direct {v15, v6, v0, v7}, Ljk;-><init>(Lorg/android/spdy/SpdySession;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 130
    .end local v14    # "ret":Lji;
    .local v15, "ret":Lji;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Ljt;->k:Lanet/channel/statist/SessionStatistic;

    iget-wide v8, v6, Lanet/channel/statist/SessionStatistic;->requestCount:J

    const-wide/16 v18, 0x1

    add-long v8, v8, v18

    iput-wide v8, v6, Lanet/channel/statist/SessionStatistic;->requestCount:J

    .line 131
    move-object/from16 v0, p0

    iget-object v6, v0, Ljt;->k:Lanet/channel/statist/SessionStatistic;

    iget-wide v8, v6, Lanet/channel/statist/SessionStatistic;->stdRCount:J

    const-wide/16 v18, 0x1

    add-long v8, v8, v18

    iput-wide v8, v6, Lanet/channel/statist/SessionStatistic;->stdRCount:J

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Ljt;->u:J
    :try_end_1
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v14, v15

    .end local v4    # "req":Lorg/android/spdy/SpdyRequest;
    .end local v5    # "realURL":Ljava/net/URL;
    .end local v12    # "provider":Lorg/android/spdy/SpdyDataProvider;
    .end local v13    # "requestBody":[B
    .end local v15    # "ret":Lji;
    .end local v17    # "streamId":I
    .restart local v14    # "ret":Lji;
    :goto_2
    move-object v15, v14

    .line 151
    .local v15, "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 135
    .end local v15    # "ret":Ljava/lang/Object;
    :cond_7
    const/16 v6, -0x12d

    :try_start_2
    const-string/jumbo v7, "Session\u4e0d\u53ef\u7528"

    move-object/from16 v0, p1

    iget-object v8, v0, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7, v8}, Lie;->a(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    :try_end_2
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 137
    :catch_0
    move-exception v10

    .line 138
    .local v10, "e":Lorg/android/spdy/SpdyErrorException;
    :goto_3
    invoke-virtual {v10}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v6

    const/16 v7, -0x450

    if-eq v6, v7, :cond_8

    invoke-virtual {v10}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v6

    const/16 v7, -0x44f

    if-ne v6, v7, :cond_9

    .line 140
    :cond_8
    const-string/jumbo v6, "awcn.TnetSpdySession"

    const-string/jumbo v7, "Send request on closed session!!!"

    move-object/from16 v0, p0

    iget-object v8, v0, Ljt;->o:Ljava/lang/String;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    new-instance v11, Lio;

    sget-object v6, Lanet/channel/entity/EventType;->DISCONNECTED:Lanet/channel/entity/EventType;

    const/4 v7, 0x0

    const/16 v8, -0x450

    const-string/jumbo v9, "Session is closed!"

    invoke-direct {v11, v6, v7, v8, v9}, Lio;-><init>(Lanet/channel/entity/EventType;ZILjava/lang/String;)V

    .line 143
    .local v11, "event":Lio;
    sget-object v6, Lanet/channel/Session$Status;->DISCONNECTED:Lanet/channel/Session$Status;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11}, Ljt;->a(Lanet/channel/Session$Status;Lip;)V

    .line 145
    .end local v11    # "event":Lio;
    :cond_9
    const/16 v6, -0x12c

    const/16 v7, -0x12c

    invoke-virtual {v10}, Lorg/android/spdy/SpdyErrorException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lks;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v6, v7, v1}, Lie;->a(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    goto :goto_2

    .line 147
    .end local v10    # "e":Lorg/android/spdy/SpdyErrorException;
    :catch_1
    move-exception v10

    .line 148
    .local v10, "e":Ljava/lang/Exception;
    :goto_4
    const/16 v6, -0x65

    const/16 v7, -0x65

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lks;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v6, v7, v1}, Lie;->a(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    goto :goto_2

    .line 147
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v14    # "ret":Lji;
    .restart local v4    # "req":Lorg/android/spdy/SpdyRequest;
    .restart local v5    # "realURL":Ljava/net/URL;
    .restart local v12    # "provider":Lorg/android/spdy/SpdyDataProvider;
    .restart local v13    # "requestBody":[B
    .local v15, "ret":Lji;
    .restart local v17    # "streamId":I
    :catch_2
    move-exception v10

    move-object v14, v15

    .end local v15    # "ret":Lji;
    .restart local v14    # "ret":Lji;
    goto :goto_4

    .line 137
    .end local v14    # "ret":Lji;
    .restart local v15    # "ret":Lji;
    :catch_3
    move-exception v10

    move-object v14, v15

    .end local v15    # "ret":Lji;
    .restart local v14    # "ret":Lji;
    goto :goto_3
.end method

.method protected final a()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 168
    iget-object v1, p0, Ljt;->i:Lanet/channel/Session$Status;

    sget-object v2, Lanet/channel/Session$Status;->CONNECTING:Lanet/channel/Session$Status;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Ljt;->i:Lanet/channel/Session$Status;

    sget-object v2, Lanet/channel/Session$Status;->CONNECTED:Lanet/channel/Session$Status;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Ljt;->i:Lanet/channel/Session$Status;

    sget-object v2, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    if-ne v1, v2, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    :try_start_0
    iget-object v1, p0, Ljt;->r:Lorg/android/spdy/SpdyAgent;

    if-eqz v1, :cond_0

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 174
    .local v6, "sessionId":Ljava/lang/String;
    const-string/jumbo v1, "awcn.TnetSpdySession"

    const-string/jumbo v2, "[connect]"

    iget-object v3, p0, Ljt;->o:Ljava/lang/String;

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v7, "host"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    iget-object v7, p0, Ljt;->c:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v7, "connect "

    aput-object v7, v4, v5

    const/4 v5, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Ljt;->e:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Ljt;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v7, "sessionId"

    aput-object v7, v4, v5

    const/4 v5, 0x5

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v7, "SpdyProtocol,"

    aput-object v7, v4, v5

    const/4 v5, 0x7

    iget-object v7, p0, Ljt;->g:Lanet/channel/entity/ConnType;

    invoke-virtual {v7}, Lanet/channel/entity/ConnType;->toProtocol()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/16 v5, 0x8

    const-string/jumbo v7, "proxyIp,"

    aput-object v7, v4, v5

    const/16 v5, 0x9

    const/4 v7, 0x0

    aput-object v7, v4, v5

    const/16 v5, 0xa

    const-string/jumbo v7, "proxyPort,"

    aput-object v7, v4, v5

    const/16 v5, 0xb

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    new-instance v0, Lorg/android/spdy/SessionInfo;

    iget-object v1, p0, Ljt;->e:Ljava/lang/String;

    iget v2, p0, Ljt;->f:I

    iget-object v3, p0, Ljt;->c:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v7, p0, Ljt;->g:Lanet/channel/entity/ConnType;

    invoke-virtual {v7}, Lanet/channel/entity/ConnType;->getTnetConType()I

    move-result v8

    move-object v7, p0

    invoke-direct/range {v0 .. v8}, Lorg/android/spdy/SessionInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lorg/android/spdy/SessionCb;I)V

    .line 178
    .local v0, "info":Lorg/android/spdy/SessionInfo;
    iget v1, p0, Ljt;->l:I

    invoke-virtual {v0, v1}, Lorg/android/spdy/SessionInfo;->setConnectionTimeoutMs(I)V

    .line 179
    iget-object v1, p0, Ljt;->g:Lanet/channel/entity/ConnType;

    invoke-virtual {v1}, Lanet/channel/entity/ConnType;->getTnetPublicKey()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/android/spdy/SessionInfo;->setPubKeySeqNum(I)V

    .line 180
    iget-object v1, p0, Ljt;->r:Lorg/android/spdy/SpdyAgent;

    invoke-virtual {v1, v0}, Lorg/android/spdy/SpdyAgent;->createSession(Lorg/android/spdy/SessionInfo;)Lorg/android/spdy/SpdySession;

    move-result-object v1

    iput-object v1, p0, Ljt;->s:Lorg/android/spdy/SpdySession;

    .line 182
    iget-object v1, p0, Ljt;->s:Lorg/android/spdy/SpdySession;

    invoke-virtual {v1}, Lorg/android/spdy/SpdySession;->getRefCount()I

    move-result v1

    if-le v1, v10, :cond_2

    .line 183
    const-string/jumbo v1, "awcn.TnetSpdySession"

    const-string/jumbo v2, "get session ref count > 1!!!"

    iget-object v3, p0, Ljt;->o:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    sget-object v1, Lanet/channel/Session$Status;->CONNECTED:Lanet/channel/Session$Status;

    new-instance v2, Lin;

    sget-object v3, Lanet/channel/entity/EventType;->CONNECTED:Lanet/channel/entity/EventType;

    invoke-direct {v2, v3}, Lin;-><init>(Lanet/channel/entity/EventType;)V

    invoke-virtual {p0, v1, v2}, Ljt;->a(Lanet/channel/Session$Status;Lip;)V

    .line 185
    invoke-virtual {p0}, Ljt;->m()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 200
    .end local v0    # "info":Lorg/android/spdy/SessionInfo;
    .end local v6    # "sessionId":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 201
    .local v9, "t":Ljava/lang/Throwable;
    sget-object v1, Lanet/channel/Session$Status;->CONNETFAIL:Lanet/channel/Session$Status;

    invoke-virtual {p0, v1, v12}, Ljt;->a(Lanet/channel/Session$Status;Lip;)V

    .line 202
    const-string/jumbo v1, "awcn.TnetSpdySession"

    const-string/jumbo v2, "connect exception "

    iget-object v3, p0, Ljt;->o:Ljava/lang/String;

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v9, v4}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 189
    .end local v9    # "t":Ljava/lang/Throwable;
    .restart local v0    # "info":Lorg/android/spdy/SessionInfo;
    .restart local v6    # "sessionId":Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-object v1, Lanet/channel/Session$Status;->CONNECTING:Lanet/channel/Session$Status;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljt;->a(Lanet/channel/Session$Status;Lip;)V

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ljt;->u:J

    .line 194
    iget-object v2, p0, Ljt;->k:Lanet/channel/statist/SessionStatistic;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v10

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lanet/channel/statist/SessionStatistic;->isProxy:Ljava/lang/String;

    .line 195
    iget-object v1, p0, Ljt;->k:Lanet/channel/statist/SessionStatistic;

    const-string/jumbo v2, "false"

    iput-object v2, v1, Lanet/channel/statist/SessionStatistic;->isTunnel:Ljava/lang/String;

    .line 196
    iget-object v1, p0, Ljt;->k:Lanet/channel/statist/SessionStatistic;

    invoke-static {}, Lic;->j()Z

    move-result v2

    iput-boolean v2, v1, Lanet/channel/statist/SessionStatistic;->isBackground:Z

    .line 198
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljt;->v:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_3
    move v1, v11

    .line 194
    goto :goto_1
.end method

.method public a(I[BI)V
    .locals 0
    .param p1, "dataId"    # I
    .param p2, "data"    # [B
    .param p3, "type"    # I

    .prologue
    .line 160
    return-void
.end method

.method public b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 211
    const-string/jumbo v0, "awcn.TnetSpdySession"

    const-string/jumbo v1, "force close!"

    iget-object v2, p0, Ljt;->o:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "session"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    sget-object v0, Lanet/channel/Session$Status;->DISCONNECTING:Lanet/channel/Session$Status;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljt;->a(Lanet/channel/Session$Status;Lip;)V

    .line 214
    :try_start_0
    iget-object v0, p0, Ljt;->s:Lorg/android/spdy/SpdySession;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Ljt;->s:Lorg/android/spdy/SpdySession;

    invoke-virtual {v0}, Lorg/android/spdy/SpdySession;->closeSession()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public bioPingRecvCallback(Lorg/android/spdy/SpdySession;I)V
    .locals 4
    .param p1, "arg0"    # Lorg/android/spdy/SpdySession;
    .param p2, "arg1"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 329
    const/4 v0, 0x2

    invoke-static {v0}, Lanet/channel/util/ALog;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    const-string/jumbo v0, "awcn.TnetSpdySession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljt;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ping receive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljt;->o:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 9
    .param p1, "force"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 234
    invoke-static {v6}, Lanet/channel/util/ALog;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    const-string/jumbo v1, "awcn.TnetSpdySession"

    const-string/jumbo v2, "ping"

    iget-object v3, p0, Ljt;->o:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "host"

    aput-object v5, v4, v8

    iget-object v5, p0, Ljt;->c:Ljava/lang/String;

    aput-object v5, v4, v6

    const/4 v5, 0x2

    const-string/jumbo v6, "thread"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    :cond_0
    :try_start_0
    iget-object v1, p0, Ljt;->s:Lorg/android/spdy/SpdySession;

    if-eqz v1, :cond_4

    .line 241
    iget-object v1, p0, Ljt;->i:Lanet/channel/Session$Status;

    sget-object v2, Lanet/channel/Session$Status;->CONNECTED:Lanet/channel/Session$Status;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Ljt;->i:Lanet/channel/Session$Status;

    sget-object v2, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    if-ne v1, v2, :cond_3

    .line 242
    :cond_1
    sget-object v1, Lanet/channel/entity/EventType;->PING_SEND:Lanet/channel/entity/EventType;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljt;->a(Lanet/channel/entity/EventType;Lip;)V

    .line 243
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljt;->t:Z

    .line 244
    iget-object v1, p0, Ljt;->k:Lanet/channel/statist/SessionStatistic;

    iget-wide v2, v1, Lanet/channel/statist/SessionStatistic;->ppkgCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lanet/channel/statist/SessionStatistic;->ppkgCount:J

    .line 245
    iget-object v1, p0, Ljt;->s:Lorg/android/spdy/SpdySession;

    invoke-virtual {v1}, Lorg/android/spdy/SpdySession;->submitPing()I

    .line 246
    const/4 v1, 0x1

    invoke-static {v1}, Lanet/channel/util/ALog;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    const-string/jumbo v1, "awcn.TnetSpdySession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljt;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " submit ping ms:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Ljt;->u:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " force:true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljt;->o:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    :cond_2
    invoke-virtual {p0}, Ljt;->l()V

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ljt;->u:J

    .line 265
    :cond_3
    :goto_0
    return-void

    .line 255
    :cond_4
    iget-object v1, p0, Ljt;->k:Lanet/channel/statist/SessionStatistic;

    if-eqz v1, :cond_5

    .line 256
    iget-object v1, p0, Ljt;->k:Lanet/channel/statist/SessionStatistic;

    const-string/jumbo v2, "session null"

    iput-object v2, v1, Lanet/channel/statist/SessionStatistic;->closeReason:Ljava/lang/String;

    .line 258
    :cond_5
    const-string/jumbo v1, "awcn.TnetSpdySession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljt;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " session null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljt;->o:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    invoke-virtual {p0}, Ljt;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "awcn.TnetSpdySession"

    const-string/jumbo v2, "ping"

    iget-object v3, p0, Ljt;->o:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 275
    iget-object v0, p0, Ljt;->i:Lanet/channel/Session$Status;

    sget-object v1, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSSLMeta(Lorg/android/spdy/SpdySession;)[B
    .locals 2
    .param p1, "session"    # Lorg/android/spdy/SpdySession;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 405
    iget-object v0, p0, Ljt;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llb;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected final k()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljt;->t:Z

    .line 226
    return-void
.end method

.method protected m()V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method public putSSLMeta(Lorg/android/spdy/SpdySession;[B)I
    .locals 2
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "value"    # [B

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 410
    iget-object v0, p0, Ljt;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Llb;->b(Landroid/content/Context;Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method public spdyCustomControlFrameFailCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;II)V
    .locals 0
    .param p1, "arg0"    # Lorg/android/spdy/SpdySession;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 401
    return-void
.end method

.method public spdyCustomControlFrameRecvCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;IIII[B)V
    .locals 0
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "sessionUserData"    # Ljava/lang/Object;
    .param p3, "node"    # I
    .param p4, "type"    # I
    .param p5, "flags"    # I
    .param p6, "length"    # I
    .param p7, "data"    # [B

    .prologue
    .line 338
    return-void
.end method

.method public spdyPingRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V
    .locals 8
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "unique_id"    # J
    .param p4, "sessionUserData"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 317
    invoke-static {v7}, Lanet/channel/util/ALog;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const-string/jumbo v0, "awcn.TnetSpdySession"

    const-string/jumbo v1, "ping receive"

    iget-object v2, p0, Ljt;->o:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Host"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Ljt;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string/jumbo v4, "id"

    aput-object v4, v3, v7

    const/4 v4, 0x3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_1
    iput-boolean v6, p0, Ljt;->t:Z

    .line 324
    sget-object v0, Lanet/channel/entity/EventType;->PIND_RECEIVE:Lanet/channel/entity/EventType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljt;->a(Lanet/channel/entity/EventType;Lip;)V

    goto :goto_0
.end method

.method public spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;I)V
    .locals 10
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "userData"    # Ljava/lang/Object;
    .param p3, "connInfo"    # Lorg/android/spdy/SuperviseConnectInfo;
    .param p4, "error"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 367
    const-string/jumbo v3, "awcn.TnetSpdySession"

    const-string/jumbo v4, "spdySessionCloseCallback"

    iget-object v5, p0, Ljt;->o:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, " errorCode:"

    aput-object v7, v6, v9

    const/4 v7, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    if-eqz p1, :cond_0

    .line 371
    :try_start_0
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->cleanUp()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :cond_0
    :goto_0
    iget-object v3, p0, Ljt;->k:Lanet/channel/statist/SessionStatistic;

    iget-object v3, v3, Lanet/channel/statist/SessionStatistic;->closeReason:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tnet close error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "errorDetail":Ljava/lang/String;
    :goto_1
    new-instance v2, Lio;

    sget-object v3, Lanet/channel/entity/EventType;->DISCONNECTED:Lanet/channel/entity/EventType;

    invoke-direct {v2, v3, v9, p4, v1}, Lio;-><init>(Lanet/channel/entity/EventType;ZILjava/lang/String;)V

    .line 380
    .local v2, "event":Lio;
    sget-object v3, Lanet/channel/Session$Status;->DISCONNECTED:Lanet/channel/Session$Status;

    invoke-virtual {p0, v3, v2}, Ljt;->a(Lanet/channel/Session$Status;Lip;)V

    .line 382
    if-eqz p3, :cond_1

    .line 383
    iget-object v3, p0, Ljt;->k:Lanet/channel/statist/SessionStatistic;

    iget v4, p3, Lorg/android/spdy/SuperviseConnectInfo;->reused_counter:I

    int-to-long v4, v4

    iput-wide v4, v3, Lanet/channel/statist/SessionStatistic;->requestCount:J

    .line 384
    iget-object v3, p0, Ljt;->k:Lanet/channel/statist/SessionStatistic;

    iget v4, p3, Lorg/android/spdy/SuperviseConnectInfo;->keepalive_period_second:I

    int-to-long v4, v4

    iput-wide v4, v3, Lanet/channel/statist/SessionStatistic;->liveTime:J

    .line 387
    :cond_1
    iget-object v3, p0, Ljt;->k:Lanet/channel/statist/SessionStatistic;

    iget-wide v4, v3, Lanet/channel/statist/SessionStatistic;->errorCode:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 388
    iget-object v3, p0, Ljt;->k:Lanet/channel/statist/SessionStatistic;

    int-to-long v4, p4

    iput-wide v4, v3, Lanet/channel/statist/SessionStatistic;->errorCode:J

    .line 391
    :cond_2
    iget-object v3, p0, Ljt;->k:Lanet/channel/statist/SessionStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Ljt;->u:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v3, Lanet/channel/statist/SessionStatistic;->lastPingInterval:I

    .line 392
    iget-boolean v3, p0, Ljt;->n:Z

    if-nez v3, :cond_3

    .line 393
    invoke-static {}, Lih;->a()Lij;

    move-result-object v3

    iget-object v4, p0, Ljt;->k:Lanet/channel/statist/SessionStatistic;

    invoke-interface {v3, v4}, Lij;->a(Lanet/channel/statist/StatObject;)V

    .line 394
    invoke-static {}, Lih;->a()Lij;

    move-result-object v3

    iget-object v4, p0, Ljt;->k:Lanet/channel/statist/SessionStatistic;

    invoke-virtual {v4}, Lanet/channel/statist/SessionStatistic;->getAlarmObject()Lju;

    move-result-object v4

    invoke-interface {v3, v4}, Lij;->a(Lju;)V

    .line 396
    :cond_3
    return-void

    .line 373
    .end local v1    # "errorDetail":Ljava/lang/String;
    .end local v2    # "event":Lio;
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "awcn.TnetSpdySession"

    const-string/jumbo v4, "[spdySessionCloseCallback]session clean up failed!"

    const/4 v5, 0x0

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v0, v6}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 377
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ljt;->k:Lanet/channel/statist/SessionStatistic;

    iget-object v4, v4, Lanet/channel/statist/SessionStatistic;->closeReason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljt;->k:Lanet/channel/statist/SessionStatistic;

    iget-wide v4, v4, Lanet/channel/statist/SessionStatistic;->errorCode:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method public spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V
    .locals 7
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "data"    # Lorg/android/spdy/SuperviseConnectInfo;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 300
    new-instance v0, Lin;

    sget-object v1, Lanet/channel/entity/EventType;->CONNECTED:Lanet/channel/entity/EventType;

    invoke-direct {v0, v1}, Lin;-><init>(Lanet/channel/entity/EventType;)V

    .line 301
    .local v0, "event":Lin;
    iget v1, p2, Lorg/android/spdy/SuperviseConnectInfo;->connectTime:I

    int-to-long v2, v1

    iput-wide v2, v0, Lin;->a:J

    .line 302
    iget v1, p2, Lorg/android/spdy/SuperviseConnectInfo;->handshakeTime:I

    int-to-long v2, v1

    iput-wide v2, v0, Lin;->b:J

    .line 304
    iget-object v1, p0, Ljt;->k:Lanet/channel/statist/SessionStatistic;

    iget v2, p2, Lorg/android/spdy/SuperviseConnectInfo;->connectTime:I

    int-to-long v2, v2

    iput-wide v2, v1, Lanet/channel/statist/SessionStatistic;->connectionTime:J

    .line 305
    iget-object v1, p0, Ljt;->k:Lanet/channel/statist/SessionStatistic;

    iget v2, p2, Lorg/android/spdy/SuperviseConnectInfo;->handshakeTime:I

    int-to-long v2, v2

    iput-wide v2, v1, Lanet/channel/statist/SessionStatistic;->sslTime:J

    .line 306
    iget-object v1, p0, Ljt;->k:Lanet/channel/statist/SessionStatistic;

    iget v2, p2, Lorg/android/spdy/SuperviseConnectInfo;->doHandshakeTime:I

    int-to-long v2, v2

    iput-wide v2, v1, Lanet/channel/statist/SessionStatistic;->sslCalTime:J

    .line 307
    iget-object v1, p0, Ljt;->k:Lanet/channel/statist/SessionStatistic;

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lanet/channel/statist/SessionStatistic;->netType:Ljava/lang/String;

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ljt;->v:J

    .line 309
    sget-object v1, Lanet/channel/Session$Status;->CONNECTED:Lanet/channel/Session$Status;

    invoke-virtual {p0, v1, v0}, Ljt;->a(Lanet/channel/Session$Status;Lip;)V

    .line 310
    invoke-virtual {p0}, Ljt;->m()V

    .line 312
    const-string/jumbo v1, "awcn.TnetSpdySession"

    const-string/jumbo v2, "spdySessionConnectCB connect"

    iget-object v3, p0, Ljt;->o:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "connectTime"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p2, Lorg/android/spdy/SuperviseConnectInfo;->connectTime:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "sslTime:"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, p2, Lorg/android/spdy/SuperviseConnectInfo;->handshakeTime:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    return-void
.end method

.method public spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V
    .locals 8
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "error"    # I
    .param p3, "sessionUserData"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 345
    if-eqz p1, :cond_0

    .line 346
    :try_start_0
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->cleanUp()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :cond_0
    :goto_0
    sget-object v1, Lanet/channel/Session$Status;->CONNETFAIL:Lanet/channel/Session$Status;

    new-instance v2, Lip;

    sget-object v3, Lanet/channel/entity/EventType;->CONNECT_FAIL:Lanet/channel/entity/EventType;

    const-string/jumbo v4, "tnet connect fail"

    invoke-direct {v2, v3, p2, v4}, Lip;-><init>(Lanet/channel/entity/EventType;ILjava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Ljt;->a(Lanet/channel/Session$Status;Lip;)V

    .line 353
    const-string/jumbo v1, "awcn.TnetSpdySession"

    iget-object v2, p0, Ljt;->o:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, " errorId:"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v7, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    iget-object v1, p0, Ljt;->k:Lanet/channel/statist/SessionStatistic;

    int-to-long v2, p2

    iput-wide v2, v1, Lanet/channel/statist/SessionStatistic;->errorCode:J

    .line 355
    iget-object v1, p0, Ljt;->k:Lanet/channel/statist/SessionStatistic;

    iput v6, v1, Lanet/channel/statist/SessionStatistic;->ret:I

    .line 356
    iget-object v1, p0, Ljt;->k:Lanet/channel/statist/SessionStatistic;

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lanet/channel/statist/SessionStatistic;->netType:Ljava/lang/String;

    .line 357
    iget-boolean v1, p0, Ljt;->n:Z

    if-nez v1, :cond_1

    .line 358
    invoke-static {}, Lih;->a()Lij;

    move-result-object v1

    iget-object v2, p0, Ljt;->k:Lanet/channel/statist/SessionStatistic;

    invoke-interface {v1, v2}, Lij;->a(Lanet/channel/statist/StatObject;)V

    .line 359
    invoke-static {}, Lih;->a()Lij;

    move-result-object v1

    iget-object v2, p0, Ljt;->k:Lanet/channel/statist/SessionStatistic;

    invoke-virtual {v2}, Lanet/channel/statist/SessionStatistic;->getAlarmObject()Lju;

    move-result-object v2

    invoke-interface {v1, v2}, Lij;->a(Lju;)V

    .line 361
    :cond_1
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "awcn.TnetSpdySession"

    const-string/jumbo v2, "[spdySessionFailedError]session clean up failed!"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v7, v0, v3}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
