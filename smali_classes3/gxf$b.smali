.class final Lgxf$b;
.super Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgxf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lgxf;

.field private h:Ljava/lang/Object;

.field private final i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lgxc;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lgxf$d;


# direct methods
.method public constructor <init>(Lgxf;Ljava/lang/Object;Lgxc;Lgxf$d;)V
    .locals 1
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "imageView"    # Lgxc;
    .param p4, "listener"    # Lgxf$d;

    .prologue
    .line 271
    iput-object p1, p0, Lgxf$b;->g:Lgxf;

    invoke-direct {p0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;-><init>()V

    .line 272
    iput-object p2, p0, Lgxf$b;->h:Ljava/lang/Object;

    .line 273
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lgxf$b;->i:Ljava/lang/ref/WeakReference;

    .line 274
    iput-object p4, p0, Lgxf$b;->j:Lgxf$d;

    .line 275
    return-void
.end method

.method static synthetic a(Lgxf$b;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lgxf$b;

    .prologue
    .line 260
    iget-object v0, p0, Lgxf$b;->h:Ljava/lang/Object;

    return-object v0
.end method

.method private varargs b()Landroid/graphics/drawable/BitmapDrawable;
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 287
    iget-object v3, p0, Lgxf$b;->h:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "dataString":Ljava/lang/String;
    const/4 v0, 0x0

    .line 289
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 292
    .local v2, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lgxf$b;->g:Lgxf;

    .line 1041
    iget-object v4, v3, Lgxf;->f:Ljava/lang/Object;

    .line 292
    monitor-enter v4

    .line 298
    :try_start_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    iget-object v3, p0, Lgxf$b;->g:Lgxf;

    .line 2041
    iget-object v3, v3, Lgxf;->c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;

    .line 304
    if-eqz v3, :cond_0

    .line 2459
    iget-object v3, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    .line 304
    if-nez v3, :cond_0

    invoke-direct {p0}, Lgxf$b;->c()Lgxc;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lgxf$b;->g:Lgxf;

    .line 306
    iget-object v3, p0, Lgxf$b;->g:Lgxf;

    .line 4041
    iget-object v3, v3, Lgxf;->c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;

    .line 306
    invoke-virtual {v3, v1}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 313
    :cond_0
    if-nez v0, :cond_1

    .line 4459
    iget-object v3, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    .line 313
    if-nez v3, :cond_1

    invoke-direct {p0}, Lgxf$b;->c()Lgxc;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lgxf$b;->g:Lgxf;

    .line 315
    iget-object v3, p0, Lgxf$b;->g:Lgxf;

    iget-object v4, p0, Lgxf$b;->h:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lgxf;->a(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 322
    :cond_1
    if-eqz v0, :cond_2

    .line 323
    invoke-static {}, Lgxh;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 325
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lgxf$b;->g:Lgxf;

    iget-object v3, v3, Lgxf;->g:Landroid/content/res/Resources;

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 332
    .restart local v2    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iget-object v3, p0, Lgxf$b;->g:Lgxf;

    .line 6041
    iget-object v3, v3, Lgxf;->c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;

    .line 332
    if-eqz v3, :cond_2

    .line 333
    iget-object v3, p0, Lgxf$b;->g:Lgxf;

    .line 7041
    iget-object v4, v3, Lgxf;->c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;

    .line 7233
    if-nez v1, :cond_4

    .line 341
    :cond_2
    :goto_1
    return-object v2

    .line 298
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 329
    :cond_3
    new-instance v2, Lgxg;

    .end local v2    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lgxf$b;->g:Lgxf;

    iget-object v3, v3, Lgxf;->g:Landroid/content/res/Resources;

    invoke-direct {v2, v3, v0}, Lgxg;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v2    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0

    .line 7238
    :cond_4
    iget-object v3, v4, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->b:Lfq;

    if-eqz v3, :cond_6

    .line 7239
    const-class v3, Lgxg;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, v2

    .line 7242
    check-cast v3, Lgxg;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lgxg;->a(Z)V

    .line 7244
    :cond_5
    iget-object v3, v4, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->b:Lfq;

    invoke-virtual {v3, v1, v2}, Lfq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7247
    :cond_6
    iget-object v5, v4, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->d:Ljava/lang/Object;

    monitor-enter v5

    .line 7249
    :try_start_2
    iget-object v3, v4, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->a:Lgxb;

    if-eqz v3, :cond_8

    .line 7250
    invoke-static {v1}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    .line 7251
    const/4 v3, 0x0

    .line 7253
    :try_start_3
    iget-object v7, v4, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->a:Lgxb;

    invoke-virtual {v7, v6}, Lgxb;->a(Ljava/lang/String;)Lgxb$c;

    move-result-object v7

    .line 7254
    if-nez v7, :cond_9

    .line 7255
    iget-object v7, v4, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->a:Lgxb;

    invoke-virtual {v7, v6}, Lgxb;->b(Ljava/lang/String;)Lgxb$a;

    move-result-object v6

    .line 7256
    if-eqz v6, :cond_7

    .line 7257
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgxb$a;->a(I)Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v3

    .line 7258
    :try_start_4
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v8, v4, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;

    iget-object v8, v8, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;->d:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v4, v4, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;

    iget v4, v4, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;->e:I

    invoke-virtual {v7, v8, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 7260
    invoke-virtual {v6}, Lgxb$a;->a()V

    .line 7261
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 7272
    :cond_7
    :goto_2
    if-eqz v3, :cond_8

    .line 7273
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 7278
    :cond_8
    :goto_3
    :try_start_6
    monitor-exit v5

    goto :goto_1

    :catchall_1
    move-exception v3

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 7754
    :cond_9
    :try_start_7
    iget-object v4, v7, Lgxb$c;->a:[Ljava/io/InputStream;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    .line 7264
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    .line 7266
    :catch_0
    move-exception v4

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    .line 7267
    :goto_4
    :try_start_8
    const-string/jumbo v6, "ImageCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "addBitmapToCache - "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 7272
    if-eqz v4, :cond_8

    .line 7273
    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_3

    .line 7276
    :catch_1
    move-exception v3

    goto :goto_3

    .line 7268
    :catch_2
    move-exception v4

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    .line 7269
    :goto_5
    :try_start_a
    const-string/jumbo v6, "ImageCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "addBitmapToCache - "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 7272
    if-eqz v4, :cond_8

    .line 7273
    :try_start_b
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_3

    .line 7276
    :catch_3
    move-exception v3

    goto :goto_3

    .line 7271
    :catchall_2
    move-exception v4

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    .line 7272
    :goto_6
    if-eqz v4, :cond_a

    .line 7273
    :try_start_c
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 7275
    :cond_a
    :goto_7
    :try_start_d
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 7276
    :catch_4
    move-exception v3

    goto :goto_3

    :catch_5
    move-exception v4

    goto :goto_7

    .line 7271
    :catchall_3
    move-exception v4

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    goto :goto_6

    :catchall_4
    move-exception v3

    goto :goto_6

    .line 7268
    :catch_6
    move-exception v4

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    goto :goto_5

    .line 7266
    :catch_7
    move-exception v4

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    goto :goto_4
.end method

.method private c()Lgxc;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 384
    iget-object v2, p0, Lgxf$b;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgxc;

    .line 8041
    .local v1, "imageView":Lgxc;
    invoke-static {v1}, Lgxf;->a(Lgxc;)Lgxf$b;

    move-result-object v0

    .line 387
    .local v0, "bitmapWorkerTask":Lgxf$b;
    if-ne p0, v0, :cond_0

    .line 391
    .end local v1    # "imageView":Lgxc;
    :goto_0
    return-object v1

    .restart local v1    # "imageView":Lgxc;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 260
    invoke-direct {p0}, Lgxf$b;->b()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 260
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 10459
    iget-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 10353
    if-nez v0, :cond_1

    iget-object v0, p0, Lgxf$b;->g:Lgxf;

    .line 10357
    :goto_0
    invoke-direct {p0}, Lgxf$b;->c()Lgxc;

    move-result-object v0

    .line 10358
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 10363
    iget-object v1, p0, Lgxf$b;->g:Lgxf;

    .line 13018
    iput-object p1, v0, Lgxc;->a:Landroid/graphics/drawable/Drawable;

    .line 260
    :cond_0
    return-void

    .line 10354
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method protected final synthetic b(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 260
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 8373
    invoke-super {p0, p1}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->b(Ljava/lang/Object;)V

    .line 8374
    iget-object v0, p0, Lgxf$b;->g:Lgxf;

    .line 9041
    iget-object v1, v0, Lgxf;->f:Ljava/lang/Object;

    .line 8374
    monitor-enter v1

    .line 8375
    :try_start_0
    iget-object v0, p0, Lgxf$b;->g:Lgxf;

    .line 10041
    iget-object v0, v0, Lgxf;->f:Ljava/lang/Object;

    .line 8375
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 8376
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
