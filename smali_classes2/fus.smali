.class public final Lfus;
.super Ljava/lang/Object;
.source "CommonVerifyTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfus$a;
    }
.end annotation


# instance fields
.field a:Lfur;

.field b:Ljava/lang/String;

.field c:I

.field volatile d:Lcom/alibaba/android/user/outverify/TaskStatus;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field f:[B

.field g:[B

.field private h:Ljava/lang/String;

.field private i:Lcom/alibaba/doraemon/threadpool/Thread;

.field private final j:I

.field private final k:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B[BJ)V
    .locals 3
    .param p1, "localPath"    # Ljava/lang/String;
    .param p2, "waterMark"    # Ljava/lang/String;
    .param p3, "aesKey"    # [B
    .param p4, "ivParameter"    # [B
    .param p5, "validTimes"    # J

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lezg$e;->color_water_mark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lfus;->j:I

    .line 50
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lfus;->k:I

    .line 53
    iput-object p1, p0, Lfus;->b:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lfus;->h:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lfus;->f:[B

    .line 56
    iput-object p4, p0, Lfus;->g:[B

    .line 57
    const-wide/32 v0, 0xea60

    div-long v0, p5, v0

    long-to-int v0, v0

    iput v0, p0, Lfus;->c:I

    .line 58
    sget-object v0, Lcom/alibaba/android/user/outverify/TaskStatus;->INIT:Lcom/alibaba/android/user/outverify/TaskStatus;

    iput-object v0, p0, Lfus;->d:Lcom/alibaba/android/user/outverify/TaskStatus;

    .line 59
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lfus;->e:Ljava/util/List;

    .line 60
    return-void
.end method

.method static synthetic a(Lfus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lfus;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lfus;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 67
    iget-object v0, p0, Lfus;->d:Lcom/alibaba/android/user/outverify/TaskStatus;

    sget-object v1, Lcom/alibaba/android/user/outverify/TaskStatus;->INIT:Lcom/alibaba/android/user/outverify/TaskStatus;

    if-ne v0, v1, :cond_0

    .line 68
    sget-object v0, Lcom/alibaba/android/user/outverify/TaskStatus;->DOING:Lcom/alibaba/android/user/outverify/TaskStatus;

    iput-object v0, p0, Lfus;->d:Lcom/alibaba/android/user/outverify/TaskStatus;

    .line 69
    const-string/jumbo v0, "user-thread-common-verify"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    iput-object v0, p0, Lfus;->i:Lcom/alibaba/doraemon/threadpool/Thread;

    .line 70
    iget-object v0, p0, Lfus;->i:Lcom/alibaba/doraemon/threadpool/Thread;

    new-instance v1, Lfus$1;

    invoke-direct {v1, p0}, Lfus$1;-><init>(Lfus;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 78
    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 240
    const-string/jumbo v0, "outverify"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[CommonVerifyTask] setError errorCode:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ",errMsg:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    .line 241
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 240
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    sget-object v0, Lcom/alibaba/android/user/outverify/TaskStatus;->DONE:Lcom/alibaba/android/user/outverify/TaskStatus;

    iput-object v0, p0, Lfus;->d:Lcom/alibaba/android/user/outverify/TaskStatus;

    .line 243
    invoke-virtual {p0}, Lfus;->c()V

    .line 244
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfus$2;

    invoke-direct {v1, p0, p1, p2}, Lfus$2;-><init>(Lfus;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 252
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "force"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 81
    iget-object v0, p0, Lfus;->d:Lcom/alibaba/android/user/outverify/TaskStatus;

    sget-object v1, Lcom/alibaba/android/user/outverify/TaskStatus;->DOING:Lcom/alibaba/android/user/outverify/TaskStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lfus;->d:Lcom/alibaba/android/user/outverify/TaskStatus;

    sget-object v1, Lcom/alibaba/android/user/outverify/TaskStatus;->INIT:Lcom/alibaba/android/user/outverify/TaskStatus;

    if-ne v0, v1, :cond_2

    .line 82
    :cond_0
    sget-object v0, Lcom/alibaba/android/user/outverify/TaskStatus;->CANCELED:Lcom/alibaba/android/user/outverify/TaskStatus;

    iput-object v0, p0, Lfus;->d:Lcom/alibaba/android/user/outverify/TaskStatus;

    .line 83
    iget-object v0, p0, Lfus;->i:Lcom/alibaba/doraemon/threadpool/Thread;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lfus;->i:Lcom/alibaba/doraemon/threadpool/Thread;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->cancel(Z)V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lfus;->i:Lcom/alibaba/doraemon/threadpool/Thread;

    .line 87
    :cond_1
    invoke-virtual {p0}, Lfus;->c()V

    .line 89
    :cond_2
    return-void
.end method

.method b()Ljava/lang/String;
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 200
    iget-object v7, p0, Lfus;->h:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 201
    iget-object v0, p0, Lfus;->b:Ljava/lang/String;

    .line 236
    :goto_0
    return-object v0

    .line 203
    :cond_0
    iget-object v7, p0, Lfus;->b:Ljava/lang/String;

    invoke-static {v7}, Lfuu;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 206
    const-string/jumbo v2, ""

    .line 208
    .local v2, "suffix":Ljava/lang/String;
    :try_start_0
    iget v7, p0, Lfus;->k:I

    mul-int/lit8 v7, v7, 0x2

    div-int/lit8 v3, v7, 0x3

    .line 209
    .local v3, "targetSize":I
    iget-object v7, p0, Lfus;->b:Ljava/lang/String;

    invoke-static {v7, v3}, Lhch;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 210
    .local v1, "originalBitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 211
    const/4 v0, 0x0

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-double v8, v7

    const-wide v10, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v8, v10

    iget-object v7, p0, Lfus;->h:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v10

    invoke-virtual {v10}, Lcid;->c()Landroid/app/Application;

    move-result-object v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v10, v11}, Lcms;->c(Landroid/content/Context;F)I

    move-result v10

    mul-int/2addr v7, v10

    int-to-double v10, v7

    div-double/2addr v8, v10

    double-to-int v4, v8

    .line 214
    .local v4, "textDp":I
    if-lez v4, :cond_9

    .line 215
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lfus;->h:Ljava/lang/String;

    iget v9, p0, Lfus;->j:I

    .line 1251
    if-eqz v7, :cond_2

    if-eqz v1, :cond_2

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    if-gez v4, :cond_5

    .line 1252
    :cond_2
    const/4 v6, 0x0

    .line 216
    .local v6, "watermarkBitmap":Landroid/graphics/Bitmap;
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 222
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "watermark-"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lfus;->b:Ljava/lang/String;

    invoke-static {v9}, Lcom/autonavi/amap/mapcore/Md5Utility;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lfuu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1317
    .local v0, "finalFilePath":Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1318
    :cond_3
    const/4 v7, 0x0

    .line 223
    :goto_2
    if-eqz v7, :cond_c

    .line 224
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 230
    .end local v0    # "finalFilePath":Ljava/lang/String;
    .end local v1    # "originalBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "targetSize":I
    .end local v4    # "textDp":I
    .end local v6    # "watermarkBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v5

    .line 231
    .local v5, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 232
    const-string/jumbo v7, "outverify"

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "[CommonVerifyTask] addWaterMark error:"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 233
    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 232
    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .end local v2    # "suffix":Ljava/lang/String;
    .end local v5    # "throwable":Ljava/lang/Throwable;
    :cond_4
    :goto_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1254
    .restart local v1    # "originalBitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "suffix":Ljava/lang/String;
    .restart local v3    # "targetSize":I
    .restart local v4    # "textDp":I
    :cond_5
    :try_start_1
    new-instance v10, Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 1255
    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1256
    int-to-float v9, v4

    invoke-static {v7, v9}, Lcms;->c(Landroid/content/Context;F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1257
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 1258
    const/4 v11, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v10, v8, v11, v12, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1260
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    .line 1261
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v9, v12

    div-int/lit8 v9, v9, 0x2

    .line 1267
    if-eqz v7, :cond_6

    if-eqz v1, :cond_6

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1268
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1270
    :cond_7
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    .line 1272
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1273
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1274
    if-nez v7, :cond_8

    .line 1275
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1277
    :cond_8
    const/4 v12, 0x1

    invoke-virtual {v1, v7, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1278
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1280
    int-to-float v11, v11

    int-to-float v9, v9

    invoke-virtual {v7, v8, v11, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 218
    :cond_9
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 219
    const-string/jumbo v7, "outverify"

    const/4 v8, 0x0

    const-string/jumbo v9, "[CommonVerifyTask] addWaterMark draw fail"

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1320
    .restart local v0    # "finalFilePath":Ljava/lang/String;
    .restart local v6    # "watermarkBitmap":Landroid/graphics/Bitmap;
    :cond_a
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1321
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    .line 1322
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_b

    .line 1323
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 1325
    :cond_b
    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1326
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x50

    invoke-virtual {v6, v7, v9, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1327
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1328
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    .line 1329
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 227
    :cond_c
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 228
    const-string/jumbo v7, "outverify"

    const/4 v8, 0x0

    const-string/jumbo v9, "[CommonVerifyTask] addWaterMark save fail"

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 267
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lfus;->e:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 268
    .local v0, "mPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 269
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Lfuu;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 271
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lfus;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 272
    return-void
.end method
