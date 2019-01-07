.class public Lorg/webrtc/utils/CpuMonitor;
.super Ljava/lang/Object;
.source "CpuMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/utils/CpuMonitor$MovingAverage;,
        Lorg/webrtc/utils/CpuMonitor$ProcStat;
    }
.end annotation


# static fields
.field private static final CPU_STAT_LOG_PERIOD_MS:I = 0x1770

.field private static final CPU_STAT_SAMPLE_PERIOD_MS:I = 0x7d0

.field private static final MOVING_AVERAGE_SAMPLES:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CpuMonitor"


# instance fields
.field private actualCpusPresent:I

.field private final appContext:Landroid/content/Context;

.field private cpuFreqMax:[J

.field private cpuOveruse:Z

.field private cpusPresent:I

.field private curFreqScales:[D

.field private curPath:[Ljava/lang/String;

.field private executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final frequencyScale:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

.field private initialized:Z

.field private lastProcStat:Lorg/webrtc/utils/CpuMonitor$ProcStat;

.field private lastStatLogTimeMs:J

.field private maxPath:[Ljava/lang/String;

.field private final systemCpuUsage:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

.field private final totalCpuUsage:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

.field private final userCpuUsage:Lorg/webrtc/utils/CpuMonitor$MovingAverage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x5

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/utils/CpuMonitor;->appContext:Landroid/content/Context;

    .line 158
    new-instance v0, Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    invoke-direct {v0, v1}, Lorg/webrtc/utils/CpuMonitor$MovingAverage;-><init>(I)V

    iput-object v0, p0, Lorg/webrtc/utils/CpuMonitor;->userCpuUsage:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    .line 159
    new-instance v0, Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    invoke-direct {v0, v1}, Lorg/webrtc/utils/CpuMonitor$MovingAverage;-><init>(I)V

    iput-object v0, p0, Lorg/webrtc/utils/CpuMonitor;->systemCpuUsage:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    .line 160
    new-instance v0, Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    invoke-direct {v0, v1}, Lorg/webrtc/utils/CpuMonitor$MovingAverage;-><init>(I)V

    iput-object v0, p0, Lorg/webrtc/utils/CpuMonitor;->totalCpuUsage:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    .line 161
    new-instance v0, Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    invoke-direct {v0, v1}, Lorg/webrtc/utils/CpuMonitor$MovingAverage;-><init>(I)V

    iput-object v0, p0, Lorg/webrtc/utils/CpuMonitor;->frequencyScale:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/webrtc/utils/CpuMonitor;->lastStatLogTimeMs:J

    .line 163
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/utils/CpuMonitor;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/utils/CpuMonitor;

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/webrtc/utils/CpuMonitor;->cpuUtilizationTask()V

    return-void
.end method

.method private cpuUtilizationTask()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 216
    invoke-direct {p0}, Lorg/webrtc/utils/CpuMonitor;->sampleCpuUtilization()Z

    move-result v0

    .line 217
    .local v0, "cpuMonitorAvailable":Z
    if-eqz v0, :cond_0

    .line 218
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/webrtc/utils/CpuMonitor;->lastStatLogTimeMs:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1770

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 219
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/webrtc/utils/CpuMonitor;->lastStatLogTimeMs:J

    .line 220
    invoke-virtual {p0}, Lorg/webrtc/utils/CpuMonitor;->getStatString()Ljava/lang/String;

    .line 223
    :cond_0
    return-void
.end method

.method private doubleToPercent(D)I
    .locals 5
    .param p1, "d"    # D

    .prologue
    .line 405
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private getBatteryLevel()I
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 272
    iget-object v3, p0, Lorg/webrtc/utils/CpuMonitor;->appContext:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 275
    .local v2, "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 276
    .local v0, "batteryLevel":I
    const-string/jumbo v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 277
    .local v1, "batteryScale":I
    if-lez v1, :cond_0

    .line 278
    const/high16 v3, 0x42c80000    # 100.0f

    const-string/jumbo v4, "level"

    const/4 v5, 0x0

    .line 279
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    int-to-float v4, v1

    div-float/2addr v3, v4

    float-to-int v0, v3

    .line 281
    :cond_0
    return v0
.end method

.method private init()V
    .locals 11

    .prologue
    const-wide/16 v2, 0x0

    .line 227
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    const-string/jumbo v1, "/sys/devices/system/cpu/present"

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 229
    .local v0, "fin":Ljava/io/FileReader;
    :try_start_1
    new-instance v9, Ljava/io/BufferedReader;

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 230
    .local v9, "reader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, v9}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;)V

    const-string/jumbo v4, "[-\n]"

    invoke-virtual {v1, v4}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v10

    .line 231
    .local v10, "scanner":Ljava/util/Scanner;
    invoke-virtual {v10}, Ljava/util/Scanner;->nextInt()I

    .line 232
    invoke-virtual {v10}, Ljava/util/Scanner;->nextInt()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/webrtc/utils/CpuMonitor;->cpusPresent:I

    .line 233
    invoke-virtual {v10}, Ljava/util/Scanner;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 245
    .end local v0    # "fin":Ljava/io/FileReader;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .end local v10    # "scanner":Ljava/util/Scanner;
    :goto_0
    iget v1, p0, Lorg/webrtc/utils/CpuMonitor;->cpusPresent:I

    new-array v1, v1, [J

    iput-object v1, p0, Lorg/webrtc/utils/CpuMonitor;->cpuFreqMax:[J

    .line 246
    iget v1, p0, Lorg/webrtc/utils/CpuMonitor;->cpusPresent:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/webrtc/utils/CpuMonitor;->maxPath:[Ljava/lang/String;

    .line 247
    iget v1, p0, Lorg/webrtc/utils/CpuMonitor;->cpusPresent:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/webrtc/utils/CpuMonitor;->curPath:[Ljava/lang/String;

    .line 248
    iget v1, p0, Lorg/webrtc/utils/CpuMonitor;->cpusPresent:I

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/webrtc/utils/CpuMonitor;->curFreqScales:[D

    .line 249
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget v1, p0, Lorg/webrtc/utils/CpuMonitor;->cpusPresent:I

    if-ge v8, v1, :cond_0

    .line 250
    iget-object v1, p0, Lorg/webrtc/utils/CpuMonitor;->cpuFreqMax:[J

    aput-wide v2, v1, v8

    .line 251
    iget-object v1, p0, Lorg/webrtc/utils/CpuMonitor;->curFreqScales:[D

    const-wide/16 v4, 0x0

    aput-wide v4, v1, v8

    .line 252
    iget-object v1, p0, Lorg/webrtc/utils/CpuMonitor;->maxPath:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "/sys/devices/system/cpu/cpu"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    .line 253
    iget-object v1, p0, Lorg/webrtc/utils/CpuMonitor;->curPath:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "/sys/devices/system/cpu/cpu"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/cpufreq/scaling_cur_freq"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    .line 249
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 235
    .end local v8    # "i":I
    .restart local v0    # "fin":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    :try_start_3
    const-string/jumbo v1, "CpuMonitor"

    const-string/jumbo v4, "Cannot do CPU stats due to /sys/devices/system/cpu/present parsing problem"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 237
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 240
    .end local v0    # "fin":Ljava/io/FileReader;
    :catch_1
    move-exception v1

    const-string/jumbo v1, "CpuMonitor"

    const-string/jumbo v4, "Cannot do CPU stats since /sys/devices/system/cpu/present is missing"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    .restart local v0    # "fin":Ljava/io/FileReader;
    :catchall_0
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    .line 238
    throw v1
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 242
    .end local v0    # "fin":Ljava/io/FileReader;
    :catch_2
    move-exception v1

    const-string/jumbo v1, "CpuMonitor"

    const-string/jumbo v4, "Error closing file"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 256
    .restart local v8    # "i":I
    :cond_0
    new-instance v1, Lorg/webrtc/utils/CpuMonitor$ProcStat;

    move-wide v4, v2

    move-wide v6, v2

    invoke-direct/range {v1 .. v7}, Lorg/webrtc/utils/CpuMonitor$ProcStat;-><init>(JJJ)V

    iput-object v1, p0, Lorg/webrtc/utils/CpuMonitor;->lastProcStat:Lorg/webrtc/utils/CpuMonitor$ProcStat;

    .line 257
    invoke-direct {p0}, Lorg/webrtc/utils/CpuMonitor;->resetStat()V

    .line 259
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/webrtc/utils/CpuMonitor;->initialized:Z

    .line 260
    return-void
.end method

.method private static parseLong(Ljava/lang/String;)J
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 464
    const-wide/16 v2, 0x0

    .line 466
    .local v2, "number":J
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 470
    :goto_0
    return-wide v2

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "CpuMonitor"

    const-string/jumbo v4, "parseLong error."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private readFreqFromFile(Ljava/lang/String;)J
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 444
    const-wide/16 v2, 0x0

    .line 446
    .local v2, "number":J
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 448
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "line":Ljava/lang/String;
    invoke-static {v0}, Lorg/webrtc/utils/CpuMonitor;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 451
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 460
    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-wide v2

    .line 451
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 452
    throw v4
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 459
    .end local v1    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private readProcStat()Lorg/webrtc/utils/CpuMonitor$ProcStat;
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v14, 0x5

    const/4 v1, 0x0

    .line 478
    const-wide/16 v2, 0x0

    .line 479
    .local v2, "userTime":J
    const-wide/16 v4, 0x0

    .line 480
    .local v4, "systemTime":J
    const-wide/16 v6, 0x0

    .line 482
    .local v6, "idleTime":J
    :try_start_0
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    const-string/jumbo v13, "/proc/stat"

    invoke-direct {v12, v13}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 487
    .local v11, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 488
    .local v9, "line":Ljava/lang/String;
    const-string/jumbo v12, "\\s+"

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 489
    .local v10, "lines":[Ljava/lang/String;
    array-length v8, v10

    .line 490
    .local v8, "length":I
    if-lt v8, v14, :cond_0

    .line 491
    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-static {v12}, Lorg/webrtc/utils/CpuMonitor;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 492
    const/4 v12, 0x2

    aget-object v12, v10, v12

    invoke-static {v12}, Lorg/webrtc/utils/CpuMonitor;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v2, v12

    .line 493
    const/4 v12, 0x3

    aget-object v12, v10, v12

    invoke-static {v12}, Lorg/webrtc/utils/CpuMonitor;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 494
    const/4 v12, 0x4

    aget-object v12, v10, v12

    invoke-static {v12}, Lorg/webrtc/utils/CpuMonitor;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 496
    :cond_0
    const/16 v12, 0x8

    if-lt v8, v12, :cond_1

    .line 497
    const/4 v12, 0x5

    aget-object v12, v10, v12

    invoke-static {v12}, Lorg/webrtc/utils/CpuMonitor;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v2, v12

    .line 498
    const/4 v12, 0x6

    aget-object v12, v10, v12

    invoke-static {v12}, Lorg/webrtc/utils/CpuMonitor;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v4, v12

    .line 499
    const/4 v12, 0x7

    aget-object v12, v10, v12

    invoke-static {v12}, Lorg/webrtc/utils/CpuMonitor;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v12

    add-long/2addr v4, v12

    .line 505
    :cond_1
    :try_start_2
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 514
    new-instance v1, Lorg/webrtc/utils/CpuMonitor$ProcStat;

    invoke-direct/range {v1 .. v7}, Lorg/webrtc/utils/CpuMonitor$ProcStat;-><init>(JJJ)V

    .end local v8    # "length":I
    .end local v9    # "line":Ljava/lang/String;
    .end local v10    # "lines":[Ljava/lang/String;
    .end local v11    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-object v1

    .line 501
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v12, "CpuMonitor"

    const-string/jumbo v13, "Problems parsing /proc/stat"

    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 505
    :try_start_4
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 507
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v11    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 508
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v12, "CpuMonitor"

    const-string/jumbo v13, "Cannot open /proc/stat for reading"

    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 505
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v12

    :try_start_5
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 506
    throw v12
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 510
    .end local v11    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 511
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v12, "CpuMonitor"

    const-string/jumbo v13, "Problems reading /proc/stat"

    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private declared-synchronized resetStat()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/webrtc/utils/CpuMonitor;->userCpuUsage:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    invoke-virtual {v0}, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->reset()V

    .line 264
    iget-object v0, p0, Lorg/webrtc/utils/CpuMonitor;->systemCpuUsage:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    invoke-virtual {v0}, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->reset()V

    .line 265
    iget-object v0, p0, Lorg/webrtc/utils/CpuMonitor;->totalCpuUsage:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    invoke-virtual {v0}, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->reset()V

    .line 266
    iget-object v0, p0, Lorg/webrtc/utils/CpuMonitor;->frequencyScale:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    invoke-virtual {v0}, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->reset()V

    .line 267
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/webrtc/utils/CpuMonitor;->lastStatLogTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    monitor-exit p0

    return-void

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized sampleCpuUtilization()Z
    .locals 38

    .prologue
    .line 299
    monitor-enter p0

    const-wide/16 v30, 0x0

    .line 300
    .local v30, "lastSeenMaxFreq":J
    const-wide/16 v8, 0x0

    .line 301
    .local v8, "cpuFreqCurSum":J
    const-wide/16 v10, 0x0

    .line 303
    .local v10, "cpuFreqMaxSum":J
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/webrtc/utils/CpuMonitor;->initialized:Z

    move/from16 v32, v0

    if-nez v32, :cond_0

    .line 304
    invoke-direct/range {p0 .. p0}, Lorg/webrtc/utils/CpuMonitor;->init()V

    .line 306
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/webrtc/utils/CpuMonitor;->cpusPresent:I

    move/from16 v32, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v32, :cond_1

    .line 307
    const/16 v32, 0x0

    .line 401
    :goto_0
    monitor-exit p0

    return v32

    .line 310
    :cond_1
    const/16 v32, 0x0

    :try_start_1
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/webrtc/utils/CpuMonitor;->actualCpusPresent:I

    .line 311
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/webrtc/utils/CpuMonitor;->cpusPresent:I

    move/from16 v32, v0

    move/from16 v0, v28

    move/from16 v1, v32

    if-ge v0, v1, :cond_7

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/webrtc/utils/CpuMonitor;->curFreqScales:[D

    move-object/from16 v32, v0

    const-wide/16 v34, 0x0

    aput-wide v34, v32, v28

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/webrtc/utils/CpuMonitor;->cpuFreqMax:[J

    move-object/from16 v32, v0

    aget-wide v32, v32, v28

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-nez v32, :cond_6

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/webrtc/utils/CpuMonitor;->maxPath:[Ljava/lang/String;

    move-object/from16 v32, v0

    aget-object v32, v32, v28

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/webrtc/utils/CpuMonitor;->readFreqFromFile(Ljava/lang/String;)J

    move-result-wide v12

    .line 322
    .local v12, "cpufreqMax":J
    const-wide/16 v32, 0x0

    cmp-long v32, v12, v32

    if-lez v32, :cond_2

    .line 323
    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "Core "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, ". Max frequency: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 324
    move-wide/from16 v30, v12

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/webrtc/utils/CpuMonitor;->cpuFreqMax:[J

    move-object/from16 v32, v0

    aput-wide v12, v32, v28

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/webrtc/utils/CpuMonitor;->maxPath:[Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v33, v32, v28

    .line 332
    .end local v12    # "cpufreqMax":J
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/webrtc/utils/CpuMonitor;->curPath:[Ljava/lang/String;

    move-object/from16 v32, v0

    aget-object v32, v32, v28

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/webrtc/utils/CpuMonitor;->readFreqFromFile(Ljava/lang/String;)J

    move-result-wide v6

    .line 333
    .local v6, "cpuFreqCur":J
    const-wide/16 v32, 0x0

    cmp-long v32, v6, v32

    if-nez v32, :cond_3

    const-wide/16 v32, 0x0

    cmp-long v32, v30, v32

    if-eqz v32, :cond_5

    .line 337
    :cond_3
    const-wide/16 v32, 0x0

    cmp-long v32, v6, v32

    if-lez v32, :cond_4

    .line 338
    move-object/from16 v0, p0

    iget v0, v0, Lorg/webrtc/utils/CpuMonitor;->actualCpusPresent:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/webrtc/utils/CpuMonitor;->actualCpusPresent:I

    .line 340
    :cond_4
    add-long/2addr v8, v6

    .line 348
    add-long v10, v10, v30

    .line 349
    const-wide/16 v32, 0x0

    cmp-long v32, v30, v32

    if-lez v32, :cond_5

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/webrtc/utils/CpuMonitor;->curFreqScales:[D

    move-object/from16 v32, v0

    long-to-double v0, v6

    move-wide/from16 v34, v0

    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v36, v0

    div-double v34, v34, v36

    aput-wide v34, v32, v28

    .line 311
    :cond_5
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_1

    .line 329
    .end local v6    # "cpuFreqCur":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/webrtc/utils/CpuMonitor;->cpuFreqMax:[J

    move-object/from16 v32, v0

    aget-wide v30, v32, v28

    goto :goto_2

    .line 354
    :cond_7
    const-wide/16 v32, 0x0

    cmp-long v32, v8, v32

    if-eqz v32, :cond_8

    const-wide/16 v32, 0x0

    cmp-long v32, v10, v32

    if-nez v32, :cond_9

    .line 355
    :cond_8
    const-string/jumbo v32, "CpuMonitor"

    const-string/jumbo v33, "Could not read max or current frequency for any CPU"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 366
    :cond_9
    long-to-double v0, v8

    move-wide/from16 v32, v0

    long-to-double v0, v10

    move-wide/from16 v34, v0

    div-double v14, v32, v34

    .line 367
    .local v14, "currentFrequencyScale":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/webrtc/utils/CpuMonitor;->frequencyScale:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->getCurrent()D

    move-result-wide v32

    const-wide/16 v34, 0x0

    cmpl-double v32, v32, v34

    if-lez v32, :cond_a

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/webrtc/utils/CpuMonitor;->frequencyScale:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->getCurrent()D

    move-result-wide v32

    add-double v32, v32, v14

    const-wide/high16 v34, 0x3fe0000000000000L    # 0.5

    mul-double v14, v32, v34

    .line 371
    :cond_a
    invoke-direct/range {p0 .. p0}, Lorg/webrtc/utils/CpuMonitor;->readProcStat()Lorg/webrtc/utils/CpuMonitor$ProcStat;

    move-result-object v29

    .line 372
    .local v29, "procStat":Lorg/webrtc/utils/CpuMonitor$ProcStat;
    if-nez v29, :cond_b

    .line 373
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 376
    :cond_b
    move-object/from16 v0, v29

    iget-wide v0, v0, Lorg/webrtc/utils/CpuMonitor$ProcStat;->userTime:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/webrtc/utils/CpuMonitor;->lastProcStat:Lorg/webrtc/utils/CpuMonitor$ProcStat;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-wide v0, v0, Lorg/webrtc/utils/CpuMonitor$ProcStat;->userTime:J

    move-wide/from16 v34, v0

    sub-long v26, v32, v34

    .line 377
    .local v26, "diffUserTime":J
    move-object/from16 v0, v29

    iget-wide v0, v0, Lorg/webrtc/utils/CpuMonitor$ProcStat;->systemTime:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/webrtc/utils/CpuMonitor;->lastProcStat:Lorg/webrtc/utils/CpuMonitor$ProcStat;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-wide v0, v0, Lorg/webrtc/utils/CpuMonitor$ProcStat;->systemTime:J

    move-wide/from16 v34, v0

    sub-long v24, v32, v34

    .line 378
    .local v24, "diffSystemTime":J
    move-object/from16 v0, v29

    iget-wide v0, v0, Lorg/webrtc/utils/CpuMonitor$ProcStat;->idleTime:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/webrtc/utils/CpuMonitor;->lastProcStat:Lorg/webrtc/utils/CpuMonitor$ProcStat;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-wide v0, v0, Lorg/webrtc/utils/CpuMonitor$ProcStat;->idleTime:J

    move-wide/from16 v34, v0

    sub-long v22, v32, v34

    .line 379
    .local v22, "diffIdleTime":J
    add-long v32, v26, v24

    add-long v4, v32, v22

    .line 381
    .local v4, "allTime":J
    const-wide/16 v32, 0x0

    cmpl-double v32, v14, v32

    if-eqz v32, :cond_c

    const-wide/16 v32, 0x0

    cmp-long v32, v4, v32

    if-nez v32, :cond_d

    .line 382
    :cond_c
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 386
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/webrtc/utils/CpuMonitor;->frequencyScale:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v14, v15}, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->addValue(D)V

    .line 388
    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v32, v0

    long-to-double v0, v4

    move-wide/from16 v34, v0

    div-double v20, v32, v34

    .line 389
    .local v20, "currentUserCpuUsage":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/webrtc/utils/CpuMonitor;->userCpuUsage:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->addValue(D)V

    .line 391
    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v32, v0

    long-to-double v0, v4

    move-wide/from16 v34, v0

    div-double v16, v32, v34

    .line 392
    .local v16, "currentSystemCpuUsage":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/webrtc/utils/CpuMonitor;->systemCpuUsage:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->addValue(D)V

    .line 394
    add-double v32, v20, v16

    mul-double v18, v32, v14

    .line 396
    .local v18, "currentTotalCpuUsage":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/webrtc/utils/CpuMonitor;->totalCpuUsage:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->addValue(D)V

    .line 399
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/webrtc/utils/CpuMonitor;->lastProcStat:Lorg/webrtc/utils/CpuMonitor$ProcStat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 299
    .end local v4    # "allTime":J
    .end local v14    # "currentFrequencyScale":D
    .end local v16    # "currentSystemCpuUsage":D
    .end local v18    # "currentTotalCpuUsage":D
    .end local v20    # "currentUserCpuUsage":D
    .end local v22    # "diffIdleTime":J
    .end local v24    # "diffSystemTime":J
    .end local v26    # "diffUserTime":J
    .end local v28    # "i":I
    .end local v29    # "procStat":Lorg/webrtc/utils/CpuMonitor$ProcStat;
    :catchall_0
    move-exception v32

    monitor-exit p0

    throw v32
.end method

.method private scheduleCpuUtilizationTask()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 200
    iget-object v0, p0, Lorg/webrtc/utils/CpuMonitor;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lorg/webrtc/utils/CpuMonitor;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/utils/CpuMonitor;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 205
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/utils/CpuMonitor;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 207
    iget-object v0, p0, Lorg/webrtc/utils/CpuMonitor;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lorg/webrtc/utils/CpuMonitor$1;

    invoke-direct {v1, p0}, Lorg/webrtc/utils/CpuMonitor$1;-><init>(Lorg/webrtc/utils/CpuMonitor;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7d0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 213
    return-void
.end method


# virtual methods
.method public declared-synchronized getCpuUsageAverage()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/webrtc/utils/CpuMonitor;->userCpuUsage:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    invoke-virtual {v0}, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->getAverage()D

    move-result-wide v0

    iget-object v2, p0, Lorg/webrtc/utils/CpuMonitor;->systemCpuUsage:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    invoke-virtual {v2}, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->getAverage()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lorg/webrtc/utils/CpuMonitor;->doubleToPercent(D)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCpuUsageCurrent()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/webrtc/utils/CpuMonitor;->userCpuUsage:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    invoke-virtual {v0}, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->getCurrent()D

    move-result-wide v0

    iget-object v2, p0, Lorg/webrtc/utils/CpuMonitor;->systemCpuUsage:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    invoke-virtual {v2}, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->getCurrent()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lorg/webrtc/utils/CpuMonitor;->doubleToPercent(D)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFrequencyScaleAverage()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/webrtc/utils/CpuMonitor;->frequencyScale:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    invoke-virtual {v0}, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->getAverage()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/webrtc/utils/CpuMonitor;->doubleToPercent(D)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStatString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 409
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .local v0, "stat":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "CPU \nUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/utils/CpuMonitor;->userCpuUsage:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    .line 411
    invoke-virtual {v2}, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->getCurrent()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/webrtc/utils/CpuMonitor;->doubleToPercent(D)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    .line 412
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/utils/CpuMonitor;->userCpuUsage:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    .line 413
    invoke-virtual {v2}, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->getAverage()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/webrtc/utils/CpuMonitor;->doubleToPercent(D)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nSystem: "

    .line 414
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/utils/CpuMonitor;->systemCpuUsage:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    .line 415
    invoke-virtual {v2}, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->getCurrent()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/webrtc/utils/CpuMonitor;->doubleToPercent(D)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    .line 416
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/utils/CpuMonitor;->systemCpuUsage:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    .line 417
    invoke-virtual {v2}, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->getAverage()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/webrtc/utils/CpuMonitor;->doubleToPercent(D)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nFreq: "

    .line 418
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/utils/CpuMonitor;->frequencyScale:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    .line 419
    invoke-virtual {v2}, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->getCurrent()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/webrtc/utils/CpuMonitor;->doubleToPercent(D)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    .line 420
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/utils/CpuMonitor;->frequencyScale:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    .line 421
    invoke-virtual {v2}, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->getAverage()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/webrtc/utils/CpuMonitor;->doubleToPercent(D)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nTotal usage: "

    .line 422
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/utils/CpuMonitor;->totalCpuUsage:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    .line 423
    invoke-virtual {v2}, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->getCurrent()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/webrtc/utils/CpuMonitor;->doubleToPercent(D)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    .line 424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/utils/CpuMonitor;->totalCpuUsage:Lorg/webrtc/utils/CpuMonitor$MovingAverage;

    .line 425
    invoke-virtual {v2}, Lorg/webrtc/utils/CpuMonitor$MovingAverage;->getAverage()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/webrtc/utils/CpuMonitor;->doubleToPercent(D)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 409
    .end local v0    # "stat":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/webrtc/utils/CpuMonitor;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lorg/webrtc/utils/CpuMonitor;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/utils/CpuMonitor;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 171
    :cond_0
    return-void
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/webrtc/utils/CpuMonitor;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0}, Lorg/webrtc/utils/CpuMonitor;->resetStat()V

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/utils/CpuMonitor;->cpuOveruse:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_0
    monitor-exit p0

    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Lorg/webrtc/utils/CpuMonitor;->resetStat()V

    .line 176
    invoke-direct {p0}, Lorg/webrtc/utils/CpuMonitor;->scheduleCpuUtilizationTask()V

    .line 177
    return-void
.end method
