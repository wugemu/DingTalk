.class public Lcom/uc/webview/export/utility/download/UpdateTask;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# static fields
.field public static final START_FLG_FILE_NAME:Ljava/lang/String; = "299772b0fd1634653ae3c31f366de3f8"

.field public static final STOP_FLG_FILE_NAME:Ljava/lang/String; = "2e67cdbeb4ec133dcc8204d930aa7145"

.field private static final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:[Ljava/lang/String;

.field private final c:[J

.field private final d:[Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/webkit/ValueCallback",
            "<",
            "Lcom/uc/webview/export/utility/download/UpdateTask;",
            ">;"
        }
    .end annotation
.end field

.field private final e:[Ljava/lang/Object;

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Landroid/webkit/ValueCallback;
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
    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/uc/webview/export/utility/download/UpdateTask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->b:[Ljava/lang/String;

    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->c:[J

    .line 45
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/webkit/ValueCallback;

    iput-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    .line 48
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Ljava/lang/Object;

    .line 68
    iput v6, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->f:I

    .line 70
    iput v6, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->g:I

    .line 74
    const-string/jumbo v0, "core.jar"

    iput-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->h:Ljava/lang/String;

    .line 89
    if-nez p6, :cond_0

    .line 90
    const-wide/32 v0, 0xea60

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    .line 92
    :cond_0
    if-nez p7, :cond_1

    .line 93
    const-wide/32 v0, 0x240c8400

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p7

    .line 95
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 97
    sget-object v2, Lcom/uc/webview/export/utility/download/UpdateTask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    .line 98
    :try_start_0
    sget-object v0, Lcom/uc/webview/export/utility/download/UpdateTask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Duplicate task."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 102
    :cond_2
    :try_start_1
    sget-object v0, Lcom/uc/webview/export/utility/download/UpdateTask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    if-ltz v1, :cond_3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    const-string/jumbo v2, "sdk_ucm"

    invoke-static {v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 109
    iput-object p5, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->i:Landroid/webkit/ValueCallback;

    .line 110
    iget-object v2, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->c:[J

    int-to-long v4, v1

    aput-wide v4, v2, v6

    .line 111
    iget-object v1, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->c:[J

    const/4 v2, 0x4

    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v2

    .line 112
    iget-object v1, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->c:[J

    const/4 v2, 0x5

    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v2

    .line 113
    iget-object v1, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->b:[Ljava/lang/String;

    aput-object p2, v1, v6

    .line 114
    iget-object v1, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->b:[Ljava/lang/String;

    const/4 v2, 0x1

    aput-object p3, v1, v2

    .line 115
    iget-object v1, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->b:[Ljava/lang/String;

    aput-object v0, v1, v7

    .line 116
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Ljava/lang/Object;

    aput-object p1, v0, v6

    .line 117
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Ljava/lang/Object;

    new-instance v1, Lcom/uc/webview/export/utility/download/DownloadTask;

    invoke-direct {v1, p1, p2, p5}, Lcom/uc/webview/export/utility/download/DownloadTask;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    aput-object v1, v0, v7

    .line 118
    iput-object p4, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->h:Ljava/lang/String;

    .line 119
    return-void

    .line 105
    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/uc/webview/export/utility/download/UpdateTask;I)I
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->f:I

    return p1
.end method

.method static synthetic a(Lcom/uc/webview/export/utility/download/UpdateTask;)Landroid/webkit/ValueCallback;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->i:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method static synthetic a(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "2e67cdbeb4ec133dcc8204d930aa7145"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method static synthetic a(Ljava/io/File;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "2e67cdbeb4ec133dcc8204d930aa7145"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "299772b0fd1634653ae3c31f366de3f8"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/uc/webview/export/utility/download/UpdateTask;I)I
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->g:I

    return p1
.end method

.method static synthetic b(Lcom/uc/webview/export/utility/download/UpdateTask;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/uc/webview/export/utility/download/UpdateTask;)[J
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->c:[J

    return-object v0
.end method

.method static synthetic d(Lcom/uc/webview/export/utility/download/UpdateTask;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/uc/webview/export/utility/download/UpdateTask;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->f:I

    return v0
.end method

.method static synthetic f(Lcom/uc/webview/export/utility/download/UpdateTask;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->g:I

    return v0
.end method

.method public static final getUCPlayerRoot(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    .prologue
    .line 128
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->u:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->u:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x2711

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "ucplayer"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    goto :goto_0
.end method

.method public static getUpdateRoot(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 520
    const/16 v0, 0x2712

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public static isFinished(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 510
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "299772b0fd1634653ae3c31f366de3f8"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 512
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "c34d62af061f389f7e4c9f0e835f7a54"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "2e67cdbeb4ec133dcc8204d930aa7145"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 514
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "95b70b3ec9f6407a92becf890996088d"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    .line 510
    goto :goto_0
.end method


# virtual methods
.method public delete()Lcom/uc/webview/export/utility/download/UpdateTask;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 476
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lcom/uc/webview/export/utility/download/DownloadTask;

    new-instance v1, Lcom/uc/webview/export/utility/download/f;

    invoke-direct {v1, p0}, Lcom/uc/webview/export/utility/download/f;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;)V

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/utility/download/DownloadTask;->stopWith(Ljava/lang/Runnable;)Lcom/uc/webview/export/utility/download/DownloadTask;

    .line 489
    return-object p0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/utility/download/UpdateTask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :try_start_1
    sget-object v0, Lcom/uc/webview/export/utility/download/UpdateTask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->c:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    monitor-exit v1

    .line 140
    :goto_0
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 140
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 202
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Ljava/lang/Object;

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
    .line 528
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lcom/uc/webview/export/utility/download/DownloadTask;

    invoke-virtual {v0}, Lcom/uc/webview/export/utility/download/DownloadTask;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPercent()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->g:I

    return v0
.end method

.method public final getUpdateDir()Ljava/io/File;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 187
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->c:[J

    aget-wide v0, v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;Ljava/net/URL;)Landroid/util/Pair;

    move-result-object v1

    .line 189
    iget-object v2, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->c:[J

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v6

    .line 190
    iget-object v2, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->c:[J

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    aput-wide v0, v2, v7

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->c:[J

    aget-wide v2, v1, v6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->c:[J

    aget-wide v2, v1, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->b:[Ljava/lang/String;

    aget-object v1, v1, v7

    .line 194
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->b:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Lcom/uc/webview/export/utility/download/UpdateTask;",
            ">;)",
            "Lcom/uc/webview/export/utility/download/UpdateTask;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    const-string/jumbo v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 178
    :goto_0
    return-object p0

    .line 153
    :cond_0
    const-string/jumbo v0, "failed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    goto :goto_0

    .line 155
    :cond_1
    const-string/jumbo v0, "recovered"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x2

    aput-object p2, v0, v1

    goto :goto_0

    .line 157
    :cond_2
    const-string/jumbo v0, "progress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x3

    aput-object p2, v0, v1

    goto :goto_0

    .line 159
    :cond_3
    const-string/jumbo v0, "exception"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 160
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x4

    aput-object p2, v0, v1

    goto :goto_0

    .line 161
    :cond_4
    const-string/jumbo v0, "check"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 162
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x5

    aput-object p2, v0, v1

    goto :goto_0

    .line 163
    :cond_5
    const-string/jumbo v0, "exists"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 164
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x6

    aput-object p2, v0, v1

    goto :goto_0

    .line 165
    :cond_6
    const-string/jumbo v0, "beginDownload"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 166
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x7

    aput-object p2, v0, v1

    goto :goto_0

    .line 167
    :cond_7
    const-string/jumbo v0, "beginUnZip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 168
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/16 v1, 0x8

    aput-object p2, v0, v1

    goto/16 :goto_0

    .line 169
    :cond_8
    const-string/jumbo v0, "unzipSuccess"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 170
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/16 v1, 0x9

    aput-object p2, v0, v1

    goto/16 :goto_0

    .line 171
    :cond_9
    const-string/jumbo v0, "downloadException"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 172
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/16 v1, 0xa

    aput-object p2, v0, v1

    goto/16 :goto_0

    .line 173
    :cond_a
    const-string/jumbo v0, "deleteDownFile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 174
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/16 v1, 0xb

    aput-object p2, v0, v1

    goto/16 :goto_0

    .line 176
    :cond_b
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

.method public start()Lcom/uc/webview/export/utility/download/UpdateTask;
    .locals 18

    .prologue
    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v3, 0x0

    aget-object v10, v2, v3

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v3, 0x1

    aget-object v7, v2, v3

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v3, 0x2

    aget-object v12, v2, v3

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v3, 0x3

    aget-object v4, v2, v3

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v3, 0x4

    aget-object v11, v2, v3

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v3, 0x5

    aget-object v13, v2, v3

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v3, 0x6

    aget-object v14, v2, v3

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v3, 0x7

    aget-object v15, v2, v3

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/16 v3, 0x8

    aget-object v8, v2, v3

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/16 v3, 0x9

    aget-object v9, v2, v3

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/16 v3, 0xa

    aget-object v16, v2, v3

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/16 v3, 0xb

    aget-object v17, v2, v3

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/UpdateTask;->b:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v5, v2, v3

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Ljava/lang/Object;

    const/4 v3, 0x2

    aget-object v6, v2, v3

    check-cast v6, Lcom/uc/webview/export/utility/download/DownloadTask;

    .line 226
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/uc/webview/export/utility/download/UpdateTask;->f:I

    .line 227
    new-instance v2, Lcom/uc/webview/export/utility/download/d;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/uc/webview/export/utility/download/d;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;Landroid/webkit/ValueCallback;Ljava/lang/String;Lcom/uc/webview/export/utility/download/DownloadTask;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;)V

    .line 296
    const-string/jumbo v3, "check"

    new-instance v5, Lcom/uc/webview/export/utility/download/e;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v13}, Lcom/uc/webview/export/utility/download/e;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;Landroid/webkit/ValueCallback;)V

    invoke-virtual {v6, v3, v5}, Lcom/uc/webview/export/utility/download/DownloadTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/DownloadTask;

    move-result-object v3

    const-string/jumbo v5, "success"

    new-instance v6, Lcom/uc/webview/export/utility/download/o;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v2}, Lcom/uc/webview/export/utility/download/o;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;Ljava/lang/Runnable;)V

    .line 301
    invoke-virtual {v3, v5, v6}, Lcom/uc/webview/export/utility/download/DownloadTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/DownloadTask;

    move-result-object v3

    const-string/jumbo v5, "exists"

    new-instance v6, Lcom/uc/webview/export/utility/download/n;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v2}, Lcom/uc/webview/export/utility/download/n;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;Ljava/lang/Runnable;)V

    .line 306
    invoke-virtual {v3, v5, v6}, Lcom/uc/webview/export/utility/download/DownloadTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/DownloadTask;

    move-result-object v2

    const-string/jumbo v3, "delete"

    new-instance v5, Lcom/uc/webview/export/utility/download/m;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v1}, Lcom/uc/webview/export/utility/download/m;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;Landroid/webkit/ValueCallback;)V

    .line 311
    invoke-virtual {v2, v3, v5}, Lcom/uc/webview/export/utility/download/DownloadTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/DownloadTask;

    move-result-object v2

    const-string/jumbo v3, "failed"

    new-instance v5, Lcom/uc/webview/export/utility/download/l;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v7}, Lcom/uc/webview/export/utility/download/l;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;Landroid/webkit/ValueCallback;)V

    .line 316
    invoke-virtual {v2, v3, v5}, Lcom/uc/webview/export/utility/download/DownloadTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/DownloadTask;

    move-result-object v2

    const-string/jumbo v3, "progress"

    new-instance v5, Lcom/uc/webview/export/utility/download/k;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4}, Lcom/uc/webview/export/utility/download/k;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;Landroid/webkit/ValueCallback;)V

    .line 326
    invoke-virtual {v2, v3, v5}, Lcom/uc/webview/export/utility/download/DownloadTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/DownloadTask;

    move-result-object v2

    const-string/jumbo v3, "exception"

    new-instance v5, Lcom/uc/webview/export/utility/download/i;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v5, v0, v1, v11}, Lcom/uc/webview/export/utility/download/i;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;)V

    .line 362
    invoke-virtual {v2, v3, v5}, Lcom/uc/webview/export/utility/download/DownloadTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/DownloadTask;

    move-result-object v2

    const-string/jumbo v3, "header"

    new-instance v6, Lcom/uc/webview/export/utility/download/h;

    move-object/from16 v7, p0

    move-object v8, v14

    move-object v9, v12

    move-object v10, v4

    invoke-direct/range {v6 .. v11}, Lcom/uc/webview/export/utility/download/h;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;)V

    .line 394
    invoke-virtual {v2, v3, v6}, Lcom/uc/webview/export/utility/download/DownloadTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/DownloadTask;

    move-result-object v2

    const-string/jumbo v3, "beginDownload"

    new-instance v4, Lcom/uc/webview/export/utility/download/g;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lcom/uc/webview/export/utility/download/g;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;Landroid/webkit/ValueCallback;)V

    .line 439
    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/utility/download/DownloadTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/DownloadTask;

    move-result-object v2

    .line 446
    invoke-virtual {v2}, Lcom/uc/webview/export/utility/download/DownloadTask;->start()Lcom/uc/webview/export/utility/download/DownloadTask;

    .line 448
    return-object p0
.end method

.method public startDownload()Lcom/uc/webview/export/utility/download/UpdateTask;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 466
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lcom/uc/webview/export/utility/download/DownloadTask;

    invoke-virtual {v0}, Lcom/uc/webview/export/utility/download/DownloadTask;->start()Lcom/uc/webview/export/utility/download/DownloadTask;

    .line 468
    return-object p0
.end method

.method public stop()Lcom/uc/webview/export/utility/download/UpdateTask;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 456
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lcom/uc/webview/export/utility/download/DownloadTask;

    invoke-virtual {v0}, Lcom/uc/webview/export/utility/download/DownloadTask;->stop()Lcom/uc/webview/export/utility/download/DownloadTask;

    .line 458
    return-object p0
.end method
