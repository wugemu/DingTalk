.class public Lcom/amap/api/mapcore/util/ef$a;
.super Lcom/amap/api/mapcore/util/dw;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/ef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore/util/dw",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/ef;

.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/amap/api/mapcore/util/dg$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/ef;Lcom/amap/api/mapcore/util/dg$a;)V
    .locals 1

    .prologue
    .line 247
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ef$a;->a:Lcom/amap/api/mapcore/util/ef;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/dw;-><init>()V

    .line 248
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ef$a;->e:Ljava/lang/ref/WeakReference;

    .line 249
    return-void
.end method

.method private e()Lcom/amap/api/mapcore/util/dg$a;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 394
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/dg$a;

    .line 395
    invoke-static {v0}, Lcom/amap/api/mapcore/util/ef;->b(Lcom/amap/api/mapcore/util/dg$a;)Lcom/amap/api/mapcore/util/ef$a;

    move-result-object v1

    .line 397
    if-ne p0, v1, :cond_0

    .line 401
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Boolean;)Landroid/graphics/Bitmap;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 260
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 262
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/dg$a;

    .line 263
    if-nez v0, :cond_1

    move-object v0, v1

    .line 348
    :cond_0
    :goto_0
    return-object v0

    .line 265
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    iget v4, v0, Lcom/amap/api/mapcore/util/dg$a;->a:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    const-string/jumbo v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget v4, v0, Lcom/amap/api/mapcore/util/dg$a;->b:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    const-string/jumbo v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget v4, v0, Lcom/amap/api/mapcore/util/dg$a;->c:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 276
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ef$a;->a:Lcom/amap/api/mapcore/util/ef;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/ef;->a(Lcom/amap/api/mapcore/util/ef;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/amap/api/mapcore/util/ef$a;->a:Lcom/amap/api/mapcore/util/ef;

    iget-boolean v5, v5, Lcom/amap/api/mapcore/util/ef;->c:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ef$a;->d()Z

    move-result v5

    if-nez v5, :cond_2

    .line 278
    iget-object v5, p0, Lcom/amap/api/mapcore/util/ef$a;->a:Lcom/amap/api/mapcore/util/ef;

    invoke-static {v5}, Lcom/amap/api/mapcore/util/ef;->a(Lcom/amap/api/mapcore/util/ef;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 348
    goto :goto_0

    .line 280
    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 291
    :try_start_4
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ef$a;->a:Lcom/amap/api/mapcore/util/ef;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/ef;->b(Lcom/amap/api/mapcore/util/ef;)Lcom/amap/api/mapcore/util/ec;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ef$a;->d()Z

    move-result v2

    if-nez v2, :cond_4

    .line 292
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ef$a;->e()Lcom/amap/api/mapcore/util/dg$a;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ef$a;->a:Lcom/amap/api/mapcore/util/ef;

    .line 293
    invoke-static {v2}, Lcom/amap/api/mapcore/util/ef;->c(Lcom/amap/api/mapcore/util/ef;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 294
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ef$a;->a:Lcom/amap/api/mapcore/util/ef;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/ef;->b(Lcom/amap/api/mapcore/util/ef;)Lcom/amap/api/mapcore/util/ec;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/amap/api/mapcore/util/ec;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 306
    :goto_2
    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ef$a;->d()Z

    move-result v3

    if-nez v3, :cond_3

    .line 307
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ef$a;->e()Lcom/amap/api/mapcore/util/dg$a;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ef$a;->a:Lcom/amap/api/mapcore/util/ef;

    .line 308
    invoke-static {v3}, Lcom/amap/api/mapcore/util/ef;->c(Lcom/amap/api/mapcore/util/ef;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 309
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ef$a;->a:Lcom/amap/api/mapcore/util/ef;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/util/ef;->a(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 321
    :goto_3
    if-eqz v0, :cond_0

    .line 334
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ef$a;->a:Lcom/amap/api/mapcore/util/ef;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/ef;->b(Lcom/amap/api/mapcore/util/ef;)Lcom/amap/api/mapcore/util/ec;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 335
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ef$a;->a:Lcom/amap/api/mapcore/util/ef;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/ef;->b(Lcom/amap/api/mapcore/util/ef;)Lcom/amap/api/mapcore/util/ec;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Lcom/amap/api/mapcore/util/ec;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_3

    :cond_4
    move-object v2, v1

    goto :goto_2
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 243
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/ef$a;->a([Ljava/lang/Boolean;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 359
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ef$a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef$a;->a:Lcom/amap/api/mapcore/util/ef;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ef;->c(Lcom/amap/api/mapcore/util/ef;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    :cond_0
    const/4 p1, 0x0

    .line 363
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ef$a;->e()Lcom/amap/api/mapcore/util/dg$a;

    move-result-object v0

    .line 364
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 369
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/dg$a;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :cond_2
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 243
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/ef$a;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected b(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 378
    invoke-super {p0, p1}, Lcom/amap/api/mapcore/util/dw;->b(Ljava/lang/Object;)V

    .line 379
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef$a;->a:Lcom/amap/api/mapcore/util/ef;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ef;->a(Lcom/amap/api/mapcore/util/ef;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef$a;->a:Lcom/amap/api/mapcore/util/ef;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ef;->a(Lcom/amap/api/mapcore/util/ef;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 243
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/ef$a;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method
