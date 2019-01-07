.class public Lhah;
.super Ljava/lang/Object;
.source "Compressor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhah$a;,
        Lhah$b;
    }
.end annotation


# static fields
.field protected static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhag;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/Object;

.field private static d:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lhag;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/lang/String;

.field private static f:Lhaf;

.field private static g:Lhah$a;

.field private static h:Z

.field private static i:Z


# instance fields
.field private j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    const-class v0, Lhah;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhah;->b:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lhah;->c:Ljava/lang/Object;

    .line 61
    sput-boolean v1, Lhah;->h:Z

    .line 62
    sput-boolean v1, Lhah;->i:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lhah$1;

    invoke-direct {v0, p0}, Lhah$1;-><init>(Lhah;)V

    iput-object v0, p0, Lhah;->j:Ljava/lang/Runnable;

    .line 72
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lhah;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 1086
    new-instance v0, Lhaf;

    invoke-direct {v0}, Lhaf;-><init>()V

    .line 73
    sput-object v0, Lhah;->f:Lhaf;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lhah;->a:Ljava/util/Map;

    .line 75
    return-void
.end method

.method private static a(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "targetSize"    # I

    .prologue
    const/4 v8, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 422
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v0, v6

    .line 450
    :cond_0
    :goto_0
    return-object v0

    .line 427
    :cond_1
    :try_start_0
    new-instance v2, Lgzt$a;

    invoke-direct {v2}, Lgzt$a;-><init>()V

    .line 428
    .local v2, "options":Lgzt$a;
    const/4 v7, 0x1

    iput-boolean v7, v2, Lgzt$a;->inJustDecodeBounds:Z

    .line 429
    invoke-static {p0, v2}, Lgzt;->a(Ljava/lang/String;Lgzt$a;)Landroid/graphics/Bitmap;

    .line 430
    iget v7, v2, Lgzt$a;->outWidth:I

    if-eq v7, v8, :cond_2

    iget v7, v2, Lgzt$a;->outHeight:I

    if-ne v7, v8, :cond_3

    :cond_2
    move-object v0, v6

    .line 431
    goto :goto_0

    .line 434
    :cond_3
    iget v7, v2, Lgzt$a;->outWidth:I

    if-lt p1, v7, :cond_4

    move v4, v5

    .line 435
    .local v4, "xRate":F
    :goto_1
    iget v7, v2, Lgzt$a;->outHeight:I

    if-lt p1, v7, :cond_5

    .line 436
    .local v5, "yRate":F
    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 437
    .local v3, "rate":F
    const-string/jumbo v7, "photokit"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\u539f\u56fe\uff1a"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v2, Lgzt$a;->outWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lgzt$a;->outHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lgzt$a;->e:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget v7, v2, Lgzt$a;->outWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    iput v7, v2, Lgzt$a;->b:I

    .line 439
    iget v7, v2, Lgzt$a;->outHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    iput v7, v2, Lgzt$a;->c:I

    .line 440
    const/4 v7, 0x0

    iput-boolean v7, v2, Lgzt$a;->inJustDecodeBounds:Z

    .line 441
    invoke-static {p0, v2}, Lgzt;->a(Ljava/lang/String;Lgzt$a;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 442
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 443
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 446
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "options":Lgzt$a;
    .end local v3    # "rate":F
    .end local v4    # "xRate":F
    .end local v5    # "yRate":F
    :catch_0
    move-exception v1

    .line 447
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 448
    const-string/jumbo v7, "photokit"

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 450
    goto/16 :goto_0

    .line 434
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "options":Lgzt$a;
    :cond_4
    int-to-float v7, p1

    :try_start_1
    iget v8, v2, Lgzt$a;->outWidth:I

    int-to-float v8, v8

    div-float v4, v7, v8

    goto :goto_1

    .line 435
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

.method public static a()Lhah;
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lhah$b;->a()Lhah;

    move-result-object v0

    return-object v0
.end method

.method private a(Lhag;Lhah$a;)Ljava/io/File;
    .locals 20
    .param p1, "compressedObject"    # Lhag;
    .param p2, "quality"    # Lhah$a;

    .prologue
    .line 355
    .line 12071
    move-object/from16 v0, p1

    iget-object v9, v0, Lhag;->b:Ljava/lang/String;

    .line 357
    .local v9, "path":Ljava/lang/String;
    move-object/from16 v0, p2

    iget v12, v0, Lhah$a;->b:I

    invoke-static {v9, v12}, Lhah;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 358
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-nez v4, :cond_0

    .line 359
    const/4 v12, 0x0

    .line 402
    :goto_0
    return-object v12

    .line 362
    :cond_0
    const-string/jumbo v12, ".png"

    invoke-virtual {v9, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    .line 363
    .local v6, "isPng":Z
    const/4 v2, 0x0

    .line 365
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    move-object/from16 v0, p2

    iget v12, v0, Lhah$a;->a:F

    invoke-static {v4, v3, v6, v12}, Lhah;->a(Landroid/graphics/Bitmap;Ljava/io/ByteArrayOutputStream;ZF)V

    .line 368
    const-string/jumbo v12, "photokit"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "1\u6b21\u538b\u7f29\uff1a"

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

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget v14, v0, Lhah$a;->a:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v12

    .line 12103
    sget v13, Lhaf;->f:I

    .line 370
    if-le v12, v13, :cond_1

    .line 372
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v12

    int-to-long v12, v12

    .line 13083
    sget v14, Lhaf;->d:F

    .line 14071
    sget v15, Lhaf;->c:F

    .line 14103
    sget v16, Lhaf;->f:I

    .line 12644
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v12, v12, v18

    long-to-float v12, v12

    mul-float/2addr v12, v15

    move/from16 v0, v16

    int-to-float v13, v0

    div-float/2addr v12, v13

    invoke-static {v15, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    sub-float v12, v14, v12

    .line 372
    move-object/from16 v0, p2

    iget v13, v0, Lhah$a;->a:F

    mul-float v7, v12, v13

    .line 373
    .local v7, "newRate":F
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 374
    invoke-static {v4, v3, v6, v7}, Lhah;->a(Landroid/graphics/Bitmap;Ljava/io/ByteArrayOutputStream;ZF)V

    .line 375
    const-string/jumbo v12, "photokit"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "2\u6b21\u538b\u7f29\uff1a"

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

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15083
    .end local v7    # "newRate":F
    :cond_1
    :try_start_2
    move-object/from16 v0, p1

    iget-object v12, v0, Lhag;->c:Ljava/lang/String;

    .line 380
    invoke-static {v12, v3}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v10

    .line 387
    .local v10, "ret":Z
    :goto_1
    :try_start_3
    const-string/jumbo v12, "photokit"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "compressAndScale writeBitmap is ret="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17087
    move-object/from16 v0, p1

    iput-object v4, v0, Lhag;->d:Landroid/graphics/Bitmap;

    .line 389
    if-eqz v10, :cond_2

    new-instance v12, Ljava/io/File;

    .line 18083
    move-object/from16 v0, p1

    iget-object v13, v0, Lhag;->c:Ljava/lang/String;

    .line 389
    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 396
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 398
    :catch_0
    move-exception v5

    .line 399
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 382
    .end local v5    # "e":Ljava/io/IOException;
    .end local v10    # "ret":Z
    :catch_1
    move-exception v12

    .line 16083
    :try_start_5
    move-object/from16 v0, p1

    iget-object v12, v0, Lhag;->c:Ljava/lang/String;

    .line 382
    invoke-static {v12}, Lhah;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 17075
    .local v8, "newUrl":Ljava/lang/String;
    move-object/from16 v0, p1

    iput-object v8, v0, Lhag;->c:Ljava/lang/String;

    .line 384
    invoke-static {v8, v3}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v10

    .restart local v10    # "ret":Z
    goto :goto_1

    .line 389
    .end local v8    # "newUrl":Ljava/lang/String;
    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    .line 390
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "ret":Z
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v11

    .line 391
    .local v11, "t":Ljava/lang/Throwable;
    :goto_3
    :try_start_6
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    .line 392
    const-string/jumbo v12, "photokit"

    invoke-static {v11}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 395
    if-eqz v2, :cond_3

    .line 396
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 402
    :cond_3
    :goto_4
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 398
    :catch_3
    move-exception v5

    .line 399
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 394
    .end local v5    # "e":Ljava/io/IOException;
    .end local v11    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v12

    .line 395
    :goto_5
    if-eqz v2, :cond_4

    .line 396
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 400
    :cond_4
    :goto_6
    throw v12

    .line 398
    :catch_4
    move-exception v5

    .line 399
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 394
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v12

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 390
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_5
    move-exception v11

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3
.end method

.method private static a(Landroid/graphics/Bitmap;Ljava/io/ByteArrayOutputStream;ZF)V
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "os"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "isPng"    # Z
    .param p3, "quality"    # F

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 628
    if-eqz p2, :cond_0

    .line 629
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    mul-float/2addr v1, p3

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 633
    :goto_0
    return-void

    .line 631
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

.method private static a(Lhag;Lcom/alibaba/laiwang/photokit/compress/CompressEventType;)V
    .locals 3
    .param p0, "source"    # Lhag;
    .param p1, "type"    # Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    .prologue
    .line 238
    sget-object v0, Lhah;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Post event type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3071
    iget-object v2, p0, Lhag;->b:Ljava/lang/String;

    .line 238
    invoke-static {v2}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3083
    iget-object v2, p0, Lhag;->c:Ljava/lang/String;

    .line 238
    invoke-static {v2}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance v0, Lhac;

    invoke-direct {v0, p0, p1}, Lhac;-><init>(Lhag;Lcom/alibaba/laiwang/photokit/compress/CompressEventType;)V

    .line 240
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/laiwang/photokit/compress/CompressEventType;)V
    .locals 2
    .param p1, "sourceUrl"    # Ljava/lang/String;
    .param p2, "compressUrl"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 222
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lhah$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lhah$2;-><init>(Lhah;Lcom/alibaba/laiwang/photokit/compress/CompressEventType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 230
    return-void
.end method

.method private static a(F)Z
    .locals 4
    .param p0, "quality"    # F

    .prologue
    .line 782
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 174
    const/4 v2, 0x1

    sput-boolean v2, Lhah;->i:Z

    .line 175
    sget-object v3, Lhah;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 176
    :try_start_0
    sget-object v2, Lhah;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 177
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    sget-object v2, Lhah;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 179
    .local v1, "entrys":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lhag;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 180
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lhag;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhag;

    .line 2122
    iput-object v4, v2, Lhag;->b:Ljava/lang/String;

    .line 2123
    iput-object v4, v2, Lhag;->c:Ljava/lang/String;

    goto :goto_0

    .line 177
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lhag;>;"
    .end local v1    # "entrys":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lhag;>;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 182
    .restart local v1    # "entrys":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lhag;>;>;"
    :cond_0
    sget-object v2, Lhah;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 183
    sget-object v2, Lhah;->b:Ljava/lang/String;

    const-string/jumbo v3, "tryToStop->success"

    invoke-static {v2, v3}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public static c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    sget-object v0, Lhah;->a:Ljava/util/Map;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 12
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v11, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 285
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v2, "originFile":Ljava/io/File;
    invoke-static {p0}, Lhcs;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, "type":Ljava/lang/String;
    invoke-static {v2}, Lhcs;->b(Ljava/io/File;)J

    move-result-wide v4

    .line 289
    .local v4, "originSize":J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gtz v8, :cond_1

    .line 309
    :cond_0
    :goto_0
    return v6

    .line 293
    :cond_1
    const-string/jumbo v8, "gif"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 11095
    sget v8, Lhaf;->e:I

    .line 293
    int-to-long v8, v8

    cmp-long v8, v4, v8

    if-lez v8, :cond_0

    .line 297
    new-instance v1, Lgzt$a;

    invoke-direct {v1}, Lgzt$a;-><init>()V

    .line 298
    .local v1, "options":Lgzt$a;
    iput-boolean v7, v1, Lgzt$a;->inJustDecodeBounds:Z

    .line 300
    :try_start_0
    invoke-static {p0, v1}, Lgzt;->a(Ljava/lang/String;Lgzt$a;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_1
    iget v8, v1, Lgzt$a;->outWidth:I

    if-eq v8, v11, :cond_0

    iget v8, v1, Lgzt$a;->outHeight:I

    if-eq v8, v11, :cond_0

    .line 308
    sget-object v8, Lhah;->b:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " size %d %d:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    iget v11, v1, Lgzt$a;->outWidth:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    iget v11, v1, Lgzt$a;->outHeight:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v8, v9, v10}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    iget v8, v1, Lgzt$a;->outHeight:I

    iget v9, v1, Lgzt$a;->outWidth:I

    mul-int/lit8 v9, v9, 0x2

    if-gt v8, v9, :cond_0

    iget v8, v1, Lgzt$a;->outWidth:I

    iget v9, v1, Lgzt$a;->outHeight:I

    mul-int/lit8 v9, v9, 0x2

    if-gt v8, v9, :cond_0

    move v6, v7

    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 303
    sget-object v8, Lhah;->b:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Get img info err:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 406
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 407
    const/4 v2, 0x0

    .line 418
    :cond_0
    :goto_0
    return-object v2

    .line 410
    :cond_1
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 412
    .local v1, "index":I
    move-object v2, p0

    .line 413
    .local v2, "newPath":Ljava/lang/String;
    if-ltz v1, :cond_0

    .line 414
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "fileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lhah;->b:Ljava/lang/String;

    return-object v0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "file"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 653
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 654
    const/4 v8, 0x0

    .line 686
    :goto_0
    return-object v8

    .line 657
    :cond_0
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 658
    .local v2, "index":I
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lhcs;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 659
    .local v5, "path":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 660
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v7, ""

    .line 661
    .local v7, "type":Ljava/lang/String;
    if-ltz v2, :cond_1

    .line 662
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 663
    .local v6, "tmp":Ljava/lang/String;
    const-string/jumbo v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 664
    .local v1, "dotPos":I
    if-ltz v1, :cond_5

    .line 665
    invoke-virtual {v6, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 666
    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 674
    .end local v1    # "dotPos":I
    .end local v6    # "tmp":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 675
    .local v3, "lowerType":Ljava/lang/String;
    const-string/jumbo v8, ".heic"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, ".heif"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 676
    :cond_2
    const-string/jumbo v7, ".jpeg"

    .line 679
    :cond_3
    sget-object v8, Lhah;->e:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 680
    invoke-static {}, Lhah;->f()V

    .line 683
    :cond_4
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 684
    .local v0, "buffer":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    sget-object v9, Lhah;->e:Ljava/lang/String;

    .line 685
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v9, v10}, Lhv;->c([BI)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/Object;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 686
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 668
    .end local v0    # "buffer":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v3    # "lowerType":Ljava/lang/String;
    .restart local v1    # "dotPos":I
    .restart local v6    # "tmp":Ljava/lang/String;
    :cond_5
    move-object v4, v6

    goto :goto_1
.end method

.method private static f()V
    .locals 7

    .prologue
    .line 722
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 723
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v3, :cond_2

    .line 724
    const/4 v2, 0x0

    .line 726
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    :try_start_0
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 730
    :goto_0
    const/16 v1, 0x78

    .line 731
    .local v1, "level":I
    if-eqz v2, :cond_0

    .line 732
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    .line 733
    sget-object v4, Lhah;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "network level = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lhcn;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lhah;->e:Ljava/lang/String;

    .line 737
    const-string/jumbo v4, "2g"

    sget-object v5, Lhah;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "3g"

    sget-object v5, Lhah;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, -0x46

    if-ge v1, v4, :cond_3

    .line 739
    :cond_1
    const-string/jumbo v4, "3g"

    sput-object v4, Lhah;->e:Ljava/lang/String;

    .line 744
    .end local v1    # "level":I
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_2
    :goto_1
    return-void

    .line 727
    .restart local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :catch_0
    move-exception v0

    .line 728
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 741
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "level":I
    :cond_3
    const-string/jumbo v4, "wifi"

    sput-object v4, Lhah;->e:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;FF)Ljava/lang/String;
    .locals 14
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "rate"    # F
    .param p3, "quality"    # F

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 562
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 563
    invoke-static {}, Lhah;->f()V

    .line 564
    const/4 v3, 0x0

    .line 566
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v8, Lgzt$a;

    invoke-direct {v8}, Lgzt$a;-><init>()V

    .line 567
    .local v8, "options":Lgzt$a;
    const/4 v10, 0x1

    iput-boolean v10, v8, Lgzt$a;->inJustDecodeBounds:Z

    .line 568
    invoke-static {p1, v8}, Lgzt;->a(Ljava/lang/String;Lgzt$a;)Landroid/graphics/Bitmap;

    .line 569
    iget v10, v8, Lgzt$a;->outWidth:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    iget v10, v8, Lgzt$a;->outHeight:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 624
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "options":Lgzt$a;
    .end local p1    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 573
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "options":Lgzt$a;
    .restart local p1    # "path":Ljava/lang/String;
    :cond_1
    iget v10, v8, Lgzt$a;->outWidth:I

    int-to-float v10, v10

    mul-float v10, v10, p2

    float-to-int v10, v10

    iput v10, v8, Lgzt$a;->b:I

    .line 574
    iget v10, v8, Lgzt$a;->outHeight:I

    int-to-float v10, v10

    mul-float v10, v10, p2

    float-to-int v10, v10

    iput v10, v8, Lgzt$a;->c:I

    .line 575
    const/high16 v10, 0x3f800000    # 1.0f

    div-float v10, v10, p2

    float-to-int v10, v10

    iput v10, v8, Lgzt$a;->inSampleSize:I

    .line 576
    const/4 v10, 0x0

    iput-boolean v10, v8, Lgzt$a;->inJustDecodeBounds:Z

    .line 577
    invoke-static {p1, v8}, Lgzt;->a(Ljava/lang/String;Lgzt$a;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 578
    if-eqz v3, :cond_2

    .line 579
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 582
    :cond_2
    const-string/jumbo v10, ".png"

    invoke-virtual {p1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 583
    .local v5, "isPng":Z
    const/4 v1, 0x0

    .line 585
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 586
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    move/from16 v0, p3

    invoke-static {v3, v2, v5, v0}, Lhah;->a(Landroid/graphics/Bitmap;Ljava/io/ByteArrayOutputStream;ZF)V

    .line 588
    invoke-direct {p0, p1}, Lhah;->e(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v7

    .line 591
    .local v7, "newPath":Ljava/lang/String;
    :try_start_3
    invoke-static {v7, v2}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v6

    .line 597
    .local v6, "isSuccess":Z
    :goto_1
    :try_start_4
    const-string/jumbo v10, "photokit"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "compressImageForH5 writeBitmap is ret="

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v11}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 599
    if-eqz v6, :cond_4

    .line 608
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 618
    :goto_2
    if-eqz v3, :cond_3

    .line 619
    invoke-static {v3}, Lgzt;->a(Landroid/graphics/Bitmap;)V

    :cond_3
    move-object p1, v7

    goto :goto_0

    .line 593
    .end local v6    # "isSuccess":Z
    :catch_0
    move-exception v10

    :try_start_6
    invoke-static {v7}, Lhah;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 594
    invoke-static {v7, v2}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v6

    .restart local v6    # "isSuccess":Z
    goto :goto_1

    .line 610
    :catch_1
    move-exception v4

    .line 611
    .local v4, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 615
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "isPng":Z
    .end local v6    # "isSuccess":Z
    .end local v7    # "newPath":Ljava/lang/String;
    .end local v8    # "options":Lgzt$a;
    :catch_2
    move-exception v4

    .line 616
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_8
    const-string/jumbo v10, "photokit"

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 618
    if-eqz v3, :cond_0

    .line 619
    invoke-static {v3}, Lgzt;->a(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 608
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "isPng":Z
    .restart local v6    # "isSuccess":Z
    .restart local v7    # "newPath":Ljava/lang/String;
    .restart local v8    # "options":Lgzt$a;
    :cond_4
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v1, v2

    .line 618
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "isSuccess":Z
    .end local v7    # "newPath":Ljava/lang/String;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_5
    :goto_3
    if-eqz v3, :cond_0

    .line 619
    invoke-static {v3}, Lgzt;->a(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 610
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "isSuccess":Z
    .restart local v7    # "newPath":Ljava/lang/String;
    :catch_3
    move-exception v4

    .line 611
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object v1, v2

    .line 613
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 602
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "isSuccess":Z
    .end local v7    # "newPath":Ljava/lang/String;
    :catch_4
    move-exception v9

    .line 603
    .local v9, "t":Ljava/lang/Throwable;
    :goto_4
    :try_start_b
    const-string/jumbo v10, "photokit"

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 607
    if-eqz v1, :cond_5

    .line 608
    :try_start_c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_3

    .line 610
    :catch_5
    move-exception v4

    .line 611
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_3

    .line 618
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "isPng":Z
    .end local v8    # "options":Lgzt$a;
    .end local v9    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v10

    if-eqz v3, :cond_6

    .line 619
    invoke-static {v3}, Lgzt;->a(Landroid/graphics/Bitmap;)V

    :cond_6
    throw v10

    .line 606
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "isPng":Z
    .restart local v8    # "options":Lgzt$a;
    :catchall_1
    move-exception v10

    .line 607
    :goto_5
    if-eqz v1, :cond_7

    .line 608
    :try_start_e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 612
    :cond_7
    :goto_6
    :try_start_f
    throw v10

    .line 610
    :catch_6
    move-exception v4

    .line 611
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_6

    .line 606
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v10

    move-object v1, v2

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 602
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v9

    move-object v1, v2

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_4
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 91
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0}, Lhah;->a(Ljava/lang/String;F)V

    .line 92
    return-void
.end method

.method public final a(Ljava/lang/String;F)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "quality"    # F

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 101
    sget-object v4, Lhah;->a:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-static {}, Lhah;->f()V

    .line 108
    invoke-static {p1}, Lhah;->c(Ljava/lang/String;)Z

    move-result v2

    .line 110
    .local v2, "isCompress":Z
    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lhah;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "compressUrl":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 112
    sget-object v4, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->FAIL:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    invoke-direct {p0, p1, v0, v4}, Lhah;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/laiwang/photokit/compress/CompressEventType;)V

    goto :goto_0

    .end local v0    # "compressUrl":Ljava/lang/String;
    :cond_2
    move-object v0, p1

    .line 110
    goto :goto_1

    .line 117
    .restart local v0    # "compressUrl":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 119
    sget-object v4, Lhah;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Compress file has exist:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v3, Lhag;

    invoke-direct {v3, p1, v0, p2}, Lhag;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    .line 1107
    .local v3, "object":Lhag;
    iput-boolean v2, v3, Lhag;->a:Z

    .line 122
    sget-object v4, Lhah;->a:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v4, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->COMPLETED:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    invoke-direct {p0, p1, v0, v4}, Lhah;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/laiwang/photokit/compress/CompressEventType;)V

    goto :goto_0

    .line 128
    .end local v3    # "object":Lhag;
    :cond_4
    sget-object v5, Lhah;->c:Ljava/lang/Object;

    monitor-enter v5

    .line 129
    :try_start_0
    new-instance v3, Lhag;

    invoke-direct {v3, p1, v0, p2}, Lhag;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    .line 2107
    .restart local v3    # "object":Lhag;
    iput-boolean v2, v3, Lhag;->a:Z

    .line 131
    sget-object v4, Lhah;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 132
    sget-object v4, Lhah;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "The image is waiting compress:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    monitor-exit v5

    goto/16 :goto_0

    .line 138
    .end local v3    # "object":Lhag;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 135
    .restart local v3    # "object":Lhag;
    :cond_5
    :try_start_1
    sget-object v4, Lhah;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 136
    sget-object v4, Lhah;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Add to queue:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    .end local v0    # "compressUrl":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "isCompress":Z
    .end local v3    # "object":Lhag;
    :cond_6
    const/4 v4, 0x0

    sput-boolean v4, Lhah;->i:Z

    .line 142
    sget-boolean v4, Lhah;->h:Z

    if-nez v4, :cond_0

    sget-object v4, Lhah;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 143
    sget-object v4, Lhah;->b:Ljava/lang/String;

    const/4 v5, 0x1

    sget-object v6, Lcom/alibaba/doraemon/Priority;->HIGH:Lcom/alibaba/doraemon/Priority;

    invoke-static {v4, v5, v6}, Lhcn;->a(Ljava/lang/String;ILcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v4

    iget-object v5, p0, Lhah;->j:Ljava/lang/Runnable;

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    :goto_0
    return v1

    .line 159
    :cond_0
    new-instance v0, Lhag;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lhag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .local v0, "object":Lhag;
    sget-object v2, Lhah;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 161
    :try_start_0
    sget-object v3, Lhah;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    sget-object v1, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->CANCEL:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    invoke-static {v0, v1}, Lhah;->a(Lhag;Lcom/alibaba/laiwang/photokit/compress/CompressEventType;)V

    .line 163
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected final d()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0xa

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 243
    sget-object v3, Lhah;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 244
    const/4 v2, 0x1

    :try_start_0
    sput-boolean v2, Lhah;->h:Z

    .line 245
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :goto_0
    sget-boolean v2, Lhah;->i:Z

    if-nez v2, :cond_7

    sget-object v2, Lhah;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 250
    sget-object v3, Lhah;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 251
    :try_start_1
    sget-object v2, Lhah;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhag;

    .line 252
    .local v0, "compressedObject":Lhag;
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4071
    iget-object v2, v0, Lhag;->b:Ljava/lang/String;

    .line 254
    sget-object v3, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->START:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    invoke-direct {p0, v2, v13, v3}, Lhah;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/laiwang/photokit/compress/CompressEventType;)V

    .line 4271
    new-instance v1, Ljava/io/File;

    .line 5071
    iget-object v2, v0, Lhag;->b:Ljava/lang/String;

    .line 4271
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6071
    iget-object v2, v0, Lhag;->b:Ljava/lang/String;

    .line 4272
    invoke-static {v2}, Lhah;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6750
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    shr-long/2addr v2, v12

    .line 6751
    invoke-static {}, Lcom/alibaba/doraemon/utils/MemoryUtil;->getHeapDalvik()[J

    move-result-object v4

    .line 6752
    sget-object v5, Lhah;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-wide v8, v4, v10

    shr-long/2addr v8, v12

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-wide v8, v4, v10

    div-long/2addr v8, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhcw;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 6753
    aget-wide v4, v4, v10

    div-long v2, v4, v2

    long-to-double v2, v2

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 6754
    new-instance v2, Lhah$3;

    invoke-direct {v2, p0}, Lhah$3;-><init>(Lhah;)V

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7111
    :cond_0
    iget v2, v0, Lhag;->e:F

    .line 7694
    sget-object v3, Lhah;->g:Lhah$a;

    if-nez v3, :cond_1

    .line 7695
    new-instance v3, Lhah$a;

    invoke-direct {v3, p0, v11}, Lhah$a;-><init>(Lhah;B)V

    sput-object v3, Lhah;->g:Lhah$a;

    .line 7698
    :cond_1
    const-string/jumbo v3, "3g"

    sget-object v4, Lhah;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7699
    invoke-static {v2}, Lhah;->a(F)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7700
    sget-object v3, Lhah;->g:Lhah$a;

    iput v2, v3, Lhah$a;->a:F

    .line 7704
    :goto_1
    sget-object v2, Lhah;->g:Lhah$a;

    .line 9047
    sget v3, Lhaf;->a:I

    .line 7704
    iput v3, v2, Lhah$a;->b:I

    .line 7714
    :goto_2
    sget-object v2, Lhah;->g:Lhah$a;

    .line 4274
    invoke-direct {p0, v0, v2}, Lhah;->a(Lhag;Lhah$a;)Ljava/io/File;

    move-result-object v1

    .line 256
    .local v1, "file":Ljava/io/File;
    :cond_2
    if-eqz v1, :cond_6

    .line 257
    sget-object v2, Lhah;->a:Ljava/util/Map;

    .line 10071
    iget-object v3, v0, Lhag;->b:Ljava/lang/String;

    .line 257
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v2, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->COMPLETED:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    invoke-static {v0, v2}, Lhah;->a(Lhag;Lcom/alibaba/laiwang/photokit/compress/CompressEventType;)V

    goto/16 :goto_0

    .line 245
    .end local v0    # "compressedObject":Lhag;
    .end local v1    # "file":Ljava/io/File;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 252
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 7702
    .restart local v0    # "compressedObject":Lhag;
    :cond_3
    sget-object v2, Lhah;->g:Lhah$a;

    .line 8071
    sget v3, Lhaf;->c:F

    .line 7702
    iput v3, v2, Lhah$a;->a:F

    goto :goto_1

    .line 7706
    :cond_4
    invoke-static {v2}, Lhah;->a(F)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 7707
    sget-object v3, Lhah;->g:Lhah$a;

    iput v2, v3, Lhah$a;->a:F

    .line 7711
    :goto_3
    sget-object v2, Lhah;->g:Lhah$a;

    .line 10059
    sget v3, Lhaf;->b:I

    .line 7711
    iput v3, v2, Lhah$a;->b:I

    goto :goto_2

    .line 7709
    :cond_5
    sget-object v2, Lhah;->g:Lhah$a;

    .line 9083
    sget v3, Lhaf;->d:F

    .line 7709
    iput v3, v2, Lhah$a;->a:F

    goto :goto_3

    .line 11071
    .restart local v1    # "file":Ljava/io/File;
    :cond_6
    iget-object v2, v0, Lhag;->b:Ljava/lang/String;

    .line 260
    sget-object v3, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->FAIL:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    invoke-direct {p0, v2, v13, v3}, Lhah;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/laiwang/photokit/compress/CompressEventType;)V

    goto/16 :goto_0

    .line 265
    .end local v0    # "compressedObject":Lhag;
    .end local v1    # "file":Ljava/io/File;
    :cond_7
    sget-object v3, Lhah;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 266
    const/4 v2, 0x0

    :try_start_4
    sput-boolean v2, Lhah;->h:Z

    .line 267
    monitor-exit v3

    return-void

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2
.end method
