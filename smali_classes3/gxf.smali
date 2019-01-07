.class public abstract Lgxf;
.super Ljava/lang/Object;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgxf$c;,
        Lgxf$a;,
        Lgxf$d;,
        Lgxf$b;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;

.field private b:Z

.field c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;

.field public d:Z

.field protected e:Z

.field final f:Ljava/lang/Object;

.field protected g:Landroid/content/res/Resources;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgxf;->d:Z

    .line 49
    iput-boolean v1, p0, Lgxf;->b:Z

    .line 50
    iput-boolean v1, p0, Lgxf;->e:Z

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lgxf;->f:Ljava/lang/Object;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lgxf;->g:Landroid/content/res/Resources;

    .line 62
    return-void
.end method

.method static a(Lgxc;)Lgxf$b;
    .locals 3
    .param p0, "imageView"    # Lgxc;

    .prologue
    .line 246
    if-eqz p0, :cond_0

    .line 4014
    iget-object v1, p0, Lgxc;->a:Landroid/graphics/drawable/Drawable;

    .line 248
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lgxf$a;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 249
    check-cast v0, Lgxf$a;

    .line 4424
    .local v0, "asyncDrawable":Lgxf$a;
    iget-object v2, v0, Lgxf$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgxf$b;

    .line 254
    .end local v0    # "asyncDrawable":Lgxf$a;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)Landroid/graphics/Bitmap;
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lgxf;->c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lgxf;->c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;

    invoke-virtual {v0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->a()V

    .line 486
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/ailabs/ar/androidar/ArActivity;Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;)V
    .locals 4
    .param p1, "activity"    # Lcom/alibaba/ailabs/ar/androidar/ArActivity;
    .param p2, "cacheParams"    # Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 151
    iput-object p2, p0, Lgxf;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;

    .line 152
    iget-object v0, p0, Lgxf;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;

    invoke-static {p1, v0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->a(Lcom/alibaba/ailabs/ar/androidar/ArActivity;Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;)Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lgxf;->c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;

    .line 153
    new-instance v0, Lgxf$c;

    invoke-direct {v0, p0}, Lgxf$c;-><init>(Lgxf;)V

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3560
    sget-object v2, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->d:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;

    .line 154
    return-void
.end method

.method public final a(Ljava/lang/Object;Lgxc;Lgxf$d;)V
    .locals 9
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "imageView"    # Lgxc;
    .param p3, "listener"    # Lgxf$d;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 77
    if-nez p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const/4 v2, 0x0

    .line 83
    .local v2, "value":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lgxf;->c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;

    if-eqz v3, :cond_2

    .line 84
    iget-object v3, p0, Lgxf;->c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1292
    iget-object v8, v3, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->b:Lfq;

    if-eqz v8, :cond_7

    .line 1293
    iget-object v3, v3, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->b:Lfq;

    invoke-virtual {v3, v7}, Lfq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v3

    .line 87
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 2018
    iput-object v2, p2, Lgxc;->a:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 2222
    :cond_3
    invoke-static {p2}, Lgxf;->a(Lgxc;)Lgxf$b;

    move-result-object v3

    .line 2224
    if-eqz v3, :cond_5

    .line 2225
    invoke-static {v3}, Lgxf$b;->a(Lgxf$b;)Ljava/lang/Object;

    move-result-object v7

    .line 2226
    if-eqz v7, :cond_4

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 2492
    :cond_4
    iget-object v7, v3, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2493
    iget-object v3, v3, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->e:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    :cond_5
    move v3, v6

    .line 94
    :goto_2
    if-eqz v3, :cond_0

    .line 96
    new-instance v1, Lgxf$b;

    invoke-direct {v1, p0, p1, p2, v4}, Lgxf$b;-><init>(Lgxf;Ljava/lang/Object;Lgxc;Lgxf$d;)V

    .line 97
    .local v1, "task":Lgxf$b;
    new-instance v0, Lgxf$a;

    iget-object v3, p0, Lgxf;->g:Landroid/content/res/Resources;

    invoke-direct {v0, v3, v4, v1}, Lgxf$a;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lgxf$b;)V

    .line 3018
    .local v0, "asyncDrawable":Lgxf$a;
    iput-object v0, p2, Lgxc;->a:Landroid/graphics/drawable/Drawable;

    .line 105
    sget-object v3, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->c:Ljava/util/concurrent/Executor;

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v3, v4}, Lgxf$b;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;

    goto :goto_0

    .end local v0    # "asyncDrawable":Lgxf$a;
    .end local v1    # "task":Lgxf$b;
    :cond_6
    move v3, v5

    .line 2233
    goto :goto_2

    :cond_7
    move-object v2, v4

    goto :goto_1
.end method

.method protected b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 489
    iget-object v0, p0, Lgxf;->c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;

    if-eqz v0, :cond_2

    .line 490
    iget-object v1, p0, Lgxf;->c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;

    .line 5396
    iget-object v0, v1, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->b:Lfq;

    if-eqz v0, :cond_0

    .line 5397
    iget-object v0, v1, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->b:Lfq;

    invoke-virtual {v0}, Lfq;->evictAll()V

    .line 5403
    :cond_0
    iget-object v2, v1, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 5404
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, v1, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->e:Z

    .line 5405
    iget-object v0, v1, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->a:Lgxb;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->a:Lgxb;

    invoke-virtual {v0}, Lgxb;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 5407
    :try_start_1
    iget-object v0, v1, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->a:Lgxb;

    invoke-virtual {v0}, Lgxb;->c()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5414
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, v1, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->a:Lgxb;

    .line 5415
    invoke-virtual {v1}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->a()V

    .line 5417
    :cond_1
    monitor-exit v2

    :cond_2
    return-void

    .line 5411
    :catch_0
    move-exception v0

    .line 5412
    const-string/jumbo v3, "ImageCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "clearCache - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5417
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected c()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 495
    iget-object v0, p0, Lgxf;->c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lgxf;->c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;

    .line 5425
    iget-object v1, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 5426
    :try_start_0
    iget-object v2, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->a:Lgxb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 5428
    :try_start_1
    iget-object v0, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->a:Lgxb;

    invoke-virtual {v0}, Lgxb;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5436
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    :cond_1
    return-void

    .line 5432
    :catch_0
    move-exception v0

    .line 5433
    const-string/jumbo v2, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "flush - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5436
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected d()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 501
    iget-object v0, p0, Lgxf;->c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lgxf;->c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;

    .line 5444
    iget-object v1, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 5445
    :try_start_0
    iget-object v2, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->a:Lgxb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 5447
    :try_start_1
    iget-object v2, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->a:Lgxb;

    invoke-virtual {v2}, Lgxb;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5448
    iget-object v2, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->a:Lgxb;

    invoke-virtual {v2}, Lgxb;->close()V

    .line 5449
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->a:Lgxb;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5458
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 503
    iput-object v5, p0, Lgxf;->c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;

    .line 505
    :cond_1
    return-void

    .line 5454
    :catch_0
    move-exception v0

    .line 5455
    :try_start_3
    const-string/jumbo v2, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "close - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5458
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
