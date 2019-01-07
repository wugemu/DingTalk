.class public final Lido;
.super Ljava/lang/Object;
.source "SyncLogger.java"


# static fields
.field private static d:Lido;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/alibaba/doraemon/log/FileLogger;

.field public volatile c:J


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lido;->c:J

    .line 52
    :try_start_0
    const-string/jumbo v1, "CRASHMONITOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/crash/CrashMonitor;

    .line 53
    .local v0, "monitor":Lcom/alibaba/doraemon/crash/CrashMonitor;
    new-instance v1, Lido$1;

    invoke-direct {v1, p0}, Lido$1;-><init>(Lido;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/crash/CrashMonitor;->registerCrashHandler(Lcom/alibaba/doraemon/crash/CrashHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0    # "monitor":Lcom/alibaba/doraemon/crash/CrashMonitor;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized a()Lido;
    .locals 2

    .prologue
    .line 66
    const-class v1, Lido;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lido;->d:Lido;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lido;

    invoke-direct {v0}, Lido;-><init>()V

    sput-object v0, Lido;->d:Lido;

    .line 69
    :cond_0
    sget-object v0, Lido;->d:Lido;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 113
    iget-object v10, p0, Lido;->b:Lcom/alibaba/doraemon/log/FileLogger;

    if-nez v10, :cond_1

    .line 145
    :cond_0
    return-void

    .line 115
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 116
    .local v2, "currentTime":J
    iget-wide v10, p0, Lido;->c:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    iget-wide v10, p0, Lido;->c:J

    sub-long v10, v2, v10

    const-wide/32 v12, 0x36ee80

    cmp-long v10, v10, v12

    if-lez v10, :cond_0

    .line 117
    :cond_2
    iput-wide v2, p0, Lido;->c:J

    .line 118
    iget-object v10, p0, Lido;->b:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-virtual {v10}, Lcom/alibaba/doraemon/log/FileLogger;->getStorageDir()Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, "dirPath":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 121
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v5, "dir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 124
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 125
    .local v8, "files":[Ljava/io/File;
    if-eqz v8, :cond_0

    .line 128
    iget-object v10, p0, Lido;->a:Landroid/content/Context;

    invoke-static {v10}, Lifz;->c(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->p()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 129
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 130
    .local v1, "date":Ljava/util/Date;
    new-instance v4, Ljava/util/Date;

    const-wide/32 v10, 0x36ee80

    sub-long v10, v2, v10

    invoke-direct {v4, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 131
    .local v4, "date2":Ljava/util/Date;
    array-length v11, v8

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v11, :cond_0

    aget-object v7, v8, v10

    .line 132
    .local v7, "f":Ljava/io/File;
    iget-object v12, p0, Lido;->b:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-virtual {v12, v1}, Lcom/alibaba/doraemon/log/FileLogger;->getFileFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "currentFile":Ljava/lang/String;
    iget-object v12, p0, Lido;->b:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-virtual {v12, v4}, Lcom/alibaba/doraemon/log/FileLogger;->getFileFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 134
    .local v9, "lastHourFile":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 135
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getWKExecutor()Lcom/alibaba/wukong/WKExecutor;

    move-result-object v12

    new-instance v13, Lido$2;

    invoke-direct {v13, p0, v7}, Lido$2;-><init>(Lido;Ljava/io/File;)V

    sget-object v14, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v12, v13, v14}, Lcom/alibaba/wukong/WKExecutor;->execute(Ljava/lang/Runnable;Lcom/alibaba/doraemon/Priority;)V

    .line 131
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 91
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->p()Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1101
    iget-object v2, p0, Lido;->b:Lcom/alibaba/doraemon/log/FileLogger;

    if-eqz v2, :cond_0

    .line 1104
    :try_start_0
    iget-object v2, p0, Lido;->b:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-virtual {v2, v1}, Lcom/alibaba/doraemon/log/FileLogger;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/doraemon/log/FileLogger$FLClosedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1108
    :goto_1
    invoke-direct {p0}, Lido;->b()V

    goto :goto_0

    .line 1105
    :catch_0
    move-exception v1

    .line 1106
    invoke-virtual {v1}, Lcom/alibaba/doraemon/log/FileLogger$FLClosedException;->printStackTrace()V

    goto :goto_1
.end method
