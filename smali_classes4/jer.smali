.class public final Ljer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljer;->b:J

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Ljer;->a:Ljava/lang/StringBuilder;

    .line 15
    return-void
.end method

.method private b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 34
    iget-wide v0, p0, Ljer;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljer;->b:J

    .line 36
    iget-object v0, p0, Ljer;->a:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    iget-object v0, p0, Ljer;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    :cond_0
    iget-object v0, p0, Ljer;->a:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ljer;->b:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    iget-object v0, p0, Ljer;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Ljer;->a:Ljava/lang/StringBuilder;

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljer;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/megvii/livenessdetection/Detector$DetectionFailedType;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 26
    monitor-enter p0

    if-nez p1, :cond_0

    .line 31
    :goto_0
    monitor-exit p0

    return-void

    .line 28
    :cond_0
    :try_start_0
    invoke-direct {p0}, Ljer;->b()V

    .line 29
    iget-object v1, p0, Ljer;->a:Ljava/lang/StringBuilder;

    .line 2064
    const-string/jumbo v0, ""

    .line 2065
    sget-object v2, Ljer$1;->a:[I

    invoke-virtual {p1}, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 29
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-object v0, p0, Ljer;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2067
    :pswitch_0
    :try_start_1
    const-string/jumbo v0, "n"

    goto :goto_1

    .line 2070
    :pswitch_1
    const-string/jumbo v0, "b"

    goto :goto_1

    .line 2073
    :pswitch_2
    const-string/jumbo v0, "t"

    goto :goto_1

    .line 2076
    :pswitch_3
    const-string/jumbo v0, "m"

    goto :goto_1

    .line 2079
    :pswitch_4
    const-string/jumbo v0, "o"

    goto :goto_1

    .line 2082
    :pswitch_5
    const-string/jumbo v0, "l"

    goto :goto_1

    .line 2085
    :pswitch_6
    const-string/jumbo v0, "c"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2065
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final declared-synchronized a(Lcom/megvii/livenessdetection/Detector$DetectionType;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 18
    monitor-enter p0

    if-nez p1, :cond_0

    .line 23
    :goto_0
    monitor-exit p0

    return-void

    .line 20
    :cond_0
    :try_start_0
    invoke-direct {p0}, Ljer;->b()V

    .line 21
    iget-object v1, p0, Ljer;->a:Ljava/lang/StringBuilder;

    .line 1092
    const-string/jumbo v0, ""

    .line 1093
    sget-object v2, Ljer$1;->b:[I

    invoke-virtual {p1}, Lcom/megvii/livenessdetection/Detector$DetectionType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 21
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v0, p0, Ljer;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1095
    :pswitch_0
    :try_start_1
    const-string/jumbo v0, "N"

    goto :goto_1

    .line 1098
    :pswitch_1
    const-string/jumbo v0, "O"

    goto :goto_1

    .line 1101
    :pswitch_2
    const-string/jumbo v0, "E"

    goto :goto_1

    .line 1104
    :pswitch_3
    const-string/jumbo v0, "M"

    goto :goto_1

    .line 1107
    :pswitch_4
    const-string/jumbo v0, "Y"

    goto :goto_1

    .line 1110
    :pswitch_5
    const-string/jumbo v0, "L"

    goto :goto_1

    .line 1113
    :pswitch_6
    const-string/jumbo v0, "R"

    goto :goto_1

    .line 1116
    :pswitch_7
    const-string/jumbo v0, "P"

    goto :goto_1

    .line 1119
    :pswitch_8
    const-string/jumbo v0, "U"

    goto :goto_1

    .line 1122
    :pswitch_9
    const-string/jumbo v0, "D"

    goto :goto_1

    .line 1125
    :pswitch_a
    const-string/jumbo v0, "A"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1093
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljer;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
