.class final Lhca$8;
.super Ljava/lang/Object;
.source "AlbumModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhca;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lhca;


# direct methods
.method constructor <init>(Lhca;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lhca;

    .prologue
    .line 246
    iput-object p1, p0, Lhca$8;->b:Lhca;

    iput-object p2, p0, Lhca$8;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .prologue
    .line 249
    const-string/jumbo v2, "ALL"

    move-object/from16 v0, p0

    iget-object v3, v0, Lhca$8;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lhca$8;->b:Lhca;

    move-object/from16 v17, v0

    .line 2441
    const/4 v2, 0x0

    .line 2442
    invoke-virtual/range {v17 .. v17}, Lhca;->a()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2443
    new-instance v2, Lhca$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lhca$a;-><init>(B)V

    .line 2444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3222
    iput-wide v4, v2, Lhca$a;->a:J

    .line 3226
    iput-wide v4, v2, Lhca$a;->b:J

    .line 2447
    const-string/jumbo v3, "AlbumModel"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[AlbumModel]"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "startLoadAllImages"

    aput-object v6, v4, v5

    invoke-static {v4}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v2

    .line 2450
    :goto_0
    const-string/jumbo v7, "datetaken DESC"

    .line 2451
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "datetaken"

    aput-object v3, v4, v2

    .line 2457
    const/4 v8, 0x0

    .line 2459
    :try_start_0
    move-object/from16 v0, v17

    iget-object v2, v0, Lhca;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object/from16 v16, v2

    .line 2468
    :goto_1
    if-eqz v14, :cond_0

    .line 2469
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3230
    iput-wide v2, v14, Lhca$a;->c:J

    .line 2470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3234
    iput-wide v2, v14, Lhca$a;->d:J

    .line 2473
    :cond_0
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "_data"

    aput-object v3, v4, v2

    .line 2475
    const-string/jumbo v5, "image_id=?"

    .line 2477
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2478
    if-eqz v16, :cond_7

    .line 2480
    if-eqz v14, :cond_1

    .line 2481
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 4214
    iput v2, v14, Lhca$a;->g:I

    .line 2483
    :cond_1
    :goto_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2485
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2487
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2488
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 2489
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2490
    invoke-virtual {v12}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-eqz v2, :cond_21

    .line 2494
    const/4 v9, 0x0

    .line 2496
    :try_start_2
    move-object/from16 v0, v17

    iget-object v2, v0, Lhca;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 2500
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v7

    const/4 v7, 0x0

    .line 2496
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    move-object v3, v2

    .line 2505
    :goto_3
    if-eqz v3, :cond_23

    .line 2507
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2509
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2510
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 2511
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2512
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-eqz v2, :cond_22

    .line 2519
    :goto_4
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2523
    :goto_5
    new-instance v6, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    const/4 v7, 0x0

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v10

    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-direct/range {v6 .. v13}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;-><init>(ILjava/lang/String;Ljava/lang/String;JJ)V

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2525
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x14

    if-lt v2, v3, :cond_21

    .line 2526
    if-eqz v14, :cond_2

    .line 4246
    iget-wide v2, v14, Lhca$a;->f:J

    .line 2526
    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    .line 2527
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 5242
    iput-wide v2, v14, Lhca$a;->f:J

    .line 2528
    const-string/jumbo v2, "AlbumModel"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "[AlbumModel]"

    aput-object v7, v3, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "endFirstLoadAllImages"

    aput-object v7, v3, v6

    invoke-static {v3}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2530
    :cond_2
    move-object/from16 v0, v17

    iget-object v2, v0, Lhca;->g:Landroid/os/Handler;

    if-eqz v2, :cond_3

    .line 2532
    move-object/from16 v0, v17

    iget-object v2, v0, Lhca;->g:Landroid/os/Handler;

    new-instance v3, Lhca$11;

    move-object/from16 v0, v17

    invoke-direct {v3, v0, v15}, Lhca$11;-><init>(Lhca;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2544
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_6
    move-object v15, v2

    .line 2548
    goto/16 :goto_2

    .line 2465
    :catch_0
    move-exception v2

    .line 2466
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v16, v8

    goto/16 :goto_1

    .line 2502
    :catch_1
    move-exception v2

    .line 2503
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v9

    goto/16 :goto_3

    .line 2519
    :catchall_0
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2572
    :catchall_1
    move-exception v2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v2

    .line 2550
    :cond_4
    :try_start_6
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2551
    if-eqz v14, :cond_5

    .line 5246
    iget-wide v2, v14, Lhca$a;->f:J

    .line 2551
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 2552
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 6242
    iput-wide v2, v14, Lhca$a;->f:J

    .line 2553
    const-string/jumbo v2, "AlbumModel"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[AlbumModel]"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "endFirstLoadAllImages"

    aput-object v5, v3, v4

    invoke-static {v3}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2555
    :cond_5
    move-object/from16 v0, v17

    iget-object v2, v0, Lhca;->g:Landroid/os/Handler;

    if-eqz v2, :cond_6

    .line 2557
    move-object/from16 v0, v17

    iget-object v2, v0, Lhca;->g:Landroid/os/Handler;

    new-instance v3, Lhca$12;

    move-object/from16 v0, v17

    invoke-direct {v3, v0, v15}, Lhca$12;-><init>(Lhca;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2572
    :cond_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 2575
    :cond_7
    if-eqz v14, :cond_8

    .line 2576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 7238
    iput-wide v2, v14, Lhca$a;->e:J

    .line 2578
    :cond_8
    move-object/from16 v0, v17

    iget-object v2, v0, Lhca;->g:Landroid/os/Handler;

    if-eqz v2, :cond_9

    invoke-virtual/range {v17 .. v17}, Lhca;->a()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2579
    move-object/from16 v0, v17

    iget-object v2, v0, Lhca;->g:Landroid/os/Handler;

    new-instance v3, Lhca$13;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Lhca$13;-><init>(Lhca;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2586
    :cond_9
    invoke-virtual/range {v17 .. v17}, Lhca;->a()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2587
    const-string/jumbo v2, "AlbumModel"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[AlbumModel]"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "endLoadAllImages"

    aput-object v5, v3, v4

    invoke-static {v3}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2590
    :cond_a
    invoke-virtual/range {v17 .. v17}, Lhca;->a()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lhca;->a:Z

    if-nez v2, :cond_b

    .line 2591
    const-string/jumbo v2, "AlbumModel"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[AlbumModel]"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "startLoadVideoUseV1"

    aput-object v5, v3, v4

    invoke-static {v3}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2592
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v14}, Lhca;->a(ZLhca$a;)V

    .line 2593
    if-eqz v14, :cond_b

    .line 2594
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 7274
    iput-wide v2, v14, Lhca$a;->n:J

    .line 8166
    if-eqz v14, :cond_b

    .line 8169
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v3

    .line 8170
    const-string/jumbo v4, "speedLevel"

    .line 8306
    iget-wide v6, v14, Lhca$a;->n:J

    iget-wide v8, v14, Lhca$a;->a:J

    sub-long/2addr v6, v8

    .line 8307
    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-gtz v2, :cond_c

    .line 8308
    const-string/jumbo v2, "0"

    .line 8170
    :goto_7
    invoke-virtual {v3, v4, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 8171
    const-string/jumbo v4, "imgCountLevel"

    .line 8325
    iget v2, v14, Lhca$a;->g:I

    if-gtz v2, :cond_12

    .line 8326
    const-string/jumbo v2, "0"

    .line 8171
    :goto_8
    invoke-virtual {v3, v4, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 8172
    const-string/jumbo v4, "videoCountLevel"

    .line 8345
    iget v2, v14, Lhca$a;->m:I

    if-gtz v2, :cond_19

    .line 8346
    const-string/jumbo v2, "0"

    .line 8172
    :goto_9
    invoke-virtual {v3, v4, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 8174
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v2

    .line 8175
    const-string/jumbo v4, "pvTotalTime"

    .line 9302
    iget-wide v6, v14, Lhca$a;->n:J

    iget-wide v8, v14, Lhca$a;->a:J

    sub-long/2addr v6, v8

    .line 8176
    long-to-double v6, v6

    invoke-static {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v5

    .line 8175
    invoke-virtual {v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 8177
    const-string/jumbo v4, "pvFolderImageTime"

    .line 10278
    iget-wide v6, v14, Lhca$a;->c:J

    iget-wide v8, v14, Lhca$a;->b:J

    sub-long/2addr v6, v8

    .line 8178
    long-to-double v6, v6

    invoke-static {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v5

    .line 8177
    invoke-virtual {v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 8179
    const-string/jumbo v4, "pvImageThumbTime"

    .line 10282
    iget-wide v6, v14, Lhca$a;->e:J

    iget-wide v8, v14, Lhca$a;->d:J

    sub-long/2addr v6, v8

    .line 8180
    long-to-double v6, v6

    invoke-static {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v5

    .line 8179
    invoke-virtual {v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 8181
    const-string/jumbo v4, "pvImageFirstShowTime"

    .line 10286
    iget-wide v6, v14, Lhca$a;->f:J

    iget-wide v8, v14, Lhca$a;->b:J

    sub-long/2addr v6, v8

    .line 8182
    long-to-double v6, v6

    invoke-static {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v5

    .line 8181
    invoke-virtual {v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 8183
    const-string/jumbo v4, "pvVideoTime"

    .line 10290
    iget-wide v6, v14, Lhca$a;->i:J

    iget-wide v8, v14, Lhca$a;->h:J

    sub-long/2addr v6, v8

    .line 8184
    long-to-double v6, v6

    invoke-static {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v5

    .line 8183
    invoke-virtual {v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 8185
    const-string/jumbo v4, "pvVideoThumbTime"

    .line 10294
    iget-wide v6, v14, Lhca$a;->k:J

    iget-wide v8, v14, Lhca$a;->j:J

    sub-long/2addr v6, v8

    .line 8186
    long-to-double v6, v6

    invoke-static {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v5

    .line 8185
    invoke-virtual {v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 8187
    const-string/jumbo v4, "pvVideoFirstShowTime"

    .line 10298
    iget-wide v6, v14, Lhca$a;->l:J

    iget-wide v8, v14, Lhca$a;->h:J

    sub-long/2addr v6, v8

    .line 8188
    long-to-double v6, v6

    invoke-static {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v5

    .line 8187
    invoke-virtual {v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 8189
    move-object/from16 v0, v17

    iget-object v4, v0, Lhca;->i:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v5, "photokit"

    const-string/jumbo v6, "pkLoadPv2"

    invoke-interface {v4, v5, v6, v3, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 259
    :cond_b
    :goto_a
    return-void

    .line 8309
    :cond_c
    const-wide/16 v8, 0x1f4

    cmp-long v2, v6, v8

    if-gtz v2, :cond_d

    .line 8310
    const-string/jumbo v2, "1"

    goto/16 :goto_7

    .line 8311
    :cond_d
    const-wide/16 v8, 0x3e8

    cmp-long v2, v6, v8

    if-gtz v2, :cond_e

    .line 8312
    const-string/jumbo v2, "2"

    goto/16 :goto_7

    .line 8313
    :cond_e
    const-wide/16 v8, 0x7d0

    cmp-long v2, v6, v8

    if-gtz v2, :cond_f

    .line 8314
    const-string/jumbo v2, "3"

    goto/16 :goto_7

    .line 8315
    :cond_f
    const-wide/16 v8, 0x1388

    cmp-long v2, v6, v8

    if-gtz v2, :cond_10

    .line 8316
    const-string/jumbo v2, "4"

    goto/16 :goto_7

    .line 8317
    :cond_10
    const-wide/16 v8, 0x2710

    cmp-long v2, v6, v8

    if-gtz v2, :cond_11

    .line 8318
    const-string/jumbo v2, "5"

    goto/16 :goto_7

    .line 8320
    :cond_11
    const-string/jumbo v2, "6"

    goto/16 :goto_7

    .line 8327
    :cond_12
    iget v2, v14, Lhca$a;->g:I

    const/16 v5, 0x64

    if-gt v2, v5, :cond_13

    .line 8328
    const-string/jumbo v2, "1"

    goto/16 :goto_8

    .line 8329
    :cond_13
    iget v2, v14, Lhca$a;->g:I

    const/16 v5, 0xc8

    if-gt v2, v5, :cond_14

    .line 8330
    const-string/jumbo v2, "2"

    goto/16 :goto_8

    .line 8331
    :cond_14
    iget v2, v14, Lhca$a;->g:I

    const/16 v5, 0x12c

    if-gt v2, v5, :cond_15

    .line 8332
    const-string/jumbo v2, "3"

    goto/16 :goto_8

    .line 8333
    :cond_15
    iget v2, v14, Lhca$a;->g:I

    const/16 v5, 0x1f4

    if-gt v2, v5, :cond_16

    .line 8334
    const-string/jumbo v2, "4"

    goto/16 :goto_8

    .line 8335
    :cond_16
    iget v2, v14, Lhca$a;->g:I

    const/16 v5, 0x3e8

    if-gt v2, v5, :cond_17

    .line 8336
    const-string/jumbo v2, "5"

    goto/16 :goto_8

    .line 8337
    :cond_17
    iget v2, v14, Lhca$a;->g:I

    const/16 v5, 0x7d0

    if-gt v2, v5, :cond_18

    .line 8338
    const-string/jumbo v2, "6"

    goto/16 :goto_8

    .line 8340
    :cond_18
    const-string/jumbo v2, "7"

    goto/16 :goto_8

    .line 8347
    :cond_19
    iget v2, v14, Lhca$a;->m:I

    const/16 v5, 0x14

    if-gt v2, v5, :cond_1a

    .line 8348
    const-string/jumbo v2, "1"

    goto/16 :goto_9

    .line 8349
    :cond_1a
    iget v2, v14, Lhca$a;->m:I

    const/16 v5, 0x28

    if-gt v2, v5, :cond_1b

    .line 8350
    const-string/jumbo v2, "2"

    goto/16 :goto_9

    .line 8351
    :cond_1b
    iget v2, v14, Lhca$a;->m:I

    const/16 v5, 0x3c

    if-gt v2, v5, :cond_1c

    .line 8352
    const-string/jumbo v2, "3"

    goto/16 :goto_9

    .line 8353
    :cond_1c
    iget v2, v14, Lhca$a;->m:I

    const/16 v5, 0x50

    if-gt v2, v5, :cond_1d

    .line 8354
    const-string/jumbo v2, "4"

    goto/16 :goto_9

    .line 8355
    :cond_1d
    iget v2, v14, Lhca$a;->m:I

    const/16 v5, 0x64

    if-gt v2, v5, :cond_1e

    .line 8356
    const-string/jumbo v2, "5"

    goto/16 :goto_9

    .line 8358
    :cond_1e
    const-string/jumbo v2, "6"

    goto/16 :goto_9

    .line 252
    :cond_1f
    const-string/jumbo v2, "ALL_VIDEO"

    move-object/from16 v0, p0

    iget-object v3, v0, Lhca$8;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lhca$8;->b:Lhca;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lhca;->a(Lhca;ZLhca$a;)V

    goto/16 :goto_a

    .line 257
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lhca$8;->b:Lhca;

    move-object/from16 v0, p0

    iget-object v3, v0, Lhca$8;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lhca;->a(Lhca;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_21
    move-object v2, v15

    goto/16 :goto_6

    :cond_22
    move-object v9, v8

    goto/16 :goto_4

    :cond_23
    move-object v9, v8

    goto/16 :goto_5

    :cond_24
    move-object v14, v2

    goto/16 :goto_0
.end method
