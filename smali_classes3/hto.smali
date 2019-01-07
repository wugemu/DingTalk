.class public final Lhto;
.super Ljava/lang/Object;
.source "RunningStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhto$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Lhtq;

.field c:Ljava/io/File;

.field public d:Lhto$a;

.field public e:Lhto$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLhtq;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "appVersion"    # Ljava/lang/String;
    .param p5, "processName"    # Ljava/lang/String;
    .param p6, "startupTime"    # J
    .param p8, "storageManager"    # Lhtq;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lhto;->a:Landroid/content/Context;

    .line 29
    move-object/from16 v0, p8

    iput-object v0, p0, Lhto;->b:Lhtq;

    .line 30
    new-instance v2, Lhto$a;

    move-object v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Lhto$a;-><init>(Lhto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v2, p0, Lhto;->d:Lhto$a;

    .line 31
    iget-object v2, p0, Lhto;->b:Lhtq;

    const-string/jumbo v3, "STARTUP_MONITOR"

    invoke-virtual {v2, v3}, Lhtq;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lhto;->c:Ljava/io/File;

    .line 33
    iget-object v2, p0, Lhto;->c:Ljava/io/File;

    invoke-static {v2}, Lhtr;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v13

    .line 34
    .local v13, "strStatupState":Ljava/lang/String;
    invoke-static {v13}, Lhua;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    new-instance v12, Lhto$a;

    invoke-direct {v12, p0}, Lhto$a;-><init>(Lhto;)V

    .line 1160
    .local v12, "lastRunningState":Lhto$a;
    :try_start_0
    const-string/jumbo v2, ","

    invoke-virtual {v13, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1161
    const/4 v3, 0x0

    aget-object v3, v2, v3

    iput-object v3, v12, Lhto$a;->a:Ljava/lang/String;

    .line 1162
    const/4 v3, 0x1

    aget-object v3, v2, v3

    iput-object v3, v12, Lhto$a;->b:Ljava/lang/String;

    .line 1163
    const/4 v3, 0x2

    aget-object v3, v2, v3

    iput-object v3, v12, Lhto$a;->c:Ljava/lang/String;

    .line 1164
    const/4 v3, 0x3

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v12, Lhto$a;->d:J

    .line 1165
    const/4 v3, 0x4

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v12, Lhto$a;->e:J

    .line 1166
    const/4 v3, 0x5

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v12, Lhto$a;->f:J

    .line 1167
    const/4 v3, 0x6

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v12, Lhto$a;->g:J

    .line 1168
    const/4 v3, 0x7

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v12, Lhto$a;->h:I

    .line 1169
    const/16 v3, 0x8

    aget-object v3, v2, v3

    iput-object v3, v12, Lhto$a;->i:Ljava/lang/String;

    .line 1170
    const/16 v3, 0x9

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v12, Lhto$a;->j:I

    .line 1171
    const/16 v3, 0xa

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v12, Lhto$a;->k:I

    .line 1172
    const/16 v3, 0xb

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v12, Lhto$a;->l:I

    .line 1173
    const/16 v3, 0xc

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v12, Lhto$a;->m:I

    .line 1174
    const/16 v3, 0xd

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v12, Lhto$a;->n:I

    .line 1175
    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v12, Lhto$a;->o:I

    .line 38
    iput-object v12, p0, Lhto;->e:Lhto$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v12    # "lastRunningState":Lhto$a;
    :cond_0
    :goto_0
    iget-object v2, p0, Lhto;->e:Lhto$a;

    if-eqz v2, :cond_1

    .line 46
    iget-object v2, p0, Lhto;->d:Lhto$a;

    iget-wide v2, v2, Lhto$a;->f:J

    iget-object v4, p0, Lhto;->e:Lhto$a;

    iget-wide v4, v4, Lhto$a;->f:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    const/4 v10, 0x1

    .line 48
    .local v10, "deviceRestart":Z
    :goto_1
    iget-object v2, p0, Lhto;->d:Lhto$a;

    iget v3, v2, Lhto$a;->j:I

    iget-object v4, p0, Lhto;->e:Lhto$a;

    iget v4, v4, Lhto$a;->j:I

    add-int/2addr v3, v4

    iput v3, v2, Lhto$a;->j:I

    .line 50
    if-nez v10, :cond_1

    .line 51
    iget-object v2, p0, Lhto;->d:Lhto$a;

    iget v3, v2, Lhto$a;->k:I

    iget-object v4, p0, Lhto;->e:Lhto$a;

    iget v4, v4, Lhto$a;->k:I

    add-int/2addr v3, v4

    iput v3, v2, Lhto$a;->k:I

    .line 53
    iget-object v2, p0, Lhto;->d:Lhto$a;

    iget-wide v2, v2, Lhto$a;->f:J

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    iget-object v4, p0, Lhto;->e:Lhto$a;

    iget-wide v4, v4, Lhto$a;->f:J

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 54
    iget-object v2, p0, Lhto;->d:Lhto$a;

    iget v3, v2, Lhto$a;->n:I

    iget-object v4, p0, Lhto;->e:Lhto$a;

    iget v4, v4, Lhto$a;->n:I

    add-int/2addr v3, v4

    iput v3, v2, Lhto$a;->n:I

    .line 55
    iget-object v2, p0, Lhto;->d:Lhto$a;

    iget v3, v2, Lhto$a;->o:I

    iget-object v4, p0, Lhto;->e:Lhto$a;

    iget v4, v4, Lhto$a;->o:I

    add-int/2addr v3, v4

    iput v3, v2, Lhto$a;->o:I

    .line 56
    iget-object v2, p0, Lhto;->d:Lhto$a;

    iget v3, v2, Lhto$a;->m:I

    iget-object v4, p0, Lhto;->e:Lhto$a;

    iget v4, v4, Lhto$a;->m:I

    add-int/2addr v3, v4

    iput v3, v2, Lhto$a;->m:I

    .line 57
    iget-object v2, p0, Lhto;->d:Lhto$a;

    iget v3, v2, Lhto$a;->l:I

    iget-object v4, p0, Lhto;->e:Lhto$a;

    iget v4, v4, Lhto$a;->l:I

    add-int/2addr v3, v4

    iput v3, v2, Lhto$a;->l:I

    .line 74
    .end local v10    # "deviceRestart":Z
    :cond_1
    :goto_2
    invoke-direct {p0}, Lhto;->a()V

    .line 75
    return-void

    .line 39
    .restart local v12    # "lastRunningState":Lhto$a;
    :catch_0
    move-exception v11

    .line 40
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "lastRunningState deserialize"

    invoke-static {v2, v11}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 46
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "lastRunningState":Lhto$a;
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 58
    .restart local v10    # "deviceRestart":Z
    :cond_3
    iget-object v2, p0, Lhto;->d:Lhto$a;

    iget-wide v2, v2, Lhto$a;->f:J

    const-wide/32 v4, 0x493e0

    div-long/2addr v2, v4

    iget-object v4, p0, Lhto;->e:Lhto$a;

    iget-wide v4, v4, Lhto$a;->f:J

    const-wide/32 v6, 0x493e0

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 60
    iget-object v2, p0, Lhto;->d:Lhto$a;

    iget v3, v2, Lhto$a;->o:I

    iget-object v4, p0, Lhto;->e:Lhto$a;

    iget v4, v4, Lhto$a;->o:I

    add-int/2addr v3, v4

    iput v3, v2, Lhto$a;->o:I

    .line 61
    iget-object v2, p0, Lhto;->d:Lhto$a;

    iget v3, v2, Lhto$a;->m:I

    iget-object v4, p0, Lhto;->e:Lhto$a;

    iget v4, v4, Lhto$a;->m:I

    add-int/2addr v3, v4

    iput v3, v2, Lhto$a;->m:I

    .line 62
    iget-object v2, p0, Lhto;->d:Lhto$a;

    iget v3, v2, Lhto$a;->l:I

    iget-object v4, p0, Lhto;->e:Lhto$a;

    iget v4, v4, Lhto$a;->l:I

    add-int/2addr v3, v4

    iput v3, v2, Lhto$a;->l:I

    goto :goto_2

    .line 63
    :cond_4
    iget-object v2, p0, Lhto;->d:Lhto$a;

    iget-wide v2, v2, Lhto$a;->f:J

    const-wide/32 v4, 0x36ee80

    div-long/2addr v2, v4

    iget-object v4, p0, Lhto;->e:Lhto$a;

    iget-wide v4, v4, Lhto$a;->f:J

    const-wide/32 v6, 0x36ee80

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 65
    iget-object v2, p0, Lhto;->d:Lhto$a;

    iget v3, v2, Lhto$a;->m:I

    iget-object v4, p0, Lhto;->e:Lhto$a;

    iget v4, v4, Lhto$a;->m:I

    add-int/2addr v3, v4

    iput v3, v2, Lhto$a;->m:I

    .line 66
    iget-object v2, p0, Lhto;->d:Lhto$a;

    iget v3, v2, Lhto$a;->l:I

    iget-object v4, p0, Lhto;->e:Lhto$a;

    iget v4, v4, Lhto$a;->l:I

    add-int/2addr v3, v4

    iput v3, v2, Lhto$a;->l:I

    goto :goto_2

    .line 67
    :cond_5
    iget-object v2, p0, Lhto;->d:Lhto$a;

    iget-wide v2, v2, Lhto$a;->f:J

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    iget-object v4, p0, Lhto;->e:Lhto$a;

    iget-wide v4, v4, Lhto$a;->f:J

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 69
    iget-object v2, p0, Lhto;->d:Lhto$a;

    iget v3, v2, Lhto$a;->l:I

    iget-object v4, p0, Lhto;->e:Lhto$a;

    iget v4, v4, Lhto$a;->l:I

    add-int/2addr v3, v4

    iput v3, v2, Lhto$a;->l:I

    goto/16 :goto_2
.end method

.method private declared-synchronized a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhto;->c:Ljava/io/File;

    iget-object v1, p0, Lhto;->d:Lhto$a;

    .line 2152
    const-string/jumbo v2, "%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s"

    const/16 v3, 0xf

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lhto$a;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v1, Lhto$a;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, v1, Lhto$a;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-wide v6, v1, Lhto$a;->d:J

    .line 2153
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-wide v6, v1, Lhto$a;->e:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-wide v6, v1, Lhto$a;->f:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-wide v6, v1, Lhto$a;->g:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    iget v5, v1, Lhto$a;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    iget-object v5, v1, Lhto$a;->i:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x9

    iget v5, v1, Lhto$a;->j:I

    .line 2154
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xa

    iget v5, v1, Lhto$a;->k:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xb

    iget v5, v1, Lhto$a;->l:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xc

    iget v5, v1, Lhto$a;->m:I

    .line 2155
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xd

    iget v5, v1, Lhto$a;->n:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xe

    iget v1, v1, Lhto$a;->o:I

    .line 2156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    .line 2152
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v0, v1}, Lhtr;->a(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
