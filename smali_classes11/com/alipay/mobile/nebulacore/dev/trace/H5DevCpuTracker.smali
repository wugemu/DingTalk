.class public Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;
.super Ljava/lang/Object;
.source "H5DevCpuTracker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5DevCpuTracker"

.field private static h5DevCpuTracker:Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;


# instance fields
.field private mDeltaIdleTime:J

.field private mDeltaProcTime:J

.field private mDeltaTotalTime:J

.field private mLastIdleTime:J

.field private mLastProcTime:J

.field private mLastTotalTime:J

.field private mPid:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 51
    .local v0, "pid":I
    iput v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->mPid:I

    .line 52
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->reset()V

    .line 53
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->h5DevCpuTracker:Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->h5DevCpuTracker:Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;

    .line 46
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->h5DevCpuTracker:Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;

    return-object v0
.end method

.method private getStatFileFirstLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "statPath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "bufReader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 165
    .local v3, "line":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 166
    .local v2, "fileReader":Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .local v1, "bufReader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 175
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 182
    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .end local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    return-object v3

    .line 176
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    :catch_0
    move-exception v4

    .line 178
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "H5DevCpuTracker"

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 179
    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 169
    .end local v2    # "fileReader":Ljava/io/FileReader;
    .end local v4    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    .line 170
    .restart local v4    # "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_3
    const-string/jumbo v5, "H5DevCpuTracker"

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 173
    if-eqz v0, :cond_0

    .line 175
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 176
    :catch_2
    move-exception v4

    .line 178
    const-string/jumbo v5, "H5DevCpuTracker"

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 173
    .end local v4    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v0, :cond_1

    .line 175
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 179
    :cond_1
    :goto_3
    throw v5

    .line 176
    :catch_3
    move-exception v4

    .line 178
    .restart local v4    # "t":Ljava/lang/Throwable;
    const-string/jumbo v6, "H5DevCpuTracker"

    invoke-static {v6, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 173
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 169
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v0, v1

    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    goto :goto_1
.end method


# virtual methods
.method public getProcessCpuUsagePercent()F
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->mDeltaTotalTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    iget-wide v2, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->mDeltaProcTime:J

    long-to-float v1, v2

    mul-float/2addr v0, v1

    iget-wide v2, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->mDeltaTotalTime:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public getSystemCpuUsagePercent()F
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->mDeltaTotalTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    iget-wide v2, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->mDeltaTotalTime:J

    iget-wide v4, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->mDeltaIdleTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    mul-float/2addr v0, v1

    iget-wide v2, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->mDeltaTotalTime:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->mLastIdleTime:J

    .line 63
    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->mLastTotalTime:J

    .line 64
    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->mLastProcTime:J

    .line 69
    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->mDeltaIdleTime:J

    .line 71
    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->mDeltaIdleTime:J

    .line 73
    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->mDeltaTotalTime:J

    .line 74
    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->mDeltaProcTime:J

    .line 75
    return-void
.end method

.method public updateProcess()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "/proc/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->mPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/stat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->getStatFileFirstLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "line":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 126
    const-string/jumbo v5, "H5DevCpuTracker"

    const-string/jumbo v6, "updateProcess: first line is empty"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const-string/jumbo v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "items":[Ljava/lang/String;
    array-length v5, v0

    const/16 v6, 0x11

    if-lt v5, v6, :cond_0

    .line 136
    const/16 v5, 0xd

    :try_start_0
    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/16 v5, 0xe

    aget-object v5, v0, v5

    .line 137
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    const/16 v5, 0xf

    aget-object v5, v0, v5

    .line 138
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    const/16 v5, 0x10

    aget-object v5, v0, v5

    .line 139
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long v2, v6, v8

    .line 141
    .local v2, "procTime":J
    iget-wide v6, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->mLastProcTime:J

    sub-long v6, v2, v6

    iput-wide v6, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->mDeltaProcTime:J

    .line 142
    iput-wide v2, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->mLastProcTime:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v2    # "procTime":J
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->updateSystem()V

    goto :goto_0

    .line 144
    :catch_0
    move-exception v4

    .line 145
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "H5DevCpuTracker"

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public updateSystem()V
    .locals 26

    .prologue
    .line 78
    const-string/jumbo v19, "/proc/stat"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->getStatFileFirstLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 80
    .local v11, "line":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const-string/jumbo v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 85
    .local v10, "items":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v19, v0

    const/16 v24, 0x9

    move/from16 v0, v19

    move/from16 v1, v24

    if-lt v0, v1, :cond_0

    .line 90
    const/16 v19, 0x2

    :try_start_0
    aget-object v19, v10, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    .line 91
    .local v22, "userTime":J
    const/16 v19, 0x3

    aget-object v19, v10, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 92
    .local v12, "niceTime":J
    const/16 v19, 0x4

    aget-object v19, v10, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 93
    .local v16, "sysTime":J
    const/16 v19, 0x5

    aget-object v19, v10, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 94
    .local v4, "idleTime":J
    const/16 v19, 0x6

    aget-object v19, v10, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 95
    .local v6, "ioWaitTime":J
    const/16 v19, 0x7

    aget-object v19, v10, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 96
    .local v8, "irqTime":J
    const/16 v19, 0x8

    aget-object v19, v10, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 97
    .local v14, "softIrqTime":J
    add-long v24, v22, v12

    add-long v24, v24, v16

    add-long v24, v24, v4

    add-long v24, v24, v6

    add-long v24, v24, v8

    add-long v20, v24, v14

    .line 102
    .local v20, "totalTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->mLastIdleTime:J

    move-wide/from16 v24, v0

    sub-long v24, v4, v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->mDeltaIdleTime:J

    .line 106
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->mLastTotalTime:J

    move-wide/from16 v24, v0

    sub-long v24, v20, v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->mDeltaTotalTime:J

    .line 111
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->mLastIdleTime:J

    .line 115
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->mLastTotalTime:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    .end local v4    # "idleTime":J
    .end local v6    # "ioWaitTime":J
    .end local v8    # "irqTime":J
    .end local v12    # "niceTime":J
    .end local v14    # "softIrqTime":J
    .end local v16    # "sysTime":J
    .end local v20    # "totalTime":J
    .end local v22    # "userTime":J
    :catch_0
    move-exception v18

    .line 118
    .local v18, "t":Ljava/lang/Throwable;
    const-string/jumbo v19, "H5DevCpuTracker"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
