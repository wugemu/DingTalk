.class public Lcom/alibaba/doraemon/log/FileLogger;
.super Ljava/lang/Object;
.source "FileLogger.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/log/FileLogger$LogContext;,
        Lcom/alibaba/doraemon/log/FileLogger$BytePool;,
        Lcom/alibaba/doraemon/log/FileLogger$LogFileNameFromDate;,
        Lcom/alibaba/doraemon/log/FileLogger$FLClosedException;,
        Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;,
        Lcom/alibaba/doraemon/log/FileLogger$SeriallyExecutor;
    }
.end annotation


# static fields
.field private static final APP_FOLDER_TYPE:I = 0x1

.field public static final LOGGER_MSG:I = 0x0

.field private static final SDCARD_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FileLogger"


# instance fields
.field private BUF_SIZE:I

.field private mAPPKeepCounts:I

.field private mBufferMaxSize:I

.field private mBufferMinSize:I

.field private mBytePool:Lcom/alibaba/doraemon/log/FileLogger$BytePool;

.field private mCategory:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mDir:Ljava/lang/String;

.field private mFLExecutor:Ljava/util/concurrent/Executor;

.field private mHandler:Landroid/os/Handler;

.field private mIsClosed:Z

.field private mLogContext:Lcom/alibaba/doraemon/log/FileLogger$LogContext;

.field private mLogFileNamer:Lcom/alibaba/doraemon/log/FileLogger$LogFileNameFromDate;

.field private mMFOutputStream:Ljava/io/OutputStream;

.field private mMemoryFile:Landroid/os/MemoryFile;

.field private mMemoryFileSize:I

.field private mOpenedFile:Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;

.field private mRootDir:Ljava/lang/String;

.field private final mRunnableQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mSDKeepCounts:I

.field private mSeriallyExcutor:Lcom/alibaba/doraemon/log/FileLogger$SeriallyExecutor;

.field private mSeriallySupport:Z

.field private mStorageDir:Ljava/lang/String;

.field private mStorageType:I


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    const-string/jumbo v0, ""

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/alibaba/doraemon/log/FileLogger;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "dir"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v2, p0, Lcom/alibaba/doraemon/log/FileLogger;->mStorageType:I

    .line 56
    iput-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mStorageDir:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mRootDir:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mCategory:Ljava/lang/String;

    .line 65
    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mSDKeepCounts:I

    .line 67
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mAPPKeepCounts:I

    .line 85
    iput-boolean v2, p0, Lcom/alibaba/doraemon/log/FileLogger;->mIsClosed:Z

    .line 90
    new-instance v0, Lcom/alibaba/doraemon/log/FileLogger$1;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/log/FileLogger$1;-><init>(Lcom/alibaba/doraemon/log/FileLogger;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mBytePool:Lcom/alibaba/doraemon/log/FileLogger$BytePool;

    .line 102
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mRunnableQueue:Ljava/util/Queue;

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mSeriallySupport:Z

    .line 107
    new-instance v0, Lcom/alibaba/doraemon/log/FileLogger$2;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/log/FileLogger$2;-><init>(Lcom/alibaba/doraemon/log/FileLogger;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mLogFileNamer:Lcom/alibaba/doraemon/log/FileLogger$LogFileNameFromDate;

    .line 140
    iput-object p1, p0, Lcom/alibaba/doraemon/log/FileLogger;->mFLExecutor:Ljava/util/concurrent/Executor;

    .line 141
    iput-object p3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mCategory:Ljava/lang/String;

    .line 142
    iput-object p4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mContext:Landroid/content/Context;

    .line 143
    iput-object p2, p0, Lcom/alibaba/doraemon/log/FileLogger;->mDir:Ljava/lang/String;

    .line 145
    const/16 v0, 0x4000

    iput v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mBufferMinSize:I

    .line 146
    const/high16 v0, 0x200000

    iput v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mBufferMaxSize:I

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mHandler:Landroid/os/Handler;

    .line 150
    iput v2, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMemoryFileSize:I

    .line 151
    iget v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mBufferMinSize:I

    iput v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->BUF_SIZE:I

    .line 152
    iget v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->BUF_SIZE:I

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/log/FileLogger;->resetMemoryFile(I)V

    .line 154
    invoke-direct {p0}, Lcom/alibaba/doraemon/log/FileLogger;->clearExpiredFiles()V

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/log/FileLogger;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/log/FileLogger;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mRunnableQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alibaba/doraemon/log/FileLogger;Lcom/alibaba/doraemon/log/FileLogger$SeriallyExecutor;)Lcom/alibaba/doraemon/log/FileLogger$SeriallyExecutor;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/log/FileLogger;
    .param p1, "x1"    # Lcom/alibaba/doraemon/log/FileLogger$SeriallyExecutor;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/doraemon/log/FileLogger;->mSeriallyExcutor:Lcom/alibaba/doraemon/log/FileLogger$SeriallyExecutor;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/log/FileLogger;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/log/FileLogger;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/doraemon/log/FileLogger;->createStorageDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/doraemon/log/FileLogger;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/log/FileLogger;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mStorageDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/doraemon/log/FileLogger;)Lcom/alibaba/doraemon/log/FileLogger$LogFileNameFromDate;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/log/FileLogger;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mLogFileNamer:Lcom/alibaba/doraemon/log/FileLogger$LogFileNameFromDate;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/doraemon/log/FileLogger;Ljava/util/Date;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/log/FileLogger;
    .param p1, "x1"    # Ljava/util/Date;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/log/FileLogger;->isNeedDel(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/alibaba/doraemon/log/FileLogger;Ljava/io/File;Ljava/util/Date;Ljava/util/Date;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/log/FileLogger;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/util/Date;
    .param p3, "x3"    # Ljava/util/Date;
    .param p4, "x4"    # Ljava/io/OutputStream;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/doraemon/log/FileLogger;->readLogFormDir(Ljava/io/File;Ljava/util/Date;Ljava/util/Date;Ljava/io/OutputStream;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/doraemon/log/FileLogger;Landroid/os/MemoryFile;ILcom/alibaba/doraemon/log/FileLogger$LogContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/log/FileLogger;
    .param p1, "x1"    # Landroid/os/MemoryFile;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/alibaba/doraemon/log/FileLogger$LogContext;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/doraemon/log/FileLogger;->syncWriteLog2File(Landroid/os/MemoryFile;ILcom/alibaba/doraemon/log/FileLogger$LogContext;)V

    return-void
.end method

.method static synthetic access$800(Lcom/alibaba/doraemon/log/FileLogger;)Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/log/FileLogger;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mOpenedFile:Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alibaba/doraemon/log/FileLogger;)Landroid/os/MemoryFile;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/log/FileLogger;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMemoryFile:Landroid/os/MemoryFile;

    return-object v0
.end method

.method private asyncWriteLog2File(Landroid/os/MemoryFile;ILcom/alibaba/doraemon/log/FileLogger$LogContext;)V
    .locals 1
    .param p1, "memFile"    # Landroid/os/MemoryFile;
    .param p2, "memFileSize"    # I
    .param p3, "logContext"    # Lcom/alibaba/doraemon/log/FileLogger$LogContext;

    .prologue
    .line 408
    if-nez p1, :cond_0

    .line 417
    :goto_0
    return-void

    .line 411
    :cond_0
    new-instance v0, Lcom/alibaba/doraemon/log/FileLogger$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/doraemon/log/FileLogger$5;-><init>(Lcom/alibaba/doraemon/log/FileLogger;Landroid/os/MemoryFile;ILcom/alibaba/doraemon/log/FileLogger$LogContext;)V

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/log/FileLogger;->executeSerially(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private clearExpiredFiles()V
    .locals 1

    .prologue
    .line 275
    new-instance v0, Lcom/alibaba/doraemon/log/FileLogger$3;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/log/FileLogger$3;-><init>(Lcom/alibaba/doraemon/log/FileLogger;)V

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/log/FileLogger;->executeSerially(Ljava/lang/Runnable;)V

    .line 303
    return-void
.end method

.method private createStorageDir()Ljava/io/File;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 667
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 669
    iget-object v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mDir:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 670
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 671
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/Android/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/files/logs/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mRootDir:Ljava/lang/String;

    .line 677
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mRootDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mCategory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mStorageDir:Ljava/lang/String;

    .line 679
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mStorageDir:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 680
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    .line 681
    .local v1, "isDirectory":Z
    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 682
    :cond_0
    const/4 v3, 0x0

    iput v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mStorageType:I

    move-object v3, v0

    .line 705
    :goto_1
    return-object v3

    .line 673
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "isDirectory":Z
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 674
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/Android/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/files/logs/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mRootDir:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 686
    :catch_0
    move-exception v2

    .line 687
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 691
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mDir:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 692
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "logs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mRootDir:Ljava/lang/String;

    .line 697
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mRootDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mCategory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mStorageDir:Ljava/lang/String;

    .line 698
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mStorageDir:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 699
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    .line 700
    .restart local v1    # "isDirectory":Z
    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 701
    :cond_3
    const/4 v3, 0x1

    iput v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mStorageType:I

    move-object v3, v0

    .line 702
    goto/16 :goto_1

    .line 694
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "isDirectory":Z
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "logs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mRootDir:Ljava/lang/String;

    goto :goto_2

    .line 705
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "isDirectory":Z
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method private executeSerially(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mSeriallySupport:Z

    if-eqz v0, :cond_1

    .line 240
    iget-object v1, p0, Lcom/alibaba/doraemon/log/FileLogger;->mRunnableQueue:Ljava/util/Queue;

    monitor-enter v1

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mRunnableQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mSeriallyExcutor:Lcom/alibaba/doraemon/log/FileLogger$SeriallyExecutor;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lcom/alibaba/doraemon/log/FileLogger$SeriallyExecutor;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/log/FileLogger$SeriallyExecutor;-><init>(Lcom/alibaba/doraemon/log/FileLogger;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mSeriallyExcutor:Lcom/alibaba/doraemon/log/FileLogger$SeriallyExecutor;

    .line 244
    iget-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mFLExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/alibaba/doraemon/log/FileLogger;->mSeriallyExcutor:Lcom/alibaba/doraemon/log/FileLogger$SeriallyExecutor;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 246
    :cond_0
    monitor-exit v1

    .line 249
    :goto_0
    return-void

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mFLExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private getLogFileWriter()Ljava/nio/channels/FileChannel;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 617
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 618
    .local v1, "curDate":Ljava/util/Date;
    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mLogFileNamer:Lcom/alibaba/doraemon/log/FileLogger$LogFileNameFromDate;

    invoke-interface {v4, v1}, Lcom/alibaba/doraemon/log/FileLogger$LogFileNameFromDate;->getNameFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 620
    .local v3, "fileName":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mOpenedFile:Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mOpenedFile:Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;

    iget-object v4, v4, Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;->mFile:Ljava/io/File;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mOpenedFile:Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;

    iget-object v4, v4, Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mOpenedFile:Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;

    iget-object v4, v4, Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;->mFileChannel:Ljava/nio/channels/FileChannel;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mOpenedFile:Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;

    iget-object v4, v4, Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 621
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mOpenedFile:Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;

    iget-object v4, v4, Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 622
    :cond_0
    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mOpenedFile:Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;

    if-nez v4, :cond_1

    .line 623
    new-instance v4, Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;

    invoke-direct {v4, p0}, Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;-><init>(Lcom/alibaba/doraemon/log/FileLogger;)V

    iput-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mOpenedFile:Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;

    .line 626
    :cond_1
    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mOpenedFile:Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mOpenedFile:Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;

    iget-object v4, v4, Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;->mFileChannel:Ljava/nio/channels/FileChannel;

    if-eqz v4, :cond_2

    .line 628
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mOpenedFile:Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;

    iget-object v4, v4, Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mOpenedFile:Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/alibaba/doraemon/log/FileLogger;->mStorageDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, v4, Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;->mFile:Ljava/io/File;

    .line 637
    :try_start_1
    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mOpenedFile:Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;

    iget-object v4, v4, Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 639
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 640
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 641
    const/16 v4, 0xb

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 643
    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_3
    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mOpenedFile:Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;

    iget-object v4, v4, Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 644
    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mOpenedFile:Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;

    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/alibaba/doraemon/log/FileLogger;->mOpenedFile:Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;

    iget-object v6, v6, Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;->mFileChannel:Ljava/nio/channels/FileChannel;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 649
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mOpenedFile:Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;

    iget-object v4, v4, Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;->mFileChannel:Ljava/nio/channels/FileChannel;

    return-object v4

    .line 629
    :catch_0
    move-exception v2

    .line 630
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 645
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 646
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private isNeedDel(Ljava/util/Date;)Z
    .locals 6
    .param p1, "createDate"    # Ljava/util/Date;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 709
    if-nez p1, :cond_0

    .line 721
    :goto_0
    return v3

    .line 712
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 713
    .local v0, "calendar":Ljava/util/Calendar;
    iget v2, p0, Lcom/alibaba/doraemon/log/FileLogger;->mSDKeepCounts:I

    .line 714
    .local v2, "keepCount":I
    iget v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mStorageType:I

    if-ne v4, v3, :cond_1

    .line 715
    iget v2, p0, Lcom/alibaba/doraemon/log/FileLogger;->mAPPKeepCounts:I

    .line 718
    :cond_1
    const/4 v4, 0x5

    mul-int/lit8 v5, v2, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 719
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 720
    .local v1, "expiredDate":Ljava/util/Date;
    invoke-virtual {p1, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    .line 721
    .local v3, "needDel":Z
    goto :goto_0
.end method

.method private readLogFormDir(Ljava/io/File;Ljava/util/Date;Ljava/util/Date;Ljava/io/OutputStream;)V
    .locals 15
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "fromTime"    # Ljava/util/Date;
    .param p3, "toTime"    # Ljava/util/Date;
    .param p4, "os"    # Ljava/io/OutputStream;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 582
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    array-length v12, v11

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v12, :cond_5

    aget-object v5, v11, v10

    .line 583
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 584
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {p0, v5, v0, v1, v2}, Lcom/alibaba/doraemon/log/FileLogger;->readLogFormDir(Ljava/io/File;Ljava/util/Date;Ljava/util/Date;Ljava/io/OutputStream;)V

    .line 582
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 587
    :cond_0
    iget-object v13, p0, Lcom/alibaba/doraemon/log/FileLogger;->mBytePool:Lcom/alibaba/doraemon/log/FileLogger$BytePool;

    const/16 v14, 0x800

    invoke-interface {v13, v14}, Lcom/alibaba/doraemon/log/FileLogger$BytePool;->getBuf(I)[B

    move-result-object v3

    .line 590
    .local v3, "buffer":[B
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 591
    .local v9, "totalName":Ljava/lang/String;
    iget-object v13, p0, Lcom/alibaba/doraemon/log/FileLogger;->mLogFileNamer:Lcom/alibaba/doraemon/log/FileLogger$LogFileNameFromDate;

    invoke-interface {v13, v9}, Lcom/alibaba/doraemon/log/FileLogger$LogFileNameFromDate;->parseDateFromName(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 592
    .local v8, "timePrefix":Ljava/util/Date;
    if-nez v8, :cond_1

    .line 607
    iget-object v13, p0, Lcom/alibaba/doraemon/log/FileLogger;->mBytePool:Lcom/alibaba/doraemon/log/FileLogger$BytePool;

    invoke-interface {v13, v3}, Lcom/alibaba/doraemon/log/FileLogger$BytePool;->returnBuf([B)V

    goto :goto_1

    .line 596
    :cond_1
    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    if-eqz v13, :cond_3

    .line 607
    :cond_2
    iget-object v13, p0, Lcom/alibaba/doraemon/log/FileLogger;->mBytePool:Lcom/alibaba/doraemon/log/FileLogger$BytePool;

    invoke-interface {v13, v3}, Lcom/alibaba/doraemon/log/FileLogger$BytePool;->returnBuf([B)V

    goto :goto_1

    .line 600
    :cond_3
    :try_start_2
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 601
    .local v6, "is":Ljava/io/FileInputStream;
    :goto_2
    const/4 v13, -0x1

    invoke-virtual {v6, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    .local v7, "readLen":I
    if-eq v13, v7, :cond_4

    .line 602
    const/4 v13, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v13, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 604
    .end local v6    # "is":Ljava/io/FileInputStream;
    .end local v7    # "readLen":I
    .end local v8    # "timePrefix":Ljava/util/Date;
    .end local v9    # "totalName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 605
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 607
    iget-object v13, p0, Lcom/alibaba/doraemon/log/FileLogger;->mBytePool:Lcom/alibaba/doraemon/log/FileLogger$BytePool;

    invoke-interface {v13, v3}, Lcom/alibaba/doraemon/log/FileLogger$BytePool;->returnBuf([B)V

    goto :goto_1

    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "readLen":I
    .restart local v8    # "timePrefix":Ljava/util/Date;
    .restart local v9    # "totalName":Ljava/lang/String;
    :cond_4
    iget-object v13, p0, Lcom/alibaba/doraemon/log/FileLogger;->mBytePool:Lcom/alibaba/doraemon/log/FileLogger$BytePool;

    invoke-interface {v13, v3}, Lcom/alibaba/doraemon/log/FileLogger$BytePool;->returnBuf([B)V

    goto :goto_1

    .end local v6    # "is":Ljava/io/FileInputStream;
    .end local v7    # "readLen":I
    .end local v8    # "timePrefix":Ljava/util/Date;
    .end local v9    # "totalName":Ljava/lang/String;
    :catchall_0
    move-exception v10

    iget-object v11, p0, Lcom/alibaba/doraemon/log/FileLogger;->mBytePool:Lcom/alibaba/doraemon/log/FileLogger$BytePool;

    invoke-interface {v11, v3}, Lcom/alibaba/doraemon/log/FileLogger$BytePool;->returnBuf([B)V

    throw v10

    .line 611
    .end local v3    # "buffer":[B
    .end local v5    # "file":Ljava/io/File;
    :cond_5
    return-void
.end method

.method private resetMemoryFile(I)V
    .locals 6
    .param p1, "size"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 572
    :try_start_0
    new-instance v1, Landroid/os/MemoryFile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mCategory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMemoryFile:Landroid/os/MemoryFile;

    .line 573
    iget-object v1, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMemoryFile:Landroid/os/MemoryFile;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/MemoryFile;->allowPurging(Z)Z

    .line 574
    iget-object v1, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v1}, Landroid/os/MemoryFile;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMFOutputStream:Ljava/io/OutputStream;

    .line 575
    const/4 v1, 0x0

    iput v1, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMemoryFileSize:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :goto_0
    return-void

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private syncWriteLog2File(Landroid/os/MemoryFile;ILcom/alibaba/doraemon/log/FileLogger$LogContext;)V
    .locals 10
    .param p1, "memoryFile"    # Landroid/os/MemoryFile;
    .param p2, "memoryFileSize"    # I
    .param p3, "logContext"    # Lcom/alibaba/doraemon/log/FileLogger$LogContext;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 421
    if-nez p1, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/doraemon/log/FileLogger;->getLogFileWriter()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 426
    .local v5, "writer":Ljava/nio/channels/FileChannel;
    if-eqz v5, :cond_0

    .line 431
    const/4 v1, 0x0

    .line 432
    .local v1, "bytes":[B
    const/4 v3, 0x0

    .line 434
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    if-eqz p3, :cond_4

    iget-boolean v6, p3, Lcom/alibaba/doraemon/log/FileLogger$LogContext;->mLogContextStat:Z

    if-nez v6, :cond_4

    .line 435
    :cond_2
    if-eqz p3, :cond_3

    iget-object v6, p3, Lcom/alibaba/doraemon/log/FileLogger$LogContext;->mLogContextString:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 436
    iget-object v6, p3, Lcom/alibaba/doraemon/log/FileLogger$LogContext;->mLogContextString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 438
    :cond_3
    if-eqz p3, :cond_4

    .line 439
    const/4 v6, 0x1

    iput-boolean v6, p3, Lcom/alibaba/doraemon/log/FileLogger$LogContext;->mLogContextStat:Z

    .line 442
    :cond_4
    invoke-virtual {p1}, Landroid/os/MemoryFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 444
    iget-object v6, p0, Lcom/alibaba/doraemon/log/FileLogger;->mBytePool:Lcom/alibaba/doraemon/log/FileLogger$BytePool;

    invoke-interface {v6, p2}, Lcom/alibaba/doraemon/log/FileLogger$BytePool;->getBuf(I)[B

    move-result-object v1

    .line 446
    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6, p2}, Ljava/io/InputStream;->read([BII)I

    .line 447
    const/4 v6, 0x0

    invoke-static {v1, v6, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 448
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v5, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    if-eqz v3, :cond_5

    .line 454
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 460
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/os/MemoryFile;->close()V

    .line 461
    iget-object v6, p0, Lcom/alibaba/doraemon/log/FileLogger;->mBytePool:Lcom/alibaba/doraemon/log/FileLogger$BytePool;

    invoke-interface {v6, v1}, Lcom/alibaba/doraemon/log/FileLogger$BytePool;->returnBuf([B)V

    .line 464
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :goto_2
    iget-boolean v6, p0, Lcom/alibaba/doraemon/log/FileLogger;->mIsClosed:Z

    if-eqz v6, :cond_0

    .line 465
    iget-object v6, p0, Lcom/alibaba/doraemon/log/FileLogger;->mOpenedFile:Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/doraemon/log/FileLogger;->mOpenedFile:Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;

    iget-object v6, v6, Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;->mFileChannel:Ljava/nio/channels/FileChannel;

    if-eqz v6, :cond_0

    .line 467
    :try_start_2
    iget-object v6, p0, Lcom/alibaba/doraemon/log/FileLogger;->mOpenedFile:Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;

    iget-object v6, v6, Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 468
    :catch_0
    move-exception v2

    .line 469
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 455
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v2

    .line 456
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 449
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 450
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 452
    if-eqz v3, :cond_6

    .line 454
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 460
    :cond_6
    :goto_3
    invoke-virtual {p1}, Landroid/os/MemoryFile;->close()V

    .line 461
    iget-object v6, p0, Lcom/alibaba/doraemon/log/FileLogger;->mBytePool:Lcom/alibaba/doraemon/log/FileLogger$BytePool;

    invoke-interface {v6, v1}, Lcom/alibaba/doraemon/log/FileLogger$BytePool;->returnBuf([B)V

    goto :goto_2

    .line 455
    :catch_3
    move-exception v2

    .line 456
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 452
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_7

    .line 454
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 460
    :cond_7
    :goto_4
    invoke-virtual {p1}, Landroid/os/MemoryFile;->close()V

    .line 461
    iget-object v7, p0, Lcom/alibaba/doraemon/log/FileLogger;->mBytePool:Lcom/alibaba/doraemon/log/FileLogger$BytePool;

    invoke-interface {v7, v1}, Lcom/alibaba/doraemon/log/FileLogger$BytePool;->returnBuf([B)V

    throw v6

    .line 455
    :catch_4
    move-exception v2

    .line 456
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method


# virtual methods
.method public declared-synchronized appendContext(Ljava/lang/String;)V
    .locals 3
    .param p1, "appendContext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/doraemon/log/FileLogger$FLClosedException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 208
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mLogContext:Lcom/alibaba/doraemon/log/FileLogger$LogContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 216
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 210
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mLogContext:Lcom/alibaba/doraemon/log/FileLogger$LogContext;

    iget-boolean v0, v0, Lcom/alibaba/doraemon/log/FileLogger$LogContext;->mLogContextStat:Z

    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/log/FileLogger;->log(Ljava/lang/String;)V

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mLogContext:Lcom/alibaba/doraemon/log/FileLogger$LogContext;

    iget-object v0, v0, Lcom/alibaba/doraemon/log/FileLogger$LogContext;->mLogContextString:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/doraemon/log/FileLogger;->mLogContext:Lcom/alibaba/doraemon/log/FileLogger$LogContext;

    iget-object v2, v1, Lcom/alibaba/doraemon/log/FileLogger$LogContext;->mLogContextString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/doraemon/log/FileLogger$LogContext;->mLogContextString:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 215
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mLogContext:Lcom/alibaba/doraemon/log/FileLogger$LogContext;

    iput-object p1, v0, Lcom/alibaba/doraemon/log/FileLogger$LogContext;->mLogContextString:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized asyncforceFlush()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 479
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/alibaba/doraemon/log/FileLogger;->mIsClosed:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMemoryFileSize:I

    if-lez v1, :cond_2

    .line 480
    iget-object v1, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMemoryFile:Landroid/os/MemoryFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 482
    :try_start_1
    iget v1, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMemoryFileSize:I

    iget v2, p0, Lcom/alibaba/doraemon/log/FileLogger;->BUF_SIZE:I

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/doraemon/log/FileLogger;->BUF_SIZE:I

    iget v2, p0, Lcom/alibaba/doraemon/log/FileLogger;->mBufferMinSize:I

    if-le v1, v2, :cond_0

    .line 483
    iget v1, p0, Lcom/alibaba/doraemon/log/FileLogger;->BUF_SIZE:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alibaba/doraemon/log/FileLogger;->BUF_SIZE:I

    .line 486
    :cond_0
    iget-object v1, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMFOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 487
    iget-object v1, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMemoryFile:Landroid/os/MemoryFile;

    iget v2, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMemoryFileSize:I

    iget-object v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mLogContext:Lcom/alibaba/doraemon/log/FileLogger$LogContext;

    invoke-direct {p0, v1, v2, v3}, Lcom/alibaba/doraemon/log/FileLogger;->asyncWriteLog2File(Landroid/os/MemoryFile;ILcom/alibaba/doraemon/log/FileLogger$LogContext;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 491
    :try_start_2
    iget-object v1, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMFOutputStream:Ljava/io/OutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 493
    :try_start_3
    iget-object v1, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMFOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 499
    :cond_1
    :goto_0
    :try_start_4
    iget v1, p0, Lcom/alibaba/doraemon/log/FileLogger;->BUF_SIZE:I

    invoke-direct {p0, v1}, Lcom/alibaba/doraemon/log/FileLogger;->resetMemoryFile(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 503
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 479
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 488
    :catch_1
    move-exception v0

    .line 489
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 491
    :try_start_7
    iget-object v1, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMFOutputStream:Ljava/io/OutputStream;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_3

    .line 493
    :try_start_8
    iget-object v1, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMFOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 499
    :cond_3
    :goto_2
    :try_start_9
    iget v1, p0, Lcom/alibaba/doraemon/log/FileLogger;->BUF_SIZE:I

    invoke-direct {p0, v1}, Lcom/alibaba/doraemon/log/FileLogger;->resetMemoryFile(I)V

    goto :goto_1

    .line 494
    :catch_2
    move-exception v0

    .line 495
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 491
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMFOutputStream:Ljava/io/OutputStream;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v2, :cond_4

    .line 493
    :try_start_a
    iget-object v2, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMFOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 499
    :cond_4
    :goto_3
    :try_start_b
    iget v2, p0, Lcom/alibaba/doraemon/log/FileLogger;->BUF_SIZE:I

    invoke-direct {p0, v2}, Lcom/alibaba/doraemon/log/FileLogger;->resetMemoryFile(I)V

    throw v1

    .line 494
    :catch_3
    move-exception v0

    .line 495
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3
.end method

.method public cloneLog(Ljava/util/Date;Ljava/util/Date;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "from"    # Ljava/util/Date;
    .param p2, "to"    # Ljava/util/Date;
    .param p3, "os"    # Ljava/io/OutputStream;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 368
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/doraemon/log/FileLogger;->syncforceFlush()V

    .line 374
    monitor-enter p0

    .line 375
    :try_start_0
    new-instance v1, Lcom/alibaba/doraemon/log/FileLogger$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alibaba/doraemon/log/FileLogger$4;-><init>(Lcom/alibaba/doraemon/log/FileLogger;Ljava/util/Date;Ljava/util/Date;Ljava/io/OutputStream;)V

    invoke-direct {p0, v1}, Lcom/alibaba/doraemon/log/FileLogger;->executeSerially(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized close()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 725
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mIsClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 780
    :goto_0
    monitor-exit p0

    return-void

    .line 729
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 730
    iget v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMemoryFileSize:I

    if-lez v4, :cond_3

    .line 731
    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMemoryFile:Landroid/os/MemoryFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    .line 733
    :try_start_2
    iget-object v2, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMemoryFile:Landroid/os/MemoryFile;

    .line 734
    .local v2, "finalMemoryFile":Landroid/os/MemoryFile;
    iget v1, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMemoryFileSize:I

    .line 735
    .local v1, "finalMemSize":I
    iget-object v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mLogContext:Lcom/alibaba/doraemon/log/FileLogger$LogContext;

    .line 737
    .local v3, "logContext":Lcom/alibaba/doraemon/log/FileLogger$LogContext;
    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMFOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 738
    new-instance v4, Lcom/alibaba/doraemon/log/FileLogger$7;

    invoke-direct {v4, p0, v2, v1, v3}, Lcom/alibaba/doraemon/log/FileLogger$7;-><init>(Lcom/alibaba/doraemon/log/FileLogger;Landroid/os/MemoryFile;ILcom/alibaba/doraemon/log/FileLogger$LogContext;)V

    invoke-direct {p0, v4}, Lcom/alibaba/doraemon/log/FileLogger;->executeSerially(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 769
    .end local v1    # "finalMemSize":I
    .end local v2    # "finalMemoryFile":Landroid/os/MemoryFile;
    .end local v3    # "logContext":Lcom/alibaba/doraemon/log/FileLogger$LogContext;
    :cond_1
    :goto_1
    :try_start_3
    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMFOutputStream:Ljava/io/OutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_2

    .line 771
    :try_start_4
    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMFOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 772
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMFOutputStream:Ljava/io/OutputStream;

    .line 773
    const/4 v4, 0x0

    iput v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMemoryFileSize:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 779
    :cond_2
    :goto_2
    const/4 v4, 0x1

    :try_start_5
    iput-boolean v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mIsClosed:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 725
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 745
    :catch_0
    move-exception v0

    .line 746
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 751
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    new-instance v4, Lcom/alibaba/doraemon/log/FileLogger$8;

    invoke-direct {v4, p0}, Lcom/alibaba/doraemon/log/FileLogger$8;-><init>(Lcom/alibaba/doraemon/log/FileLogger;)V

    invoke-direct {p0, v4}, Lcom/alibaba/doraemon/log/FileLogger;->executeSerially(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 774
    :catch_1
    move-exception v0

    .line 775
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public closeSeriallySupport()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mSeriallySupport:Z

    .line 224
    return-void
.end method

.method public getFileFromDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 227
    if-eqz p1, :cond_0

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/doraemon/log/FileLogger;->getLogFileNamer()Lcom/alibaba/doraemon/log/FileLogger$LogFileNameFromDate;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/alibaba/doraemon/log/FileLogger$LogFileNameFromDate;->getNameFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getLogFile(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p1, "date"    # Ljava/util/Date;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 565
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alibaba/doraemon/log/FileLogger;->mStorageDir:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/doraemon/log/FileLogger;->mLogFileNamer:Lcom/alibaba/doraemon/log/FileLogger$LogFileNameFromDate;

    invoke-interface {v2, p1}, Lcom/alibaba/doraemon/log/FileLogger$LogFileNameFromDate;->getNameFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogFileNamer()Lcom/alibaba/doraemon/log/FileLogger$LogFileNameFromDate;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mLogFileNamer:Lcom/alibaba/doraemon/log/FileLogger$LogFileNameFromDate;

    return-object v0
.end method

.method public getRootDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mRootDir:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mStorageDir:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/alibaba/doraemon/log/FileLogger;->asyncforceFlush()V

    .line 308
    const/4 v0, 0x1

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/doraemon/log/FileLogger$FLClosedException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 317
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 318
    .local v0, "strBytes":[B
    array-length v1, v0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/doraemon/log/FileLogger;->log([BI)V

    .line 319
    return-void
.end method

.method public declared-synchronized log([BI)V
    .locals 8
    .param p1, "content"    # [B
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/doraemon/log/FileLogger$FLClosedException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mIsClosed:Z

    if-eqz v3, :cond_0

    .line 323
    new-instance v3, Lcom/alibaba/doraemon/log/FileLogger$FLClosedException;

    const-string/jumbo v4, "FileLogger is closed !"

    invoke-direct {v3, v4}, Lcom/alibaba/doraemon/log/FileLogger$FLClosedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 326
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 327
    iget-object v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    :cond_1
    :try_start_2
    iget v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMemoryFileSize:I

    add-int/2addr v3, p2

    iget v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->BUF_SIZE:I

    if-le v3, v4, :cond_5

    .line 333
    iget-object v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMFOutputStream:Ljava/io/OutputStream;

    if-eqz v3, :cond_2

    .line 334
    iget-object v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMFOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 335
    iget-object v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMFOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 338
    :cond_2
    iget-object v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMemoryFile:Landroid/os/MemoryFile;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMemoryFileSize:I

    if-lez v3, :cond_3

    .line 339
    iget-object v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMemoryFile:Landroid/os/MemoryFile;

    iget v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMemoryFileSize:I

    iget-object v5, p0, Lcom/alibaba/doraemon/log/FileLogger;->mLogContext:Lcom/alibaba/doraemon/log/FileLogger$LogContext;

    invoke-direct {p0, v3, v4, v5}, Lcom/alibaba/doraemon/log/FileLogger;->asyncWriteLog2File(Landroid/os/MemoryFile;ILcom/alibaba/doraemon/log/FileLogger$LogContext;)V

    .line 340
    iget-object v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 343
    :cond_3
    iget v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->BUF_SIZE:I

    iget v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mBufferMaxSize:I

    if-ge v3, v4, :cond_4

    .line 344
    iget v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->BUF_SIZE:I

    mul-int/lit8 v0, v3, 0x2

    .line 345
    .local v0, "buffer_size":I
    iget v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mBufferMaxSize:I

    if-gt v0, v3, :cond_4

    .line 346
    iput v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->BUF_SIZE:I

    .line 349
    .end local v0    # "buffer_size":I
    :cond_4
    iget v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->BUF_SIZE:I

    if-le v3, p2, :cond_7

    iget v1, p0, Lcom/alibaba/doraemon/log/FileLogger;->BUF_SIZE:I

    .line 351
    .local v1, "resetSize":I
    :goto_0
    invoke-direct {p0, v1}, Lcom/alibaba/doraemon/log/FileLogger;->resetMemoryFile(I)V

    .line 356
    .end local v1    # "resetSize":I
    :cond_5
    iget-object v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMFOutputStream:Ljava/io/OutputStream;

    if-eqz v3, :cond_6

    .line 357
    iget-object v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMFOutputStream:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 358
    iget v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMemoryFileSize:I

    add-int/2addr v3, p2

    iput v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMemoryFileSize:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 364
    :cond_6
    :goto_1
    monitor-exit p0

    return-void

    :cond_7
    move v1, p2

    .line 349
    goto :goto_0

    .line 361
    :catch_0
    move-exception v2

    .line 362
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized logContext(Ljava/lang/String;)V
    .locals 1
    .param p1, "logContext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/doraemon/log/FileLogger$FLClosedException;
        }
    .end annotation

    .prologue
    .line 192
    monitor-enter p0

    if-nez p1, :cond_0

    .line 201
    :goto_0
    monitor-exit p0

    return-void

    .line 194
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mLogContext:Lcom/alibaba/doraemon/log/FileLogger$LogContext;

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/alibaba/doraemon/log/FileLogger;->asyncforceFlush()V

    .line 198
    :cond_1
    new-instance v0, Lcom/alibaba/doraemon/log/FileLogger$LogContext;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/log/FileLogger$LogContext;-><init>(Lcom/alibaba/doraemon/log/FileLogger;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mLogContext:Lcom/alibaba/doraemon/log/FileLogger$LogContext;

    .line 200
    iget-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger;->mLogContext:Lcom/alibaba/doraemon/log/FileLogger$LogContext;

    iput-object p1, v0, Lcom/alibaba/doraemon/log/FileLogger$LogContext;->mLogContextString:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBytePool(Lcom/alibaba/doraemon/log/FileLogger$BytePool;)V
    .locals 0
    .param p1, "bytePool"    # Lcom/alibaba/doraemon/log/FileLogger$BytePool;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/alibaba/doraemon/log/FileLogger;->mBytePool:Lcom/alibaba/doraemon/log/FileLogger$BytePool;

    .line 181
    return-void
.end method

.method public setCachedNumInAppDir(I)V
    .locals 0
    .param p1, "cachedNumInAppDir"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/alibaba/doraemon/log/FileLogger;->mAPPKeepCounts:I

    .line 163
    invoke-direct {p0}, Lcom/alibaba/doraemon/log/FileLogger;->clearExpiredFiles()V

    .line 164
    return-void
.end method

.method public setCachedNumInSDDir(I)V
    .locals 0
    .param p1, "cachedNumInSdDir"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/alibaba/doraemon/log/FileLogger;->mSDKeepCounts:I

    .line 172
    invoke-direct {p0}, Lcom/alibaba/doraemon/log/FileLogger;->clearExpiredFiles()V

    .line 173
    return-void
.end method

.method public setLogFileNamer(Lcom/alibaba/doraemon/log/FileLogger$LogFileNameFromDate;)V
    .locals 0
    .param p1, "fileNamer"    # Lcom/alibaba/doraemon/log/FileLogger$LogFileNameFromDate;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/alibaba/doraemon/log/FileLogger;->mLogFileNamer:Lcom/alibaba/doraemon/log/FileLogger$LogFileNameFromDate;

    .line 559
    return-void
.end method

.method public declared-synchronized syncforceFlush()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 509
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mIsClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 547
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 512
    :cond_1
    :try_start_1
    iget v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMemoryFileSize:I

    if-lez v4, :cond_0

    .line 513
    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMemoryFile:Landroid/os/MemoryFile;

    if-eqz v4, :cond_0

    .line 514
    iget-object v3, p0, Lcom/alibaba/doraemon/log/FileLogger;->mLogContext:Lcom/alibaba/doraemon/log/FileLogger$LogContext;

    .line 515
    .local v3, "logContext":Lcom/alibaba/doraemon/log/FileLogger$LogContext;
    iget-object v2, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMemoryFile:Landroid/os/MemoryFile;

    .line 516
    .local v2, "finalMemoryFile":Landroid/os/MemoryFile;
    iget v1, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMemoryFileSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 518
    .local v1, "finalMemSize":I
    :try_start_2
    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMFOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 519
    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->mMFOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 520
    new-instance v4, Lcom/alibaba/doraemon/log/FileLogger$6;

    invoke-direct {v4, p0, v2, v1, v3}, Lcom/alibaba/doraemon/log/FileLogger$6;-><init>(Lcom/alibaba/doraemon/log/FileLogger;Landroid/os/MemoryFile;ILcom/alibaba/doraemon/log/FileLogger$LogContext;)V

    invoke-direct {p0, v4}, Lcom/alibaba/doraemon/log/FileLogger;->executeSerially(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 534
    const-wide/16 v4, 0x7d0

    :try_start_3
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 539
    :goto_1
    :try_start_4
    iget v4, p0, Lcom/alibaba/doraemon/log/FileLogger;->BUF_SIZE:I

    invoke-direct {p0, v4}, Lcom/alibaba/doraemon/log/FileLogger;->resetMemoryFile(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 509
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "finalMemSize":I
    .end local v2    # "finalMemoryFile":Landroid/os/MemoryFile;
    .end local v3    # "logContext":Lcom/alibaba/doraemon/log/FileLogger$LogContext;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 535
    .restart local v1    # "finalMemSize":I
    .restart local v2    # "finalMemoryFile":Landroid/os/MemoryFile;
    .restart local v3    # "logContext":Lcom/alibaba/doraemon/log/FileLogger$LogContext;
    :catch_1
    move-exception v0

    .line 536
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method
