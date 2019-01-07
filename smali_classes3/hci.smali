.class public Lhci;
.super Ljava/lang/Object;
.source "PhotoRules.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lhci;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhci;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "targetSize"    # I

    .prologue
    const/4 v8, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 506
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v0, v6

    .line 534
    :cond_0
    :goto_0
    return-object v0

    .line 511
    :cond_1
    :try_start_0
    new-instance v2, Lgzt$a;

    invoke-direct {v2}, Lgzt$a;-><init>()V

    .line 512
    .local v2, "options":Lgzt$a;
    const/4 v7, 0x1

    iput-boolean v7, v2, Lgzt$a;->inJustDecodeBounds:Z

    .line 513
    invoke-static {p0, v2}, Lgzt;->a(Ljava/lang/String;Lgzt$a;)Landroid/graphics/Bitmap;

    .line 514
    iget v7, v2, Lgzt$a;->outWidth:I

    if-eq v7, v8, :cond_2

    iget v7, v2, Lgzt$a;->outHeight:I

    if-ne v7, v8, :cond_3

    :cond_2
    move-object v0, v6

    .line 515
    goto :goto_0

    .line 518
    :cond_3
    iget v7, v2, Lgzt$a;->outWidth:I

    if-lt p1, v7, :cond_4

    move v4, v5

    .line 519
    .local v4, "xRate":F
    :goto_1
    iget v7, v2, Lgzt$a;->outHeight:I

    if-lt p1, v7, :cond_5

    .line 520
    .local v5, "yRate":F
    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 522
    .local v3, "rate":F
    iget v7, v2, Lgzt$a;->outWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    iput v7, v2, Lgzt$a;->b:I

    .line 523
    iget v7, v2, Lgzt$a;->outHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    iput v7, v2, Lgzt$a;->c:I

    .line 524
    const/4 v7, 0x0

    iput-boolean v7, v2, Lgzt$a;->inJustDecodeBounds:Z

    .line 525
    sget-object v7, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl;->b:Landroid/util/TimingLogger;

    const-string/jumbo v8, "compressImageScale inJustDecodeBounds"

    invoke-virtual {v7, v8}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 526
    invoke-static {p0, v2}, Lgzt;->a(Ljava/lang/String;Lgzt$a;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 527
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 528
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 531
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "options":Lgzt$a;
    .end local v3    # "rate":F
    .end local v4    # "xRate":F
    .end local v5    # "yRate":F
    :catch_0
    move-exception v1

    .line 532
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v6

    .line 534
    goto :goto_0

    .line 518
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "options":Lgzt$a;
    :cond_4
    int-to-float v7, p1

    :try_start_1
    iget v8, v2, Lgzt$a;->outWidth:I

    int-to-float v8, v8

    div-float v4, v7, v8

    goto :goto_1

    .line 519
    .restart local v4    # "xRate":F
    :cond_5
    int-to-float v7, p1

    iget v8, v2, Lgzt$a;->outHeight:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    int-to-float v8, v8

    div-float v5, v7, v8

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;F)Ljava/io/File;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "quality"    # F

    .prologue
    const/4 v9, 0x0

    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-object v9

    .line 157
    :cond_1
    const/4 v2, 0x0

    .line 158
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 160
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x0

    :try_start_0
    invoke-static {p1, v8}, Lgzt;->a(Ljava/lang/String;Lgzt$a;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 161
    if-nez v2, :cond_2

    .line 182
    invoke-static {v2}, Lgzt;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 164
    :cond_2
    :try_start_1
    sget-object v8, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl;->b:Landroid/util/TimingLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "compressQualityDefault2 decodeFile "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 164
    invoke-virtual {v8, v10}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 167
    invoke-static {p1}, Lhci;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, "nameString":Ljava/lang/String;
    invoke-static {p0}, Lhcs;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 169
    .local v6, "pathString":Ljava/lang/String;
    const-string/jumbo v8, ".png"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    .line 171
    .local v4, "isPng":Z
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    invoke-static {v2, v1, v4, p2}, Lhci;->a(Landroid/graphics/Bitmap;Ljava/io/ByteArrayOutputStream;ZF)V

    .line 173
    sget-object v8, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl;->b:Landroid/util/TimingLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "bitmap compress "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 175
    invoke-static {v6, v5, v1}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)Z

    move-result v7

    .line 176
    .local v7, "ret":Z
    sget-object v8, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl;->b:Landroid/util/TimingLogger;

    const-string/jumbo v10, "writeBitmap"

    invoke-virtual {v8, v10}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 177
    const-string/jumbo v8, "photokit"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "\u5927\u5c0f\uff1a"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    if-eqz v7, :cond_3

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 182
    :goto_1
    invoke-static {v2}, Lgzt;->a(Landroid/graphics/Bitmap;)V

    .line 185
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    move-object v9, v8

    .line 188
    goto/16 :goto_0

    :cond_3
    move-object v8, v9

    .line 178
    goto :goto_1

    .line 186
    :catch_0
    move-exception v3

    .line 187
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 179
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "isPng":Z
    .end local v5    # "nameString":Ljava/lang/String;
    .end local v6    # "pathString":Ljava/lang/String;
    .end local v7    # "ret":Z
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v3

    .line 180
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 182
    invoke-static {v2}, Lgzt;->a(Landroid/graphics/Bitmap;)V

    .line 183
    if-eqz v0, :cond_0

    .line 185
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 186
    :catch_2
    move-exception v3

    .line 187
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 182
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_4
    invoke-static {v2}, Lgzt;->a(Landroid/graphics/Bitmap;)V

    .line 183
    if-eqz v0, :cond_4

    .line 185
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 188
    :cond_4
    :goto_5
    throw v8

    .line 186
    :catch_3
    move-exception v3

    .line 187
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 182
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "isPng":Z
    .restart local v5    # "nameString":Ljava/lang/String;
    .restart local v6    # "pathString":Ljava/lang/String;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 179
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IF)Ljava/io/File;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "targetSize"    # I
    .param p3, "quality"    # F

    .prologue
    .line 345
    invoke-static/range {p1 .. p2}, Lhci;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 346
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-nez v4, :cond_0

    .line 347
    const/4 v6, 0x0

    .line 388
    :goto_0
    return-object v6

    .line 351
    :cond_0
    invoke-static/range {p1 .. p1}, Lhci;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 352
    .local v8, "nameString":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lhcs;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 353
    .local v10, "pathString":Ljava/lang/String;
    const-string/jumbo v12, ".png"

    invoke-virtual {v8, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    .line 355
    .local v7, "isPng":Z
    const/4 v2, 0x0

    .line 357
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    move/from16 v0, p3

    invoke-static {v4, v3, v7, v0}, Lhci;->a(Landroid/graphics/Bitmap;Ljava/io/ByteArrayOutputStream;ZF)V

    .line 360
    sget-object v12, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl;->b:Landroid/util/TimingLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "compress 1 "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v12

    const v13, 0x3e800

    if-le v12, v13, :cond_1

    .line 365
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v12

    int-to-long v12, v12

    .line 1632
    const/high16 v14, 0x3f400000    # 0.75f

    const v15, 0x3f19999a    # 0.6f

    const v16, 0x3f19999a    # 0.6f

    const-wide/32 v18, 0x3e800

    sub-long v12, v12, v18

    long-to-float v12, v12

    mul-float v12, v12, v16

    const/high16 v13, 0x487a0000    # 256000.0f

    div-float/2addr v12, v13

    invoke-static {v15, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    sub-float v12, v14, v12

    .line 365
    mul-float v9, v12, p3

    .line 366
    .local v9, "newRate":F
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 367
    invoke-static {v4, v3, v7, v9}, Lhci;->a(Landroid/graphics/Bitmap;Ljava/io/ByteArrayOutputStream;ZF)V

    .line 368
    sget-object v12, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl;->b:Landroid/util/TimingLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "compress 2 "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 371
    .end local v9    # "newRate":F
    :cond_1
    invoke-static {v10, v8, v3}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)Z

    move-result v11

    .line 372
    .local v11, "ret":Z
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .local v6, "file":Ljava/io/File;
    sget-object v12, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl;->b:Landroid/util/TimingLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "writeBitmap "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "bitmap "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 374
    const-string/jumbo v12, "photokit"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "\u5927\u5c0f\uff1a"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 375
    if-eqz v11, :cond_2

    .line 380
    .end local v6    # "file":Ljava/io/File;
    :goto_1
    :try_start_2
    invoke-static {v4}, Lgzt;->a(Landroid/graphics/Bitmap;)V

    .line 382
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 384
    :catch_0
    move-exception v5

    .line 385
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 375
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v6    # "file":Ljava/io/File;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 376
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "file":Ljava/io/File;
    .end local v11    # "ret":Z
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v5

    .line 377
    .local v5, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 380
    :try_start_4
    invoke-static {v4}, Lgzt;->a(Landroid/graphics/Bitmap;)V

    .line 381
    if-eqz v2, :cond_3

    .line 382
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 388
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 384
    .restart local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 385
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 379
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 380
    :goto_4
    :try_start_5
    invoke-static {v4}, Lgzt;->a(Landroid/graphics/Bitmap;)V

    .line 381
    if-eqz v2, :cond_4

    .line 382
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 386
    :cond_4
    :goto_5
    throw v12

    .line 384
    :catch_3
    move-exception v5

    .line 385
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 379
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v12

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 376
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v5

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 614
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 615
    const-string/jumbo v4, ""

    .line 622
    :goto_0
    return-object v4

    .line 618
    :cond_0
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, "tmp":Ljava/lang/String;
    const/4 v4, 0x0

    const-string/jumbo v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 621
    .local v2, "type":Ljava/lang/String;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "-"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 622
    .local v3, "uuid":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Bitmap;Ljava/io/ByteArrayOutputStream;ZF)V
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "os"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "isPng"    # Z
    .param p3, "quality"    # F

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 278
    if-eqz p2, :cond_0

    .line 279
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    mul-float/2addr v1, p3

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    mul-float/2addr v1, p3

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0
.end method
