.class public final Lamb;
.super Ljava/lang/Object;
.source "TnetUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamb$a;
    }
.end annotation


# static fields
.field public static final a:Lalo;

.field public static b:I

.field private static final c:Ljava/lang/Object;

.field private static final d:Ljava/lang/Object;

.field private static e:I

.field private static f:I

.field private static g:Lorg/android/spdy/SpdySession;

.field private static h:Ljava/io/ByteArrayOutputStream;

.field private static i:J

.field private static j:J

.field private static k:[B

.field private static l:Z

.field private static m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 34
    new-instance v0, Lalo;

    invoke-direct {v0}, Lalo;-><init>()V

    sput-object v0, Lamb;->a:Lalo;

    .line 35
    sput v1, Lamb;->b:I

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lamb;->c:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lamb;->d:Ljava/lang/Object;

    .line 45
    const/4 v0, -0x1

    sput v0, Lamb;->e:I

    .line 46
    sput v1, Lamb;->f:I

    .line 47
    sput-object v2, Lamb;->g:Lorg/android/spdy/SpdySession;

    .line 48
    sput-object v2, Lamb;->h:Ljava/io/ByteArrayOutputStream;

    .line 49
    sput-wide v4, Lamb;->i:J

    .line 50
    sput-wide v4, Lamb;->j:J

    .line 51
    sput-object v2, Lamb;->k:[B

    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Lamb;->l:Z

    .line 55
    sput-boolean v1, Lamb;->m:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    return-void
.end method

.method static synthetic a(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 32
    sput p0, Lamb;->e:I

    return p0
.end method

.method static synthetic a(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 32
    sput-wide p0, Lamb;->j:J

    return-wide p0
.end method

.method static a([B)Lalw;
    .locals 24
    .param p0, "bytes"    # [B

    .prologue
    .line 65
    invoke-static {}, Lamu;->b()V

    .line 66
    sget-object v5, Lamb;->a:Lalo;

    sget v6, Laln;->g:I

    const/4 v7, 0x0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v6, v7, v8}, Laln;->a(ILjava/lang/String;Ljava/lang/Double;)Laln;

    move-result-object v6

    invoke-virtual {v5, v6}, Lalo;->a(Laln;)V

    .line 68
    new-instance v11, Lalw;

    invoke-direct {v11}, Lalw;-><init>()V

    .line 70
    .local v11, "bizResponse":Lalw;
    sget-object v6, Lamb;->d:Ljava/lang/Object;

    monitor-enter v6

    .line 71
    :try_start_0
    sput-object p0, Lamb;->k:[B

    .line 72
    const/4 v5, 0x0

    sput v5, Lamb;->f:I

    .line 73
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    sget-object v20, Lamb;->c:Ljava/lang/Object;

    monitor-enter v20

    .line 75
    :try_start_1
    sget-object v5, Lamb;->h:Ljava/io/ByteArrayOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_0

    .line 77
    :try_start_2
    sget-object v5, Lamb;->h:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    :cond_0
    :goto_0
    const/4 v5, 0x0

    :try_start_3
    sput-object v5, Lamb;->h:Ljava/io/ByteArrayOutputStream;

    .line 83
    const-wide/16 v6, 0x0

    sput-wide v6, Lamb;->i:J

    .line 84
    const-wide/16 v6, 0x0

    sput-wide v6, Lamb;->j:J

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 87
    .local v18, "startTime":J
    const/4 v5, -0x1

    sput v5, Lamb;->e:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    :try_start_4
    sget-object v5, Lamb;->g:Lorg/android/spdy/SpdySession;

    if-nez v5, :cond_8

    sget-boolean v5, Lamb;->l:Z

    if-nez v5, :cond_1

    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v5

    .line 1151
    iget-boolean v5, v5, Lajw;->r:Z

    .line 89
    if-eqz v5, :cond_8

    .line 91
    :cond_1
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v5

    .line 2123
    iget-boolean v5, v5, Lajw;->s:Z

    .line 91
    if-eqz v5, :cond_2

    .line 92
    sget-object v5, Lamb;->a:Lalo;

    sget v6, Laln;->h:I

    const/4 v7, 0x0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v6, v7, v8}, Laln;->a(ILjava/lang/String;Ljava/lang/Double;)Laln;

    move-result-object v6

    invoke-virtual {v5, v6}, Lalo;->a(Laln;)V

    .line 95
    :cond_2
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v5

    .line 2305
    iget-object v12, v5, Lajw;->c:Landroid/content/Context;

    .line 96
    .local v12, "context":Landroid/content/Context;
    sget-object v5, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v6, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {v12, v5, v6}, Lorg/android/spdy/SpdyAgent;->getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;

    move-result-object v15

    .line 97
    .local v15, "spdyAgent":Lorg/android/spdy/SpdyAgent;
    invoke-static {}, Lama;->a()Lama;

    move-result-object v5

    invoke-virtual {v5}, Lama;->b()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 98
    new-instance v5, Lamb$1;

    invoke-direct {v5}, Lamb$1;-><init>()V

    invoke-virtual {v15, v5}, Lorg/android/spdy/SpdyAgent;->setAccsSslCallback(Lorg/android/spdy/AccsSSLCallback;)V

    .line 107
    :cond_3
    new-instance v9, Lamb$a;

    const/4 v5, 0x0

    invoke-direct {v9, v5}, Lamb$a;-><init>(B)V

    .line 114
    .local v9, "sessionCb":Lamb$a;
    invoke-static {}, Lalz;->a()Lalz;

    move-result-object v5

    .line 3042
    iget-object v14, v5, Lalz;->b:Lalz$a;

    .line 3071
    .local v14, "hostPortEntity":Lalz$a;
    iget-object v3, v14, Lalz$a;->a:Ljava/lang/String;

    .line 3075
    .local v3, "host":Ljava/lang/String;
    iget v4, v14, Lalz$a;->b:I

    .line 117
    .local v4, "port":I
    new-instance v2, Lorg/android/spdy/SessionInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v10, 0x1090

    invoke-direct/range {v2 .. v10}, Lorg/android/spdy/SessionInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lorg/android/spdy/SessionCb;I)V

    .line 118
    .local v2, "sessionInfo":Lorg/android/spdy/SessionInfo;
    invoke-static {}, Lama;->a()Lama;

    move-result-object v5

    invoke-virtual {v5}, Lama;->b()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 119
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lorg/android/spdy/SessionInfo;->setPubKeySeqNum(I)V

    .line 147
    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "host"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "port"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "TNET_ENVIRONMENT"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    const/16 v5, 0x2710

    invoke-virtual {v2, v5}, Lorg/android/spdy/SessionInfo;->setConnectionTimeoutMs(I)V

    .line 153
    sget-object v6, Lamb;->d:Ljava/lang/Object;

    monitor-enter v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 154
    :try_start_5
    invoke-virtual {v15, v2}, Lorg/android/spdy/SpdyAgent;->createSession(Lorg/android/spdy/SessionInfo;)Lorg/android/spdy/SpdySession;

    move-result-object v5

    sput-object v5, Lamb;->g:Lorg/android/spdy/SpdySession;

    .line 156
    sget-boolean v5, Lamb;->m:Z

    if-nez v5, :cond_4

    .line 157
    invoke-static {}, Lanj;->a()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lalv;->c:Ljava/lang/String;

    .line 158
    const-string/jumbo v5, ""

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "GetWua by createSession:"

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v21, Lalv;->c:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v5, v7}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :cond_4
    const/4 v5, 0x0

    sput-boolean v5, Lamb;->m:Z

    .line 161
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 162
    :try_start_6
    const-string/jumbo v5, ""

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "createSession"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    sget-object v5, Lamb;->c:Ljava/lang/Object;

    const-wide/32 v6, 0xea60

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 176
    .end local v2    # "sessionInfo":Lorg/android/spdy/SessionInfo;
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "port":I
    .end local v9    # "sessionCb":Lamb$a;
    .end local v12    # "context":Landroid/content/Context;
    .end local v14    # "hostPortEntity":Lalz$a;
    .end local v15    # "spdyAgent":Lorg/android/spdy/SpdyAgent;
    :goto_2
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v16, v6, v18

    .line 177
    .local v16, "rt":J
    const-wide/32 v6, 0xea60

    cmp-long v5, v16, v6

    if-ltz v5, :cond_6

    .line 178
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v5

    .line 4123
    iget-boolean v5, v5, Lajw;->s:Z

    .line 178
    if-eqz v5, :cond_5

    .line 179
    sget-object v5, Lamb;->a:Lalo;

    sget v6, Laln;->i:I

    const/4 v7, 0x0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v6, v7, v8}, Laln;->a(ILjava/lang/String;Ljava/lang/Double;)Laln;

    move-result-object v6

    invoke-virtual {v5, v6}, Lalo;->a(Laln;)V

    .line 181
    :cond_5
    invoke-static {}, Lamb;->k()V

    .line 182
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "WAIT_TIMEOUT"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    :cond_6
    monitor-exit v20
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 185
    sget v5, Lamb;->f:I

    int-to-long v6, v5

    invoke-static {v6, v7}, Lalv;->a(J)V

    .line 186
    sget-object v6, Lamb;->d:Ljava/lang/Object;

    monitor-enter v6

    .line 187
    const/4 v5, 0x0

    :try_start_8
    sput-object v5, Lamb;->k:[B

    .line 188
    const/4 v5, 0x0

    sput v5, Lamb;->f:I

    .line 189
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 191
    sget v5, Lamb;->e:I

    iput v5, v11, Lalw;->a:I

    .line 192
    move-wide/from16 v0, v16

    iput-wide v0, v11, Lalw;->b:J

    .line 193
    sget-object v5, Lalv;->b:Ljava/lang/String;

    iput-object v5, v11, Lalw;->c:Ljava/lang/String;

    .line 194
    const/4 v5, 0x0

    sput-object v5, Lalv;->b:Ljava/lang/String;

    .line 196
    sget v5, Lamb;->e:I

    sput v5, Lamb;->b:I

    .line 197
    const-string/jumbo v5, "PostData"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "isSuccess"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v11}, Lalw;->a()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "errCode"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget v8, v11, Lalw;->a:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "rt"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-wide v0, v11, Lalw;->b:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    return-object v11

    .line 73
    .end local v16    # "rt":J
    .end local v18    # "startTime":J
    :catchall_0
    move-exception v5

    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v5

    .line 121
    .restart local v2    # "sessionInfo":Lorg/android/spdy/SessionInfo;
    .restart local v3    # "host":Ljava/lang/String;
    .restart local v4    # "port":I
    .restart local v9    # "sessionCb":Lamb$a;
    .restart local v12    # "context":Landroid/content/Context;
    .restart local v14    # "hostPortEntity":Lalz$a;
    .restart local v15    # "spdyAgent":Lorg/android/spdy/SpdyAgent;
    .restart local v18    # "startTime":J
    :cond_7
    const/16 v5, 0x9

    :try_start_a
    invoke-virtual {v2, v5}, Lorg/android/spdy/SessionInfo;->setPubKeySeqNum(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 171
    .end local v2    # "sessionInfo":Lorg/android/spdy/SessionInfo;
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "port":I
    .end local v9    # "sessionCb":Lamb$a;
    .end local v12    # "context":Landroid/content/Context;
    .end local v14    # "hostPortEntity":Lalz$a;
    .end local v15    # "spdyAgent":Lorg/android/spdy/SpdyAgent;
    :catch_0
    move-exception v13

    .line 172
    .local v13, "e":Ljava/lang/Exception;
    :try_start_b
    invoke-static {}, Lamb;->k()V

    .line 173
    const-string/jumbo v5, ""

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "CreateSession Exception"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v13, v6, v7

    invoke-static {v5, v6}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 184
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v18    # "startTime":J
    :catchall_1
    move-exception v5

    monitor-exit v20
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v5

    .line 161
    .restart local v2    # "sessionInfo":Lorg/android/spdy/SessionInfo;
    .restart local v3    # "host":Ljava/lang/String;
    .restart local v4    # "port":I
    .restart local v9    # "sessionCb":Lamb$a;
    .restart local v12    # "context":Landroid/content/Context;
    .restart local v14    # "hostPortEntity":Lalz$a;
    .restart local v15    # "spdyAgent":Lorg/android/spdy/SpdyAgent;
    .restart local v18    # "startTime":J
    :catchall_2
    move-exception v5

    :try_start_c
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v5

    .line 164
    .end local v2    # "sessionInfo":Lorg/android/spdy/SessionInfo;
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "port":I
    .end local v9    # "sessionCb":Lamb$a;
    .end local v12    # "context":Landroid/content/Context;
    .end local v14    # "hostPortEntity":Lalz$a;
    .end local v15    # "spdyAgent":Lorg/android/spdy/SpdyAgent;
    :cond_8
    sget-object v5, Lamb;->g:Lorg/android/spdy/SpdySession;

    if-eqz v5, :cond_a

    sget-boolean v5, Lamb;->l:Z

    if-eqz v5, :cond_9

    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v5

    .line 3151
    iget-boolean v5, v5, Lajw;->r:Z

    .line 164
    if-eqz v5, :cond_a

    .line 166
    :cond_9
    sget-object v5, Lamb;->g:Lorg/android/spdy/SpdySession;

    invoke-static {v5}, Lamb;->c(Lorg/android/spdy/SpdySession;)V

    .line 167
    sget-object v5, Lamb;->c:Ljava/lang/Object;

    const-wide/32 v6, 0xea60

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V

    goto/16 :goto_2

    .line 169
    :cond_a
    invoke-static {}, Lamb;->k()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_2

    .line 189
    .restart local v16    # "rt":J
    :catchall_3
    move-exception v5

    :try_start_e
    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v5

    .end local v16    # "rt":J
    .end local v18    # "startTime":J
    :catch_1
    move-exception v5

    goto/16 :goto_0
.end method

.method static synthetic a(Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;
    .locals 0
    .param p0, "x0"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 32
    sput-object p0, Lamb;->h:Ljava/io/ByteArrayOutputStream;

    return-object p0
.end method

.method static a()V
    .locals 2

    .prologue
    .line 402
    sget-object v1, Lamb;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 403
    :try_start_0
    sget-object v0, Lamb;->g:Lorg/android/spdy/SpdySession;

    if-nez v0, :cond_0

    .line 404
    invoke-static {}, Lank;->a()V

    .line 405
    invoke-static {}, Lalv;->a()V

    .line 406
    const/4 v0, 0x1

    sput-boolean v0, Lamb;->l:Z

    .line 410
    :goto_0
    monitor-exit v1

    return-void

    .line 408
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lamb;->l:Z

    goto :goto_0

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lorg/android/spdy/SpdySession;)V
    .locals 0
    .param p0, "x0"    # Lorg/android/spdy/SpdySession;

    .prologue
    .line 32
    invoke-static {p0}, Lamb;->c(Lorg/android/spdy/SpdySession;)V

    return-void
.end method

.method static synthetic b(J)J
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 32
    sget-wide v0, Lamb;->i:J

    add-long/2addr v0, p0

    sput-wide v0, Lamb;->i:J

    return-wide v0
.end method

.method static synthetic b([B)J
    .locals 2
    .param p0, "x0"    # [B

    .prologue
    .line 32
    .line 4394
    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    .line 4395
    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    .line 4397
    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lamo;->a([BII)I

    move-result v0

    int-to-long v0, v0

    .line 32
    goto :goto_0
.end method

.method static synthetic b(Lorg/android/spdy/SpdySession;)Lorg/android/spdy/SpdySession;
    .locals 1
    .param p0, "x0"    # Lorg/android/spdy/SpdySession;

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lamb;->g:Lorg/android/spdy/SpdySession;

    return-object v0
.end method

.method static b()V
    .locals 1

    .prologue
    .line 414
    sget-object v0, Lamb;->g:Lorg/android/spdy/SpdySession;

    if-nez v0, :cond_0

    .line 415
    invoke-static {}, Lanj;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lalv;->c:Ljava/lang/String;

    .line 416
    const/4 v0, 0x1

    sput-boolean v0, Lamb;->m:Z

    .line 418
    :cond_0
    return-void
.end method

.method static synthetic c([B)I
    .locals 3
    .param p0, "x0"    # [B

    .prologue
    const/4 v0, -0x1

    .line 32
    .line 5385
    if-nez p0, :cond_1

    .line 5386
    :cond_0
    :goto_0
    return v0

    .line 5388
    :cond_1
    invoke-static {}, Lama;->a()Lama;

    move-result-object v1

    const-string/jumbo v2, "accs_ssl_key2_adashx.m.taobao.com"

    invoke-virtual {v1, v2, p0}, Lama;->a(Ljava/lang/String;[B)I

    move-result v1

    .line 5389
    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c()Lorg/android/spdy/SpdySession;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lamb;->g:Lorg/android/spdy/SpdySession;

    return-object v0
.end method

.method private static c(Lorg/android/spdy/SpdySession;)V
    .locals 10
    .param p0, "spdySession"    # Lorg/android/spdy/SpdySession;

    .prologue
    const/high16 v9, 0x20000

    .line 203
    sget-object v7, Lamb;->d:Ljava/lang/Object;

    monitor-enter v7

    .line 205
    :cond_0
    :goto_0
    :try_start_0
    sget-object v0, Lamb;->g:Lorg/android/spdy/SpdySession;

    if-ne p0, v0, :cond_3

    sget-object v0, Lamb;->g:Lorg/android/spdy/SpdySession;

    if-eqz v0, :cond_3

    sget-object v0, Lamb;->k:[B

    if-eqz v0, :cond_3

    sget-object v0, Lamb;->k:[B

    array-length v0, v0

    sget v1, Lamb;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v0, v1, :cond_3

    .line 208
    :try_start_1
    sget-object v0, Lamb;->k:[B

    array-length v0, v0

    sget v1, Lamb;->f:I

    sub-int/2addr v0, v1

    if-le v0, v9, :cond_2

    .line 209
    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/high16 v4, 0x20000

    sget-object v0, Lamb;->k:[B

    sget v5, Lamb;->f:I

    const/high16 v8, 0x20000

    invoke-static {v0, v5, v8}, Lamo;->b([BII)[B

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/android/spdy/SpdySession;->sendCustomControlFrame(IIII[B)I

    .line 211
    sget v0, Lamb;->f:I

    add-int/2addr v0, v9

    sput v0, Lamb;->f:I
    :try_end_1
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v6

    .line 221
    .local v6, "e":Lorg/android/spdy/SpdyErrorException;
    :try_start_2
    const-string/jumbo v0, ""

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "SpdyErrorException"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-virtual {v6}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v0

    const/16 v1, -0xf08

    if-eq v0, v1, :cond_1

    .line 223
    invoke-virtual {v6}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v0

    sput v0, Lamb;->e:I

    .line 224
    invoke-static {}, Lamb;->k()V

    .line 226
    :cond_1
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    .end local v6    # "e":Lorg/android/spdy/SpdyErrorException;
    :goto_1
    return-void

    .line 213
    :cond_2
    :try_start_3
    sget-object v0, Lamb;->k:[B

    array-length v0, v0

    sget v1, Lamb;->f:I

    sub-int v4, v0, v1

    .line 214
    .local v4, "len":I
    if-lez v4, :cond_0

    .line 215
    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    sget-object v0, Lamb;->k:[B

    sget v5, Lamb;->f:I

    invoke-static {v0, v5, v4}, Lamo;->b([BII)[B

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/android/spdy/SpdySession;->sendCustomControlFrame(IIII[B)I

    .line 217
    sget v0, Lamb;->f:I

    add-int/2addr v0, v4

    sput v0, Lamb;->f:I
    :try_end_3
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 232
    .end local v4    # "len":I
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 229
    :cond_3
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method static synthetic d()Ljava/io/ByteArrayOutputStream;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lamb;->h:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method static synthetic e()J
    .locals 2

    .prologue
    .line 32
    sget-wide v0, Lamb;->j:J

    return-wide v0
.end method

.method static synthetic f()J
    .locals 2

    .prologue
    .line 32
    sget-wide v0, Lamb;->i:J

    return-wide v0
.end method

.method static synthetic g()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lamb;->e:I

    return v0
.end method

.method static synthetic h()V
    .locals 0

    .prologue
    .line 32
    invoke-static {}, Lamb;->k()V

    return-void
.end method

.method static synthetic i()V
    .locals 0

    .prologue
    .line 32
    invoke-static {}, Lamb;->l()V

    return-void
.end method

.method static synthetic j()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lamb;->d:Ljava/lang/Object;

    return-object v0
.end method

.method private static k()V
    .locals 2

    .prologue
    .line 236
    invoke-static {}, Lamu;->b()V

    .line 237
    sget-object v1, Lamb;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    :try_start_0
    sget-object v0, Lamb;->g:Lorg/android/spdy/SpdySession;

    if-eqz v0, :cond_0

    .line 239
    sget-object v0, Lamb;->g:Lorg/android/spdy/SpdySession;

    invoke-virtual {v0}, Lorg/android/spdy/SpdySession;->closeSession()I

    .line 241
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lamb;->g:Lorg/android/spdy/SpdySession;

    .line 243
    invoke-static {}, Lalv;->b()V

    .line 244
    invoke-static {}, Lank;->a()V

    .line 245
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-static {}, Lamb;->l()V

    .line 247
    return-void

    .line 245
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static l()V
    .locals 2

    .prologue
    .line 250
    sget-object v1, Lamb;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 251
    :try_start_0
    sget-object v0, Lamb;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 252
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
