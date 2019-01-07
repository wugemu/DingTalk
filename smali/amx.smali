.class public final Lamx;
.super Ljava/lang/Object;
.source "MutiProcessLock.java"


# static fields
.field static a:Ljava/io/File;

.field static b:Ljava/nio/channels/FileChannel;

.field static c:Ljava/nio/channels/FileLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lamx;->a:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 3

    .prologue
    .line 61
    const-class v1, Lamx;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lamx;->c:Ljava/nio/channels/FileLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 63
    :try_start_1
    sget-object v0, Lamx;->c:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lamx;->c:Ljava/nio/channels/FileLock;

    .line 69
    :cond_0
    :goto_0
    sget-object v0, Lamx;->b:Ljava/nio/channels/FileChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 71
    :try_start_3
    sget-object v0, Lamx;->b:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 75
    const/4 v0, 0x0

    :try_start_4
    sput-object v0, Lamx;->b:Ljava/nio/channels/FileChannel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    .line 66
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_5
    sput-object v0, Lamx;->c:Ljava/nio/channels/FileLock;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 66
    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    :try_start_6
    sput-object v2, Lamx;->c:Ljava/nio/channels/FileLock;

    throw v0

    .line 75
    :catch_1
    move-exception v0

    const/4 v0, 0x0

    sput-object v0, Lamx;->b:Ljava/nio/channels/FileChannel;

    goto :goto_1

    :catchall_2
    move-exception v0

    const/4 v2, 0x0

    sput-object v2, Lamx;->b:Ljava/nio/channels/FileChannel;

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 25
    const-class v4, Lamx;

    monitor-enter v4

    :try_start_0
    sget-object v5, Lamx;->a:Ljava/io/File;

    if-nez v5, :cond_0

    .line 26
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "Analytics.Lock"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v5, Lamx;->a:Ljava/io/File;

    .line 28
    :cond_0
    sget-object v5, Lamx;->a:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 29
    .local v0, "exists":Z
    if-nez v0, :cond_1

    .line 31
    :try_start_1
    sget-object v5, Lamx;->a:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 35
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 57
    :goto_1
    monitor-exit v4

    return v2

    .line 39
    :cond_2
    :try_start_2
    sget-object v5, Lamx;->b:Ljava/nio/channels/FileChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_3

    .line 41
    :try_start_3
    new-instance v5, Ljava/io/RandomAccessFile;

    sget-object v6, Lamx;->a:Ljava/io/File;

    const-string/jumbo v7, "rw"

    invoke-direct {v5, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    sput-object v5, Lamx;->b:Ljava/nio/channels/FileChannel;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    :cond_3
    :try_start_4
    sget-object v5, Lamx;->b:Ljava/nio/channels/FileChannel;

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v1

    .line 49
    .local v1, "lock":Ljava/nio/channels/FileLock;
    if-eqz v1, :cond_4

    .line 50
    sput-object v1, Lamx;->c:Ljava/nio/channels/FileLock;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 54
    .end local v1    # "lock":Ljava/nio/channels/FileLock;
    :catch_0
    move-exception v2

    const/4 v1, 0x0

    .line 56
    .restart local v1    # "lock":Ljava/nio/channels/FileLock;
    :cond_4
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mLock:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v2, v3

    .line 57
    goto :goto_1

    .line 43
    .end local v1    # "lock":Ljava/nio/channels/FileLock;
    :catch_1
    move-exception v2

    move v2, v3

    goto :goto_1

    .line 25
    .end local v0    # "exists":Z
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2

    .restart local v0    # "exists":Z
    :catch_2
    move-exception v5

    goto :goto_0
.end method
