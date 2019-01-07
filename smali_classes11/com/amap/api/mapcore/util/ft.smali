.class public Lcom/amap/api/mapcore/util/ft;
.super Lcom/amap/api/mapcore/util/fq;
.source "SDKLogHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/ft$a;
    }
.end annotation


# static fields
.field private static e:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private d:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/fm;)V
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/fq;-><init>()V

    .line 221
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ft;->d:Landroid/content/Context;

    .line 222
    new-instance v0, Lcom/amap/api/mapcore/util/ft$a;

    invoke-direct {v0, p1}, Lcom/amap/api/mapcore/util/ft$a;-><init>(Landroid/content/Context;)V

    .line 223
    invoke-static {v0}, Lcom/amap/api/mapcore/util/hf;->a(Lcom/amap/api/mapcore/util/hg;)V

    .line 224
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ft;->d()V

    .line 225
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/ft;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ft;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/amap/api/mapcore/util/ft;
    .locals 2

    .prologue
    .line 61
    const-class v1, Lcom/amap/api/mapcore/util/ft;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/util/fq;->a:Lcom/amap/api/mapcore/util/fq;

    check-cast v0, Lcom/amap/api/mapcore/util/ft;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fm;)Lcom/amap/api/mapcore/util/ft;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/fc;
        }
    .end annotation

    .prologue
    .line 34
    const-class v1, Lcom/amap/api/mapcore/util/ft;

    monitor-enter v1

    if-nez p1, :cond_0

    .line 35
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/fc;

    const-string/jumbo v2, "sdk info is null"

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/util/fc;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 37
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/fm;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/fm;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    :cond_1
    new-instance v0, Lcom/amap/api/mapcore/util/fc;

    const-string/jumbo v2, "sdk name is invalid"

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/util/fc;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :cond_2
    :try_start_2
    sget-object v0, Lcom/amap/api/mapcore/util/fq;->a:Lcom/amap/api/mapcore/util/fq;

    if-nez v0, :cond_3

    .line 42
    new-instance v0, Lcom/amap/api/mapcore/util/ft;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/ft;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/fm;)V

    sput-object v0, Lcom/amap/api/mapcore/util/fq;->a:Lcom/amap/api/mapcore/util/fq;

    .line 48
    :goto_0
    sget-object v0, Lcom/amap/api/mapcore/util/fq;->a:Lcom/amap/api/mapcore/util/fq;

    sget-object v2, Lcom/amap/api/mapcore/util/fq;->a:Lcom/amap/api/mapcore/util/fq;

    iget-boolean v2, v2, Lcom/amap/api/mapcore/util/fq;->c:Z

    invoke-virtual {v0, p0, p1, v2}, Lcom/amap/api/mapcore/util/fq;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fm;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    :goto_1
    :try_start_3
    sget-object v0, Lcom/amap/api/mapcore/util/fq;->a:Lcom/amap/api/mapcore/util/fq;

    check-cast v0, Lcom/amap/api/mapcore/util/ft;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :cond_3
    :try_start_4
    sget-object v0, Lcom/amap/api/mapcore/util/fq;->a:Lcom/amap/api/mapcore/util/fq;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/amap/api/mapcore/util/fq;->c:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public static declared-synchronized b()V
    .locals 3

    .prologue
    .line 100
    const-class v1, Lcom/amap/api/mapcore/util/ft;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/util/ft;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/amap/api/mapcore/util/ft;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/amap/api/mapcore/util/fq;->a:Lcom/amap/api/mapcore/util/fq;

    if-eqz v0, :cond_1

    .line 110
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sget-object v2, Lcom/amap/api/mapcore/util/fq;->a:Lcom/amap/api/mapcore/util/fq;

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/amap/api/mapcore/util/fq;->a:Lcom/amap/api/mapcore/util/fq;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/fq;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 112
    sget-object v0, Lcom/amap/api/mapcore/util/fq;->a:Lcom/amap/api/mapcore/util/fq;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/fq;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 114
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/mapcore/util/fq;->a:Lcom/amap/api/mapcore/util/fq;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :goto_1
    monitor-exit v1

    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 115
    :catch_1
    move-exception v0

    .line 116
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/amap/api/mapcore/util/fq;->a:Lcom/amap/api/mapcore/util/fq;

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/amap/api/mapcore/util/fq;->a:Lcom/amap/api/mapcore/util/fq;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method

.method public static declared-synchronized c()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .prologue
    .line 270
    const-class v1, Lcom/amap/api/mapcore/util/ft;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/util/ft;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amap/api/mapcore/util/ft;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/ft;->e:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :cond_1
    :goto_0
    :try_start_1
    sget-object v0, Lcom/amap/api/mapcore/util/ft;->e:Ljava/util/concurrent/ExecutorService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, -0x1

    .line 229
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ft;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 230
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ft;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_0

    .line 231
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ft;->c:Z

    .line 246
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ft;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    const-string/jumbo v1, "com.amap.api"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "com.amap.loc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 236
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ft;->c:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 238
    :cond_2
    :try_start_1
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ft;->c:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fm;Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 172
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore/util/ft;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    new-instance v1, Lcom/amap/api/mapcore/util/ft$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amap/api/mapcore/util/ft$1;-><init>(Lcom/amap/api/mapcore/util/ft;Landroid/content/Context;Lcom/amap/api/mapcore/util/fm;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    goto :goto_0

    .line 213
    :catch_1
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ft;->d:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/amap/api/mapcore/util/fr;->a(Landroid/content/Context;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 265
    :goto_0
    return-void

    .line 260
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/amap/api/mapcore/util/ft;->a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 126
    if-nez p2, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v1, v1}, Lcom/amap/api/mapcore/util/ft;->a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ft;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ft;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ft;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
