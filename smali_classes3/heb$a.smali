.class final Lheb$a;
.super Lheb$c;
.source "PhotoDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lheb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lheb;

.field private d:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lheb;Lheb$b;Landroid/app/Activity;Ljava/io/InputStream;)V
    .locals 0
    .param p2, "runnable"    # Lheb$b;
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "qrInputStream"    # Ljava/io/InputStream;

    .prologue
    .line 279
    iput-object p1, p0, Lheb$a;->a:Lheb;

    .line 280
    invoke-direct {p0, p1, p2, p3}, Lheb$c;-><init>(Lheb;Lheb$b;Landroid/app/Activity;)V

    .line 281
    iput-object p4, p0, Lheb$a;->d:Ljava/io/InputStream;

    .line 282
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/16 v10, 0x17

    .line 286
    iget-object v6, p0, Lheb$a;->d:Ljava/io/InputStream;

    if-nez v6, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    const/4 v3, 0x0

    .line 293
    .local v3, "qrBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v6, p0, Lheb$a;->a:Lheb;

    .line 1040
    iget-object v7, v6, Lheb;->d:Ljava/lang/Object;

    .line 293
    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 294
    :try_start_1
    iget-object v6, p0, Lheb$a;->a:Lheb;

    .line 2040
    iget-object v6, v6, Lheb;->b:Landroid/graphics/Bitmap;

    .line 294
    if-eqz v6, :cond_2

    iget-object v6, p0, Lheb$a;->a:Lheb;

    .line 3040
    iget-object v6, v6, Lheb;->b:Landroid/graphics/Bitmap;

    .line 294
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 295
    :cond_2
    iget-object v6, p0, Lheb$a;->a:Lheb;

    iget-object v8, p0, Lheb$a;->d:Ljava/io/InputStream;

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 4040
    iput-object v8, v6, Lheb;->b:Landroid/graphics/Bitmap;

    .line 297
    :cond_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    :try_start_2
    iget-object v6, p0, Lheb$a;->a:Lheb;

    .line 5040
    iget-object v6, v6, Lheb;->b:Landroid/graphics/Bitmap;

    .line 299
    if-eqz v6, :cond_4

    iget-object v6, p0, Lheb$a;->a:Lheb;

    .line 6040
    iget-object v6, v6, Lheb;->b:Landroid/graphics/Bitmap;

    .line 299
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_4

    .line 301
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v10, :cond_4

    .line 302
    iget-object v6, p0, Lheb$a;->a:Lheb;

    .line 7040
    iget-object v6, v6, Lheb;->b:Landroid/graphics/Bitmap;

    .line 302
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 303
    .local v1, "bw":I
    iget-object v6, p0, Lheb$a;->a:Lheb;

    .line 8040
    iget-object v6, v6, Lheb;->b:Landroid/graphics/Bitmap;

    .line 303
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 304
    .local v0, "bh":I
    iget-object v6, p0, Lheb$a;->a:Lheb;

    invoke-static {v6}, Lheb;->q(Lheb;)Landroid/app/Activity;

    move-result-object v6

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v6, v1, v0, v7}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Landroid/content/Context;IIF)I

    move-result v5

    .line 305
    .local v5, "sample":I
    if-le v5, v9, :cond_6

    .line 306
    iget-object v6, p0, Lheb$a;->a:Lheb;

    .line 9040
    iget-object v6, v6, Lheb;->b:Landroid/graphics/Bitmap;

    .line 306
    div-int v7, v1, v5

    div-int v8, v0, v5

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 312
    .end local v0    # "bh":I
    .end local v1    # "bw":I
    .end local v5    # "sample":I
    :cond_4
    :goto_1
    invoke-static {}, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;->a()Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;->a(Landroid/graphics/Bitmap;)Ljava/lang/Object;

    move-result-object v4

    .line 314
    .local v4, "result":Ljava/lang/Object;
    if-eqz v4, :cond_5

    .line 315
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v6

    new-instance v7, Lheb$a$1;

    invoke-direct {v7, p0, v4}, Lheb$a$1;-><init>(Lheb$a;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 331
    :cond_5
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v10, :cond_0

    if-eqz v3, :cond_0

    .line 332
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 297
    .end local v4    # "result":Ljava/lang/Object;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 324
    :catch_0
    move-exception v2

    .line 325
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    :try_start_5
    const-string/jumbo v6, "lightapp"

    const-string/jumbo v7, "PhotoDelegate"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "CheckItemForQRCodeThreadTask OutOfMemoryError"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 331
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v10, :cond_0

    if-eqz v3, :cond_0

    .line 332
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 308
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v0    # "bh":I
    .restart local v1    # "bw":I
    .restart local v5    # "sample":I
    :cond_6
    :try_start_6
    iget-object v6, p0, Lheb$a;->a:Lheb;

    .line 10040
    iget-object v6, v6, Lheb;->b:Landroid/graphics/Bitmap;

    .line 308
    iget-object v7, p0, Lheb$a;->a:Lheb;

    .line 11040
    iget-object v7, v7, Lheb;->b:Landroid/graphics/Bitmap;

    .line 308
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v3

    goto :goto_1

    .line 327
    .end local v0    # "bh":I
    .end local v1    # "bw":I
    .end local v5    # "sample":I
    :catch_1
    move-exception v2

    .line 328
    .local v2, "e":Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v6, "lightapp"

    const-string/jumbo v7, "PhotoDelegate"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "CheckItemForQRCodeThreadTask exception"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 331
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v10, :cond_0

    if-eqz v3, :cond_0

    .line 332
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 331
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v10, :cond_7

    if-eqz v3, :cond_7

    .line 332
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    throw v6
.end method
