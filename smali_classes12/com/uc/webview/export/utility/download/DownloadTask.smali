.class public Lcom/uc/webview/export/utility/download/DownloadTask;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:[Ljava/lang/Object;

.field private final c:[Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/webkit/ValueCallback",
            "<",
            "Lcom/uc/webview/export/utility/download/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final d:[Ljava/lang/String;

.field private final e:[J

.field private f:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/uc/webview/export/utility/download/DownloadTask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->b:[Ljava/lang/Object;

    .line 44
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/webkit/ValueCallback;

    iput-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    .line 47
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->d:[Ljava/lang/String;

    .line 50
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->e:[J

    .line 59
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 61
    iget-object v1, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->b:[Ljava/lang/Object;

    const/4 v2, 0x2

    aput-object p1, v1, v2

    .line 63
    sget-object v1, Lcom/uc/webview/export/utility/download/DownloadTask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 64
    :try_start_0
    sget-object v2, Lcom/uc/webview/export/utility/download/DownloadTask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Duplicate task."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 68
    :cond_0
    :try_start_1
    sget-object v2, Lcom/uc/webview/export/utility/download/DownloadTask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    if-ltz v0, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_0
    iput-object p3, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->f:Landroid/webkit/ValueCallback;

    .line 75
    const-string/jumbo v1, "sdk_dl"

    invoke-static {v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->d:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 80
    iget-object v1, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->d:[Ljava/lang/String;

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/ucdown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 82
    return-void

    .line 71
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/uc/webview/export/utility/download/DownloadTask;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->d:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/uc/webview/export/utility/download/DownloadTask;)[Landroid/webkit/ValueCallback;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    return-object v0
.end method


# virtual methods
.method public delete()Lcom/uc/webview/export/utility/download/DownloadTask;
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/utility/download/DownloadTask;->delete(Z)Lcom/uc/webview/export/utility/download/DownloadTask;

    move-result-object v0

    return-object v0
.end method

.method public delete(Z)Lcom/uc/webview/export/utility/download/DownloadTask;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 239
    const-string/jumbo v0, "csc_duftp"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->b:[Ljava/lang/Object;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/uc/webview/export/utility/download/c;

    invoke-direct {v2, p0, p1}, Lcom/uc/webview/export/utility/download/c;-><init>(Lcom/uc/webview/export/utility/download/DownloadTask;Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v1, v0, v3

    .line 265
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->b:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 266
    return-object p0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->d:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 88
    sget-object v1, Lcom/uc/webview/export/utility/download/DownloadTask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :try_start_1
    sget-object v2, Lcom/uc/webview/export/utility/download/DownloadTask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    monitor-exit v1

    .line 92
    :goto_0
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 92
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getCurrentSize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 158
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->e:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 134
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->b:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 142
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->d:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 166
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->e:[J

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getTotalSize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 150
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->e:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/DownloadTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Lcom/uc/webview/export/utility/download/DownloadTask;",
            ">;)",
            "Lcom/uc/webview/export/utility/download/DownloadTask;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    const-string/jumbo v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 126
    :goto_0
    return-object p0

    .line 105
    :cond_0
    const-string/jumbo v0, "failed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    goto :goto_0

    .line 107
    :cond_1
    const-string/jumbo v0, "recovered"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x2

    aput-object p2, v0, v1

    goto :goto_0

    .line 109
    :cond_2
    const-string/jumbo v0, "progress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x3

    aput-object p2, v0, v1

    goto :goto_0

    .line 111
    :cond_3
    const-string/jumbo v0, "exception"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 112
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x4

    aput-object p2, v0, v1

    goto :goto_0

    .line 113
    :cond_4
    const-string/jumbo v0, "check"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 114
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x5

    aput-object p2, v0, v1

    goto :goto_0

    .line 115
    :cond_5
    const-string/jumbo v0, "header"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 116
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x6

    aput-object p2, v0, v1

    goto :goto_0

    .line 117
    :cond_6
    const-string/jumbo v0, "exists"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 118
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x7

    aput-object p2, v0, v1

    goto :goto_0

    .line 119
    :cond_7
    const-string/jumbo v0, "beginDownload"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 120
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/16 v1, 0x8

    aput-object p2, v0, v1

    goto/16 :goto_0

    .line 121
    :cond_8
    const-string/jumbo v0, "delete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 122
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/16 v1, 0x9

    aput-object p2, v0, v1

    goto/16 :goto_0

    .line 124
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "The given event:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is unknown."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public planWith(Ljava/lang/Runnable;)Lcom/uc/webview/export/utility/download/DownloadTask;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 216
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/uc/webview/export/utility/download/b;

    invoke-direct {v1, p0, p1}, Lcom/uc/webview/export/utility/download/b;-><init>(Lcom/uc/webview/export/utility/download/DownloadTask;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 227
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 228
    return-object p0
.end method

.method public declared-synchronized run()V
    .locals 22

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 275
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Download should not run in UI thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 278
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v3, 0x1

    aget-object v5, v2, v3

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v3, 0x2

    aget-object v6, v2, v3

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v3, 0x3

    aget-object v7, v2, v3

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v3, 0x4

    aget-object v8, v2, v3

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    .line 284
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v9, 0x6

    aget-object v9, v3, v9

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v10, 0x7

    aget-object v10, v3, v10

    .line 286
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/16 v11, 0x8

    aget-object v11, v3, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    if-eqz v2, :cond_1

    :try_start_2
    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 291
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->b:[Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v12, 0x0

    aput-object v12, v2, v3

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->d:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v12, v2, v3

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->d:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v13, v2, v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->f:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->f:Landroid/webkit/ValueCallback;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v14

    invoke-interface {v2, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_14
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 300
    :cond_2
    :goto_0
    const/4 v2, 0x0

    :try_start_4
    invoke-static {v12, v2}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;Ljava/net/URL;)Landroid/util/Pair;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    .line 305
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->e:[J

    const/4 v15, 0x0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    aput-wide v16, v14, v15

    .line 306
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->e:[J

    const/4 v15, 0x2

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v14, v15

    .line 307
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->d:[Ljava/lang/String;

    const/4 v3, 0x2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v18, "/"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v2, v3

    .line 309
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->e:[J

    const/4 v3, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v20

    aput-wide v20, v2, v3
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 311
    cmp-long v2, v20, v16

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    move v3, v2

    .line 313
    :goto_1
    if-eqz v9, :cond_3

    :try_start_6
    move-object/from16 v0, p0

    invoke-interface {v9, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 315
    :cond_3
    :goto_2
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->b:[Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v2, v2, v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v9

    if-eq v2, v9, :cond_7

    .line 428
    :cond_4
    :goto_3
    monitor-exit p0

    return-void

    .line 301
    :catch_0
    move-exception v2

    .line 302
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->f:Landroid/webkit/ValueCallback;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->f:Landroid/webkit/ValueCallback;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_13
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 303
    :cond_5
    :goto_4
    :try_start_9
    throw v2
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 422
    :catch_1
    move-exception v2

    .line 423
    :try_start_a
    const-string/jumbo v3, "sdk_dl_e"

    invoke-static {v3}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->b:[Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v2, v3, v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 426
    if-eqz v8, :cond_4

    :try_start_b
    move-object/from16 v0, p0

    invoke-interface {v8, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    .line 428
    :catch_2
    move-exception v2

    goto :goto_3

    .line 311
    :cond_6
    const/4 v2, 0x0

    move v3, v2

    goto :goto_1

    .line 319
    :cond_7
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->f:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->f:Landroid/webkit/ValueCallback;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v19, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v9, v15

    invoke-interface {v2, v9}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_12
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 321
    :cond_8
    :goto_5
    if-eqz v3, :cond_19

    .line 323
    :try_start_d
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;

    .line 326
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 327
    array-length v10, v9

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v10, :cond_a

    aget-object v13, v9, v2

    .line 328
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 329
    const/4 v15, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-static {v13, v15, v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    .line 327
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 333
    :cond_a
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b

    .line 334
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->createNewFile()Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 338
    :cond_b
    cmp-long v2, v20, v16

    if-gez v2, :cond_16

    .line 339
    if-eqz v11, :cond_c

    :try_start_e
    move-object/from16 v0, p0

    invoke-interface {v11, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 342
    :cond_c
    :goto_7
    :try_start_f
    sget-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->g:Z

    if-nez v2, :cond_d

    const-string/jumbo v2, "traffic_stat"

    .line 343
    invoke-static {v2}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xe

    if-lt v2, v9, :cond_d

    .line 345
    const v2, 0xa002

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_11
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 347
    :cond_d
    :goto_8
    :try_start_10
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 353
    sget v9, Lcom/uc/webview/export/internal/utility/j;->a:I

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 354
    sget v9, Lcom/uc/webview/export/internal/utility/j;->b:I

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 355
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 356
    const-string/jumbo v9, "GET"

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 358
    const-wide/16 v10, 0x0

    cmp-long v9, v20, v10

    if-lez v9, :cond_e

    .line 359
    const-string/jumbo v9, "Range"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "bytes="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string/jumbo v9, "sdk_dl_r"

    invoke-static {v9}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 361
    if-eqz v6, :cond_e

    :try_start_11
    move-object/from16 v0, p0

    invoke-interface {v6, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 364
    :cond_e
    :goto_9
    :try_start_12
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 365
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 366
    const/16 v9, 0xc8

    if-lt v6, v9, :cond_f

    const/16 v9, 0x12f

    if-le v6, v9, :cond_10

    .line 367
    :cond_f
    new-instance v2, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v3, 0xfb4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "httpcode:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not correct."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 371
    :cond_10
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-result-object v6

    .line 373
    :try_start_13
    new-instance v9, Ljava/io/FileOutputStream;

    const/4 v10, 0x1

    move-object/from16 v0, v18

    invoke-direct {v9, v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 375
    const v10, 0xc800

    :try_start_14
    new-array v10, v10, [B

    .line 377
    :cond_11
    invoke-virtual {v6, v10}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .line 379
    if-lez v11, :cond_12

    .line 380
    const/4 v12, 0x0

    invoke-virtual {v9, v10, v12, v11}, Ljava/io/FileOutputStream;->write([BII)V

    .line 381
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->e:[J

    const/4 v13, 0x1

    aget-wide v14, v12, v13

    int-to-long v0, v11

    move-wide/from16 v20, v0

    add-long v14, v14, v20

    aput-wide v14, v12, v13
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 383
    if-eqz v7, :cond_12

    :try_start_15
    move-object/from16 v0, p0

    invoke-interface {v7, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 386
    :cond_12
    :goto_a
    if-lez v11, :cond_13

    :try_start_16
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->e:[J

    const/4 v12, 0x1

    aget-wide v12, v11, v12

    cmp-long v11, v12, v16

    if-lez v11, :cond_14

    .line 387
    :cond_13
    const/4 v3, 0x0

    .line 390
    :cond_14
    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->b:[Ljava/lang/Object;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    move-result-object v12

    if-eq v11, v12, :cond_11

    .line 393
    :cond_15
    :try_start_17
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_b
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 397
    :goto_b
    :try_start_18
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_d
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 398
    :goto_c
    :try_start_19
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_4
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    move v2, v3

    .line 405
    :goto_d
    if-nez v2, :cond_4

    .line 406
    :try_start_1a
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v16, v2

    if-eqz v2, :cond_17

    .line 407
    const-string/jumbo v2, "sdk_dl_f"

    invoke-static {v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->b:[Ljava/lang/Object;

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Size mismatch:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_1
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 409
    if-eqz v5, :cond_4

    :try_start_1b
    move-object/from16 v0, p0

    invoke-interface {v5, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_3
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto/16 :goto_3

    :catch_3
    move-exception v2

    goto/16 :goto_3

    .line 393
    :catchall_1
    move-exception v3

    :try_start_1c
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    :goto_e
    :try_start_1d
    throw v3
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 397
    :catchall_2
    move-exception v3

    :try_start_1e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 398
    :goto_f
    :try_start_1f
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    :goto_10
    :try_start_20
    throw v3

    .line 399
    :catch_4
    move-exception v2

    move v2, v3

    goto :goto_d

    .line 400
    :cond_16
    const/4 v2, 0x0

    goto :goto_d

    .line 411
    :cond_17
    const-string/jumbo v2, "sdk_dl_s"

    invoke-static {v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_1
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 412
    if-eqz v4, :cond_18

    :try_start_21
    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_10
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 413
    :cond_18
    :goto_11
    :try_start_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->f:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->f:Landroid/webkit/ValueCallback;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_5
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    goto/16 :goto_3

    :catch_5
    move-exception v2

    goto/16 :goto_3

    .line 417
    :cond_19
    :try_start_23
    const-string/jumbo v2, "sdk_dl_x"

    invoke-static {v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_1
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    .line 418
    if-eqz v10, :cond_4

    :try_start_24
    move-object/from16 v0, p0

    invoke-interface {v10, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_6
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    goto/16 :goto_3

    :catch_6
    move-exception v2

    goto/16 :goto_3

    :catch_7
    move-exception v2

    goto/16 :goto_2

    :catch_8
    move-exception v2

    goto/16 :goto_7

    :catch_9
    move-exception v6

    goto/16 :goto_9

    :catch_a
    move-exception v12

    goto/16 :goto_a

    .line 394
    :catch_b
    move-exception v7

    goto/16 :goto_b

    :catch_c
    move-exception v4

    goto :goto_e

    :catch_d
    move-exception v6

    goto/16 :goto_c

    :catch_e
    move-exception v4

    goto :goto_f

    :catch_f
    move-exception v2

    goto :goto_10

    :catch_10
    move-exception v2

    goto :goto_11

    :catch_11
    move-exception v2

    goto/16 :goto_8

    :catch_12
    move-exception v2

    goto/16 :goto_5

    :catch_13
    move-exception v3

    goto/16 :goto_4

    :catch_14
    move-exception v2

    goto/16 :goto_0
.end method

.method public start()Lcom/uc/webview/export/utility/download/DownloadTask;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 174
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->b:[Ljava/lang/Object;

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v1, v0, v2

    .line 175
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->b:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 176
    return-object p0
.end method

.method public stop()Lcom/uc/webview/export/utility/download/DownloadTask;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 184
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 185
    return-object p0
.end method

.method public stopWith(Ljava/lang/Runnable;)Lcom/uc/webview/export/utility/download/DownloadTask;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 194
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->b:[Ljava/lang/Object;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/uc/webview/export/utility/download/a;

    invoke-direct {v2, p0, p1}, Lcom/uc/webview/export/utility/download/a;-><init>(Lcom/uc/webview/export/utility/download/DownloadTask;Ljava/lang/Runnable;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v1, v0, v3

    .line 206
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->b:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 207
    return-object p0
.end method
