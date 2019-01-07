.class public Lorg/webrtc/utils/MemoryMonitor;
.super Ljava/lang/Object;
.source "MemoryMonitor.java"


# static fields
.field private static final CPU_STAT_SAMPLE_PERIOD_MS:I = 0x7d0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private contextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private free_memory:J

.field private total_memory:J

.field private userMemory:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/webrtc/utils/MemoryMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/webrtc/utils/MemoryMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/webrtc/utils/MemoryMonitor;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/utils/MemoryMonitor;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/utils/MemoryMonitor;

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/webrtc/utils/MemoryMonitor;->memoryUtilization()V

    return-void
.end method

.method private getFreeMemorySize(Landroid/content/Context;)J
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 89
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 90
    .local v1, "outInfo":Landroid/app/ActivityManager$MemoryInfo;
    const-string/jumbo v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 91
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 92
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 93
    .local v2, "avaliMem":J
    const-wide/16 v4, 0x400

    div-long v4, v2, v4

    return-wide v4
.end method

.method private getTotalMemory()J
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 58
    const-string/jumbo v3, "/proc/meminfo"

    .line 60
    .local v3, "memInfoPath":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 61
    .local v5, "memTotal":Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 63
    .local v6, "memory":J
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 64
    .local v1, "fr":Ljava/io/FileReader;
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v10, 0x2000

    invoke-direct {v2, v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 65
    .local v2, "localBufferedReader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "readTemp":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 66
    const-string/jumbo v10, "MemTotal"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 67
    const-string/jumbo v10, ":"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 68
    .local v9, "total":[Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, v9, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 69
    goto :goto_0

    .line 71
    .end local v9    # "total":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 72
    const-string/jumbo v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "memKb":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 74
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "memTotal: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 79
    .end local v1    # "fr":Ljava/io/FileReader;
    .end local v2    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "memKb":[Ljava/lang/String;
    .end local v8    # "readTemp":Ljava/lang/String;
    :goto_1
    return-wide v6

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/IOException;
    sget-object v10, Lorg/webrtc/utils/MemoryMonitor;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "IOException: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getUserMemorySize(Landroid/content/Context;)I
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 105
    const-string/jumbo v8, "activity"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 106
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 107
    .local v6, "pids":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v7, 0x0

    .line 108
    .local v7, "processid":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 109
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 110
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string/jumbo v9, "com.aliyun.sophon.demo"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 111
    iget v7, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 108
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v2    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    const/4 v8, 0x1

    new-array v5, v8, [I

    aput v7, v5, v10

    .line 116
    .local v5, "myMempid":[I
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v4

    .line 117
    .local v4, "memoryInfo":[Landroid/os/Debug$MemoryInfo;
    aget-object v8, v4, v10

    invoke-virtual {v8}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    .line 118
    aget-object v8, v4, v10

    invoke-virtual {v8}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v3

    .line 119
    .local v3, "memSize":I
    return v3
.end method

.method private memoryUtilization()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 149
    invoke-direct {p0}, Lorg/webrtc/utils/MemoryMonitor;->getTotalMemory()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/webrtc/utils/MemoryMonitor;->total_memory:J

    .line 150
    iget-object v0, p0, Lorg/webrtc/utils/MemoryMonitor;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lorg/webrtc/utils/MemoryMonitor;->getFreeMemorySize(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/webrtc/utils/MemoryMonitor;->free_memory:J

    .line 151
    iget-object v0, p0, Lorg/webrtc/utils/MemoryMonitor;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lorg/webrtc/utils/MemoryMonitor;->getUserMemorySize(Landroid/content/Context;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/webrtc/utils/MemoryMonitor;->userMemory:J

    .line 152
    return-void
.end method

.method private scheduleMemoryUtilizationTask()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 133
    iget-object v0, p0, Lorg/webrtc/utils/MemoryMonitor;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/webrtc/utils/MemoryMonitor;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/utils/MemoryMonitor;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 138
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/utils/MemoryMonitor;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 140
    iget-object v0, p0, Lorg/webrtc/utils/MemoryMonitor;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lorg/webrtc/utils/MemoryMonitor$1;

    invoke-direct {v1, p0}, Lorg/webrtc/utils/MemoryMonitor$1;-><init>(Lorg/webrtc/utils/MemoryMonitor;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7d0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 146
    return-void
.end method


# virtual methods
.method public declared-synchronized getMemoryUsageCurrent()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Memory\nTotal_Memory:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/webrtc/utils/MemoryMonitor;->total_memory:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nFree_Memory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/webrtc/utils/MemoryMonitor;->free_memory:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nUserMemoryByPid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/webrtc/utils/MemoryMonitor;->userMemory:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 124
    .local v0, "memory":Ljava/lang/String;
    monitor-exit p0

    return-object v0

    .line 123
    .end local v0    # "memory":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getMemoryUsageCurrentByPid()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/webrtc/utils/MemoryMonitor;->userMemory:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/webrtc/utils/MemoryMonitor;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lorg/webrtc/utils/MemoryMonitor;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/utils/MemoryMonitor;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 42
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lorg/webrtc/utils/MemoryMonitor;->total_memory:J

    .line 47
    iput-wide v0, p0, Lorg/webrtc/utils/MemoryMonitor;->free_memory:J

    .line 48
    iput-wide v0, p0, Lorg/webrtc/utils/MemoryMonitor;->userMemory:J

    .line 49
    invoke-direct {p0}, Lorg/webrtc/utils/MemoryMonitor;->scheduleMemoryUtilizationTask()V

    .line 50
    return-void
.end method
