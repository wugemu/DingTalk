.class public Lcom/ta/audid/utils/MutiProcessLock;
.super Ljava/lang/Object;
.source "MutiProcessLock.java"


# static fields
.field private static fChannel:Ljava/nio/channels/FileChannel;

.field private static fUploadChannel:Ljava/nio/channels/FileChannel;

.field private static mLock:Ljava/nio/channels/FileLock;

.field private static mLockFile:Ljava/io/File;

.field private static mUploadLock:Ljava/nio/channels/FileLock;

.field private static mUploadLockFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    sput-object v0, Lcom/ta/audid/utils/MutiProcessLock;->mLockFile:Ljava/io/File;

    .line 16
    sput-object v0, Lcom/ta/audid/utils/MutiProcessLock;->mUploadLockFile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized lockUtdidFile()V
    .locals 5

    .prologue
    .line 24
    const-class v2, Lcom/ta/audid/utils/MutiProcessLock;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/ta/audid/utils/UtdidLogger;->d()V

    .line 25
    sget-object v1, Lcom/ta/audid/utils/MutiProcessLock;->mLockFile:Ljava/io/File;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/ta/audid/upload/UtdidKeyFile;->getFileLockPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/ta/audid/utils/MutiProcessLock;->mLockFile:Ljava/io/File;

    .line 28
    :cond_0
    sget-object v1, Lcom/ta/audid/utils/MutiProcessLock;->mLockFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 29
    .local v0, "exists":Z
    if-nez v0, :cond_1

    .line 31
    :try_start_1
    sget-object v1, Lcom/ta/audid/utils/MutiProcessLock;->mLockFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :cond_1
    :try_start_2
    sget-object v1, Lcom/ta/audid/utils/MutiProcessLock;->fChannel:Ljava/nio/channels/FileChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_2

    .line 38
    :try_start_3
    new-instance v1, Ljava/io/RandomAccessFile;

    sget-object v3, Lcom/ta/audid/utils/MutiProcessLock;->mLockFile:Ljava/io/File;

    const-string/jumbo v4, "rw"

    invoke-direct {v1, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    sput-object v1, Lcom/ta/audid/utils/MutiProcessLock;->fChannel:Ljava/nio/channels/FileChannel;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    :cond_2
    :try_start_4
    sget-object v1, Lcom/ta/audid/utils/MutiProcessLock;->fChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v1

    sput-object v1, Lcom/ta/audid/utils/MutiProcessLock;->mLock:Ljava/nio/channels/FileLock;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 48
    :goto_0
    monitor-exit v2

    return-void

    .line 24
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 48
    :catch_0
    move-exception v1

    goto :goto_0

    .line 40
    :catch_1
    move-exception v1

    goto :goto_0

    .line 33
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized releaseUpload()V
    .locals 3

    .prologue
    .line 109
    const-class v1, Lcom/ta/audid/utils/MutiProcessLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/ta/audid/utils/UtdidLogger;->d()V

    .line 110
    sget-object v0, Lcom/ta/audid/utils/MutiProcessLock;->mUploadLock:Ljava/nio/channels/FileLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 112
    :try_start_1
    sget-object v0, Lcom/ta/audid/utils/MutiProcessLock;->mUploadLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcom/ta/audid/utils/MutiProcessLock;->mUploadLock:Ljava/nio/channels/FileLock;

    .line 119
    :cond_0
    :goto_0
    sget-object v0, Lcom/ta/audid/utils/MutiProcessLock;->fUploadChannel:Ljava/nio/channels/FileChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 121
    :try_start_3
    sget-object v0, Lcom/ta/audid/utils/MutiProcessLock;->fUploadChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 125
    const/4 v0, 0x0

    :try_start_4
    sput-object v0, Lcom/ta/audid/utils/MutiProcessLock;->fUploadChannel:Ljava/nio/channels/FileChannel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 128
    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    .line 116
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_5
    sput-object v0, Lcom/ta/audid/utils/MutiProcessLock;->mUploadLock:Ljava/nio/channels/FileLock;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 116
    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    :try_start_6
    sput-object v2, Lcom/ta/audid/utils/MutiProcessLock;->mUploadLock:Ljava/nio/channels/FileLock;

    throw v0

    .line 125
    :catch_1
    move-exception v0

    const/4 v0, 0x0

    sput-object v0, Lcom/ta/audid/utils/MutiProcessLock;->fUploadChannel:Ljava/nio/channels/FileChannel;

    goto :goto_1

    :catchall_2
    move-exception v0

    const/4 v2, 0x0

    sput-object v2, Lcom/ta/audid/utils/MutiProcessLock;->fUploadChannel:Ljava/nio/channels/FileChannel;

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public static declared-synchronized releaseUtdidFile()V
    .locals 3

    .prologue
    .line 51
    const-class v1, Lcom/ta/audid/utils/MutiProcessLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/ta/audid/utils/UtdidLogger;->d()V

    .line 52
    sget-object v0, Lcom/ta/audid/utils/MutiProcessLock;->mLock:Ljava/nio/channels/FileLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 54
    :try_start_1
    sget-object v0, Lcom/ta/audid/utils/MutiProcessLock;->mLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcom/ta/audid/utils/MutiProcessLock;->mLock:Ljava/nio/channels/FileLock;

    .line 61
    :cond_0
    :goto_0
    sget-object v0, Lcom/ta/audid/utils/MutiProcessLock;->fChannel:Ljava/nio/channels/FileChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 63
    :try_start_3
    sget-object v0, Lcom/ta/audid/utils/MutiProcessLock;->fChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 67
    const/4 v0, 0x0

    :try_start_4
    sput-object v0, Lcom/ta/audid/utils/MutiProcessLock;->fChannel:Ljava/nio/channels/FileChannel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 70
    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    .line 58
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_5
    sput-object v0, Lcom/ta/audid/utils/MutiProcessLock;->mLock:Ljava/nio/channels/FileLock;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 58
    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    :try_start_6
    sput-object v2, Lcom/ta/audid/utils/MutiProcessLock;->mLock:Ljava/nio/channels/FileLock;

    throw v0

    .line 67
    :catch_1
    move-exception v0

    const/4 v0, 0x0

    sput-object v0, Lcom/ta/audid/utils/MutiProcessLock;->fChannel:Ljava/nio/channels/FileChannel;

    goto :goto_1

    :catchall_2
    move-exception v0

    const/4 v2, 0x0

    sput-object v2, Lcom/ta/audid/utils/MutiProcessLock;->fChannel:Ljava/nio/channels/FileChannel;

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public static declared-synchronized trylockUpload()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 76
    const-class v3, Lcom/ta/audid/utils/MutiProcessLock;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/ta/audid/utils/UtdidLogger;->d()V

    .line 77
    sget-object v4, Lcom/ta/audid/utils/MutiProcessLock;->mUploadLockFile:Ljava/io/File;

    if-nez v4, :cond_0

    .line 78
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/ta/audid/upload/UtdidKeyFile;->getUploadFileLockPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/ta/audid/utils/MutiProcessLock;->mUploadLockFile:Ljava/io/File;

    .line 80
    :cond_0
    sget-object v4, Lcom/ta/audid/utils/MutiProcessLock;->mUploadLockFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 81
    .local v0, "exists":Z
    if-nez v0, :cond_1

    .line 83
    :try_start_1
    sget-object v4, Lcom/ta/audid/utils/MutiProcessLock;->mUploadLockFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :cond_1
    :try_start_2
    sget-object v4, Lcom/ta/audid/utils/MutiProcessLock;->fUploadChannel:Ljava/nio/channels/FileChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_2

    .line 91
    :try_start_3
    new-instance v4, Ljava/io/RandomAccessFile;

    sget-object v5, Lcom/ta/audid/utils/MutiProcessLock;->mUploadLockFile:Ljava/io/File;

    const-string/jumbo v6, "rw"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    sput-object v4, Lcom/ta/audid/utils/MutiProcessLock;->fUploadChannel:Ljava/nio/channels/FileChannel;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    :cond_2
    :try_start_4
    sget-object v4, Lcom/ta/audid/utils/MutiProcessLock;->fUploadChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v1

    .line 98
    .local v1, "lock":Ljava/nio/channels/FileLock;
    if-eqz v1, :cond_3

    .line 99
    sput-object v1, Lcom/ta/audid/utils/MutiProcessLock;->mUploadLock:Ljava/nio/channels/FileLock;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 100
    const/4 v2, 0x1

    .line 105
    .end local v1    # "lock":Ljava/nio/channels/FileLock;
    :cond_3
    :goto_0
    monitor-exit v3

    return v2

    .line 76
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_0
    move-exception v4

    goto :goto_0

    .line 93
    :catch_1
    move-exception v4

    goto :goto_0

    .line 85
    :catch_2
    move-exception v4

    goto :goto_0
.end method
