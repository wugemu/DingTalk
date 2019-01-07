.class final Lcom/taobao/artc/internal/ArtcEngineImpl$35;
.super Ljava/lang/Object;
.source "ArtcEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/artc/internal/ArtcEngineImpl;->writeFaceModeltoSdcard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Ljava/io/BufferedInputStream;

.field b:Ljava/io/FileOutputStream;

.field c:Ljava/io/File;

.field d:Ljava/lang/String;

.field final synthetic e:Lcom/taobao/artc/internal/ArtcEngineImpl;


# direct methods
.method constructor <init>(Lcom/taobao/artc/internal/ArtcEngineImpl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    const/4 v0, 0x0

    .line 2481
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->e:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2482
    iput-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;

    .line 2483
    iput-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;

    .line 2484
    iput-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->c:Ljava/io/File;

    .line 2485
    iput-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 2489
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->d:Ljava/lang/String;

    .line 2492
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->e:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1200(Lcom/taobao/artc/internal/ArtcEngineImpl;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string/jumbo v5, "fa68_37v2_0308_5.jpg"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;

    .line 2493
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/fa68_37v2_0308_5.jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->c:Ljava/io/File;

    .line 2494
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->c:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_7

    .line 2495
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->c:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;

    .line 2496
    const/16 v3, 0x830

    new-array v0, v3, [B

    .line 2498
    .local v0, "buffer":[B
    :goto_0
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;

    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    if-eq v2, v7, :cond_6

    .line 2499
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2502
    .end local v0    # "buffer":[B
    .end local v2    # "len":I
    :catch_0
    move-exception v1

    .line 2503
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2505
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_0

    .line 2507
    :try_start_2
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 2508
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 2513
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;

    if-eqz v3, :cond_1

    .line 2515
    :try_start_3
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 2516
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 2525
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    :try_start_4
    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->e:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1200(Lcom/taobao/artc/internal/ArtcEngineImpl;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string/jumbo v5, "fdmodel.jpg"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;

    .line 2526
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/fdmodel.jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->c:Ljava/io/File;

    .line 2527
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->c:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_c

    .line 2528
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->c:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;

    .line 2529
    const/16 v3, 0x830

    new-array v0, v3, [B

    .line 2531
    .restart local v0    # "buffer":[B
    :goto_3
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;

    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    .restart local v2    # "len":I
    if-eq v2, v7, :cond_b

    .line 2532
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 2535
    .end local v0    # "buffer":[B
    .end local v2    # "len":I
    :catch_1
    move-exception v1

    .line 2536
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2538
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_2

    .line 2540
    :try_start_6
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 2541
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b

    .line 2546
    :cond_2
    :goto_4
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;

    if-eqz v3, :cond_3

    .line 2548
    :try_start_7
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 2549
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c

    .line 2558
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :goto_5
    :try_start_8
    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->e:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1200(Lcom/taobao/artc/internal/ArtcEngineImpl;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string/jumbo v5, "ldClassifier.jpg"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;

    .line 2559
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/ldClassifier.jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->c:Ljava/io/File;

    .line 2560
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->c:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_11

    .line 2561
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->c:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;

    .line 2562
    const/16 v3, 0x830

    new-array v0, v3, [B

    .line 2564
    .restart local v0    # "buffer":[B
    :goto_6
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;

    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    .restart local v2    # "len":I
    if-eq v2, v7, :cond_10

    .line 2565
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_6

    .line 2568
    .end local v0    # "buffer":[B
    .end local v2    # "len":I
    :catch_2
    move-exception v1

    .line 2569
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2571
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_4

    .line 2573
    :try_start_a
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 2574
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_11

    .line 2579
    :cond_4
    :goto_7
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;

    if-eqz v3, :cond_5

    .line 2581
    :try_start_b
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 2582
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_12

    .line 2588
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    :goto_8
    const-string/jumbo v3, "ArtcEngineImpl"

    const-string/jumbo v4, "face model file is available now"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2589
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->e:Lcom/taobao/artc/internal/ArtcEngineImpl;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$5402(Lcom/taobao/artc/internal/ArtcEngineImpl;Z)Z

    .line 2590
    return-void

    .line 2500
    .restart local v0    # "buffer":[B
    .restart local v2    # "len":I
    :cond_6
    :try_start_c
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2505
    .end local v0    # "buffer":[B
    .end local v2    # "len":I
    :cond_7
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_8

    .line 2507
    :try_start_d
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 2508
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    .line 2513
    :cond_8
    :goto_9
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;

    if-eqz v3, :cond_1

    .line 2515
    :try_start_e
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 2516
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_2

    .line 2517
    :catch_3
    move-exception v1

    .line 2518
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 2509
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 2510
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 2509
    :catch_5
    move-exception v1

    .line 2510
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 2517
    :catch_6
    move-exception v1

    .line 2518
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 2505
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_9

    .line 2507
    :try_start_f
    iget-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 2508
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    .line 2513
    :cond_9
    :goto_a
    iget-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;

    if-eqz v4, :cond_a

    .line 2515
    :try_start_10
    iget-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 2516
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    .line 2519
    :cond_a
    :goto_b
    throw v3

    .line 2509
    :catch_7
    move-exception v1

    .line 2510
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 2517
    .end local v1    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v1

    .line 2518
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 2533
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v2    # "len":I
    :cond_b
    :try_start_11
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 2538
    .end local v0    # "buffer":[B
    .end local v2    # "len":I
    :cond_c
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_d

    .line 2540
    :try_start_12
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 2541
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    .line 2546
    :cond_d
    :goto_c
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;

    if-eqz v3, :cond_3

    .line 2548
    :try_start_13
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 2549
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    goto/16 :goto_5

    .line 2550
    :catch_9
    move-exception v1

    .line 2551
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 2542
    .end local v1    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v1

    .line 2543
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 2542
    :catch_b
    move-exception v1

    .line 2543
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 2550
    :catch_c
    move-exception v1

    .line 2551
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 2538
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    iget-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_e

    .line 2540
    :try_start_14
    iget-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 2541
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    .line 2546
    :cond_e
    :goto_d
    iget-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;

    if-eqz v4, :cond_f

    .line 2548
    :try_start_15
    iget-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 2549
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e

    .line 2552
    :cond_f
    :goto_e
    throw v3

    .line 2542
    :catch_d
    move-exception v1

    .line 2543
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 2550
    .end local v1    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v1

    .line 2551
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 2566
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v2    # "len":I
    :cond_10
    :try_start_16
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 2571
    .end local v0    # "buffer":[B
    .end local v2    # "len":I
    :cond_11
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_12

    .line 2573
    :try_start_17
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 2574
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_10

    .line 2579
    :cond_12
    :goto_f
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;

    if-eqz v3, :cond_5

    .line 2581
    :try_start_18
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 2582
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_f

    goto/16 :goto_8

    .line 2583
    :catch_f
    move-exception v1

    .line 2584
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 2575
    .end local v1    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v1

    .line 2576
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 2575
    :catch_11
    move-exception v1

    .line 2576
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 2583
    :catch_12
    move-exception v1

    .line 2584
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 2571
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v3

    iget-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_13

    .line 2573
    :try_start_19
    iget-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 2574
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->b:Ljava/io/FileOutputStream;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_13

    .line 2579
    :cond_13
    :goto_10
    iget-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;

    if-eqz v4, :cond_14

    .line 2581
    :try_start_1a
    iget-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 2582
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;->a:Ljava/io/BufferedInputStream;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_14

    .line 2585
    :cond_14
    :goto_11
    throw v3

    .line 2575
    :catch_13
    move-exception v1

    .line 2576
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 2583
    .end local v1    # "e":Ljava/io/IOException;
    :catch_14
    move-exception v1

    .line 2584
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11
.end method
