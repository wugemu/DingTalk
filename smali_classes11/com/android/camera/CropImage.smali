.class public Lcom/android/camera/CropImage;
.super Lcom/android/camera/MonitoredActivity;
.source "CropImage.java"


# instance fields
.field a:Z

.field b:Lcom/android/camera/HighlightRectangle;

.field c:Ljava/lang/Runnable;

.field private e:Landroid/graphics/Bitmap$CompressFormat;

.field private f:Landroid/net/Uri;

.field private g:Z

.field private h:I

.field private i:I

.field private final j:Landroid/os/Handler;

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Lcom/android/camera/CropImageView;

.field private q:Landroid/content/ContentResolver;

.field private r:Landroid/graphics/Bitmap;

.field private s:Live;

.field private t:Livd;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/android/camera/MonitoredActivity;-><init>()V

    .line 75
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/android/camera/CropImage;->e:Landroid/graphics/Bitmap$CompressFormat;

    .line 77
    iput-object v1, p0, Lcom/android/camera/CropImage;->f:Landroid/net/Uri;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CropImage;->g:Z

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CropImage;->j:Landroid/os/Handler;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CropImage;->n:Z

    .line 89
    iput-object v1, p0, Lcom/android/camera/CropImage;->o:Ljava/lang/String;

    .line 451
    new-instance v0, Lcom/android/camera/CropImage$7;

    invoke-direct {v0, p0}, Lcom/android/camera/CropImage$7;-><init>(Lcom/android/camera/CropImage;)V

    iput-object v0, p0, Lcom/android/camera/CropImage;->c:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/android/camera/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CropImage;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/CropImage;->r:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/android/camera/CropImage;)V
    .locals 13
    .param p0, "x0"    # Lcom/android/camera/CropImage;

    .prologue
    const v12, 0x3f666666    # 0.9f

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 53
    .line 1233
    iget-object v0, p0, Lcom/android/camera/CropImage;->b:Lcom/android/camera/HighlightRectangle;

    if-eqz v0, :cond_2

    .line 1237
    iget-boolean v0, p0, Lcom/android/camera/CropImage;->a:Z

    if-nez v0, :cond_2

    .line 1238
    iput-boolean v6, p0, Lcom/android/camera/CropImage;->a:Z

    .line 1244
    iget v0, p0, Lcom/android/camera/CropImage;->k:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/CropImage;->l:I

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/CropImage;->m:Z

    if-nez v0, :cond_3

    .line 1247
    iget v0, p0, Lcom/android/camera/CropImage;->k:I

    iget v2, p0, Lcom/android/camera/CropImage;->l:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1249
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1251
    iget-object v3, p0, Lcom/android/camera/CropImage;->b:Lcom/android/camera/HighlightRectangle;

    invoke-virtual {v3}, Lcom/android/camera/HighlightRectangle;->a()Landroid/graphics/Rect;

    move-result-object v3

    .line 1252
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/camera/CropImage;->k:I

    iget v8, p0, Lcom/android/camera/CropImage;->l:I

    invoke-direct {v4, v1, v1, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1254
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v5, v8

    div-int/lit8 v5, v5, 0x2

    .line 1255
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    .line 1258
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Rect;->inset(II)V

    .line 1261
    neg-int v5, v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    neg-int v8, v8

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v4, v5, v8}, Landroid/graphics/Rect;->inset(II)V

    .line 1264
    iget-object v5, p0, Lcom/android/camera/CropImage;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5, v3, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1267
    iget-object v2, p0, Lcom/android/camera/CropImage;->p:Lcom/android/camera/CropImageView;

    invoke-virtual {v2}, Lcom/android/camera/CropImageView;->a()V

    .line 1268
    iget-object v2, p0, Lcom/android/camera/CropImage;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v2, v0

    .line 1295
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CropImage;->p:Lcom/android/camera/CropImageView;

    invoke-virtual {v0, v2, v6}, Lcom/android/camera/CropImageView;->a(Landroid/graphics/Bitmap;Z)V

    .line 1296
    iget-object v0, p0, Lcom/android/camera/CropImage;->p:Lcom/android/camera/CropImageView;

    invoke-virtual {v0, v6, v6}, Lcom/android/camera/CropImageView;->a(ZZ)V

    .line 1297
    iget-object v0, p0, Lcom/android/camera/CropImage;->p:Lcom/android/camera/CropImageView;

    iget-object v0, v0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1300
    const-string/jumbo v0, "TRACE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/trace/Trace;

    .line 1301
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 1302
    const-class v4, Lcom/android/camera/CropImage;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v4, v3, v1}, Lcom/alibaba/doraemon/trace/Trace;->startTrace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1304
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1305
    if-eqz v1, :cond_13

    const-string/jumbo v3, "data"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "return-data"

    const/4 v4, 0x0

    .line 1306
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1307
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1308
    invoke-virtual {p0}, Lcom/android/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "return-data-file-name"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1309
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "crop image file name:"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    aput-object v1, v6, v8

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V

    .line 1310
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-eqz v3, :cond_12

    .line 1313
    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    const/4 v5, 0x0

    .line 1314
    invoke-virtual {p0, v1, v5}, Lcom/android/camera/CropImage;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1315
    :try_start_2
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v2, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1316
    const-string/jumbo v2, "file-data"

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "crop image process success file:"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1323
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1324
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1333
    :cond_1
    :goto_1
    const/4 v1, -0x1

    :try_start_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "inline-data"

    .line 1334
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 1333
    invoke-virtual {p0, v1, v2}, Lcom/android/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 1335
    invoke-virtual {p0}, Lcom/android/camera/CropImage;->finish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1350
    :goto_2
    if-eqz v0, :cond_2

    .line 1351
    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    :cond_2
    return-void

    .line 1270
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CropImage;->b:Lcom/android/camera/HighlightRectangle;

    invoke-virtual {v0}, Lcom/android/camera/HighlightRectangle;->a()Landroid/graphics/Rect;

    move-result-object v4

    .line 1273
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-gtz v0, :cond_6

    move v2, v6

    .line 1274
    :goto_3
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_7

    move v3, v6

    .line 1278
    :goto_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1280
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1281
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1282
    iget-object v2, p0, Lcom/android/camera/CropImage;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v2, v4, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1285
    iget-object v2, p0, Lcom/android/camera/CropImage;->p:Lcom/android/camera/CropImageView;

    invoke-virtual {v2}, Lcom/android/camera/CropImageView;->a()V

    .line 1286
    iget-object v2, p0, Lcom/android/camera/CropImage;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1289
    iget v2, p0, Lcom/android/camera/CropImage;->k:I

    if-eqz v2, :cond_15

    iget v2, p0, Lcom/android/camera/CropImage;->l:I

    if-eqz v2, :cond_15

    iget-boolean v2, p0, Lcom/android/camera/CropImage;->m:Z

    if-eqz v2, :cond_15

    .line 1290
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget v8, p0, Lcom/android/camera/CropImage;->k:I

    iget v9, p0, Lcom/android/camera/CropImage;->l:I

    iget-boolean v2, p0, Lcom/android/camera/CropImage;->n:Z

    .line 2193
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, v8

    .line 2194
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v9

    .line 2195
    if-nez v2, :cond_8

    if-ltz v3, :cond_4

    if-gez v4, :cond_8

    .line 2202
    :cond_4
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2204
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2206
    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2207
    div-int/lit8 v4, v4, 0x2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2208
    new-instance v10, Landroid/graphics/Rect;

    .line 2211
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/2addr v11, v3

    .line 2212
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-static {v9, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    add-int/2addr v12, v4

    invoke-direct {v10, v3, v4, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2213
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, v8, v3

    div-int/lit8 v3, v3, 0x2

    .line 2214
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v4, v9, v4

    div-int/lit8 v4, v4, 0x2

    .line 2215
    new-instance v11, Landroid/graphics/Rect;

    sub-int/2addr v8, v3

    sub-int/2addr v9, v4

    invoke-direct {v11, v3, v4, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2220
    invoke-virtual {v5, v0, v10, v11, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2222
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v2

    :cond_5
    :goto_5
    move-object v2, v0

    .line 1290
    goto/16 :goto_0

    .line 1273
    :cond_6
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    move v2, v0

    goto/16 :goto_3

    .line 1274
    :cond_7
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    move v3, v0

    goto/16 :goto_4

    .line 2226
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 2227
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 2229
    div-float v4, v2, v3

    .line 2230
    int-to-float v10, v8

    int-to-float v11, v9

    div-float/2addr v10, v11

    .line 2232
    cmpl-float v4, v4, v10

    if-lez v4, :cond_c

    .line 2233
    int-to-float v2, v9

    div-float/2addr v2, v3

    .line 2234
    cmpg-float v3, v2, v12

    if-ltz v3, :cond_9

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_b

    .line 2235
    :cond_9
    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 2249
    :goto_6
    if-eqz v5, :cond_f

    .line 2252
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    .line 2251
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2257
    :goto_7
    if-eq v2, v0, :cond_a

    .line 2258
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2261
    :cond_a
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2262
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, v9

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2264
    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2271
    if-eq v0, v2, :cond_5

    .line 2273
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_5

    :cond_b
    move-object v5, v7

    .line 2239
    goto :goto_6

    .line 2240
    :cond_c
    int-to-float v3, v8

    div-float v2, v3, v2

    .line 2241
    cmpg-float v3, v2, v12

    if-ltz v3, :cond_d

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_e

    .line 2242
    :cond_d
    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_6

    :cond_e
    move-object v5, v7

    .line 2244
    goto :goto_6

    :cond_f
    move-object v2, v0

    .line 2254
    goto :goto_7

    .line 1318
    :catch_0
    move-exception v1

    move-object v2, v7

    .line 1319
    :goto_8
    const/4 v3, 0x1

    :try_start_5
    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "crop image exception"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1322
    if-eqz v2, :cond_1

    .line 1323
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1324
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_1

    .line 1328
    :catch_1
    move-exception v1

    goto/16 :goto_1

    .line 1321
    :catchall_0
    move-exception v1

    move-object v3, v7

    .line 1322
    :goto_9
    if-eqz v3, :cond_10

    .line 1323
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1324
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1327
    :cond_10
    :goto_a
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1350
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_11

    .line 1351
    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    :cond_11
    throw v1

    .line 1330
    :cond_12
    const/4 v1, 0x1

    :try_start_9
    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "crop image file name is empty"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V

    .line 1331
    const-string/jumbo v1, "data"

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_1

    .line 1338
    :cond_13
    iget-boolean v1, p0, Lcom/android/camera/CropImage;->g:Z

    if-eqz v1, :cond_14

    sget v1, Lcig$j;->wallpaper:I

    .line 1342
    :goto_b
    invoke-virtual {p0}, Lcom/android/camera/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/android/camera/CropImage$5;

    invoke-direct {v3, p0, v2}, Lcom/android/camera/CropImage$5;-><init>(Lcom/android/camera/CropImage;Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/camera/CropImage;->j:Landroid/os/Handler;

    .line 2454
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p0, v4, v1, v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v1

    .line 2456
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Liva$a;

    invoke-direct {v5, p0, v3, v1, v2}, Liva$a;-><init>(Lcom/android/camera/MonitoredActivity;Ljava/lang/Runnable;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;Landroid/os/Handler;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 1338
    :cond_14
    sget v1, Lcig$j;->saving_image:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_b

    :catch_2
    move-exception v2

    goto :goto_a

    .line 1321
    :catchall_2
    move-exception v1

    goto :goto_9

    :catchall_3
    move-exception v1

    move-object v3, v2

    goto :goto_9

    .line 1318
    :catch_3
    move-exception v1

    move-object v2, v3

    goto/16 :goto_8

    .line 1328
    :catch_4
    move-exception v1

    goto/16 :goto_1

    :cond_15
    move-object v2, v0

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/android/camera/CropImage;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CropImage;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/CropImage;->r:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic b(Lcom/android/camera/CropImage;Landroid/graphics/Bitmap;)V
    .locals 12
    .param p0, "x0"    # Lcom/android/camera/CropImage;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 53
    .line 3357
    iget-object v2, p0, Lcom/android/camera/CropImage;->f:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 3360
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CropImage;->q:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/camera/CropImage;->f:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3361
    if-eqz v0, :cond_0

    .line 3362
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/CropImage;->e:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x4b

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3366
    :cond_0
    invoke-static {v0}, Liva;->a(Ljava/io/Closeable;)V

    .line 3368
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3369
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/camera/CropImage;->f:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3370
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 3369
    invoke-virtual {p0, v3, v0}, Lcom/android/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 3423
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CropImage;->j:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/CropImage$6;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/CropImage$6;-><init>(Lcom/android/camera/CropImage;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3430
    invoke-virtual {p0}, Lcom/android/camera/CropImage;->finish()V

    .line 53
    return-void

    .line 3366
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    invoke-static {v0}, Liva;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Liva;->a(Ljava/io/Closeable;)V

    throw v0

    .line 3371
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/CropImage;->g:Z

    if-eqz v1, :cond_2

    .line 3373
    :try_start_2
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3374
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/CropImage;->setResult(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 3376
    :catch_1
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/android/camera/CropImage;->setResult(I)V

    goto :goto_1

    .line 3379
    :cond_2
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3380
    const-string/jumbo v1, "rect"

    iget-object v2, p0, Lcom/android/camera/CropImage;->b:Lcom/android/camera/HighlightRectangle;

    invoke-virtual {v2}, Lcom/android/camera/HighlightRectangle;->a()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3382
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/camera/CropImage;->t:Livd;

    invoke-interface {v2}, Livd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3383
    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3386
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3387
    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 3392
    :goto_4
    add-int/lit8 v6, v0, 0x1

    .line 3393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3395
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 3396
    if-eqz v0, :cond_3

    move v0, v6

    .line 3399
    goto :goto_4

    .line 3402
    :cond_3
    const/4 v0, 0x1

    :try_start_3
    new-array v9, v0, [I

    .line 3403
    iget-object v0, p0, Lcom/android/camera/CropImage;->q:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/CropImage;->t:Livd;

    .line 3405
    invoke-interface {v1}, Livd;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CropImage;->t:Livd;

    .line 3406
    invoke-interface {v2}, Livd;->b()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 3409
    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v7, p1

    .line 3403
    invoke-static/range {v0 .. v9}, Lcom/android/camera/ImageManager;->a(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;

    move-result-object v0

    .line 3413
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3414
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3415
    invoke-virtual {v0, v10}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 3413
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/CropImage;->setResult(ILandroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_1

    .line 3366
    :catchall_1
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_3

    :catch_3
    move-exception v1

    goto/16 :goto_2
.end method

.method static synthetic c(Lcom/android/camera/CropImage;)Lcom/android/camera/CropImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CropImage;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/CropImage;->p:Lcom/android/camera/CropImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/android/camera/CropImage;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CropImage;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/camera/CropImage;->h:I

    return v0
.end method

.method static synthetic e(Lcom/android/camera/CropImage;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CropImage;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/camera/CropImage;->i:I

    return v0
.end method

.method static synthetic f(Lcom/android/camera/CropImage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CropImage;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/CropImage;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/android/camera/CropImage;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CropImage;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/CropImage;->j:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v8, 0x100000

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 103
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/camera/CropImage;->requestWindowFeature(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    invoke-super {p0, p1}, Lcom/android/camera/MonitoredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/camera/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/CropImage;->q:Landroid/content/ContentResolver;

    .line 109
    sget v2, Lcig$h;->cropimage:I

    invoke-virtual {p0, v2}, Lcom/android/camera/CropImage;->setContentView(I)V

    .line 110
    sget v2, Lcig$f;->image:I

    invoke-virtual {p0, v2}, Lcom/android/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CropImageView;

    iput-object v2, p0, Lcom/android/camera/CropImage;->p:Lcom/android/camera/CropImageView;

    .line 112
    invoke-virtual {p0}, Lcom/android/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1142
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1144
    if-eqz v3, :cond_1

    .line 1145
    const-string/jumbo v2, "output"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/camera/CropImage;->f:Landroid/net/Uri;

    .line 1146
    iget-object v2, p0, Lcom/android/camera/CropImage;->f:Landroid/net/Uri;

    if-eqz v2, :cond_5

    .line 1147
    const-string/jumbo v2, "outputFormat"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1148
    if-eqz v2, :cond_0

    .line 1149
    invoke-static {v2}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/CropImage;->e:Landroid/graphics/Bitmap$CompressFormat;

    .line 1155
    :cond_0
    :goto_1
    const-string/jumbo v2, "data"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/camera/CropImage;->r:Landroid/graphics/Bitmap;

    .line 1156
    const-string/jumbo v2, "aspectX"

    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/CropImage;->h:I

    .line 1157
    const-string/jumbo v2, "aspectY"

    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/CropImage;->i:I

    .line 1158
    const-string/jumbo v2, "outputX"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/CropImage;->k:I

    .line 1159
    const-string/jumbo v2, "outputY"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/CropImage;->l:I

    .line 1160
    const-string/jumbo v2, "scale"

    invoke-virtual {v3, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/CropImage;->m:Z

    .line 1161
    const-string/jumbo v2, "scaleUpIfNeeded"

    invoke-virtual {v3, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/CropImage;->n:Z

    .line 1162
    const-string/jumbo v2, "defaultCropRectangleSize"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/CropImage;->o:Ljava/lang/String;

    .line 1165
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CropImage;->r:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 1166
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1167
    iget-object v3, p0, Lcom/android/camera/CropImage;->q:Landroid/content/ContentResolver;

    invoke-static {v3, v2, v5}, Lcom/android/camera/ImageManager;->a(Landroid/content/ContentResolver;Landroid/net/Uri;I)Live;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/CropImage;->s:Live;

    .line 1169
    iget-object v3, p0, Lcom/android/camera/CropImage;->s:Live;

    invoke-interface {v3, v2}, Live;->a(Landroid/net/Uri;)Livd;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/CropImage;->t:Livd;

    .line 1170
    iget-object v2, p0, Lcom/android/camera/CropImage;->t:Livd;

    if-eqz v2, :cond_2

    .line 1171
    iget-object v2, p0, Lcom/android/camera/CropImage;->t:Livd;

    invoke-interface {v2}, Livd;->f()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/CropImage;->t:Livd;

    invoke-interface {v3}, Livd;->e()I

    move-result v3

    mul-int/2addr v2, v3

    .line 1172
    const/high16 v3, 0x500000

    if-le v2, v3, :cond_2

    .line 1177
    iget-object v2, p0, Lcom/android/camera/CropImage;->t:Livd;

    invoke-interface {v2, v5}, Livd;->a(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/CropImage;->r:Landroid/graphics/Bitmap;

    .line 1178
    iget-object v2, p0, Lcom/android/camera/CropImage;->r:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 1179
    iget-object v2, p0, Lcom/android/camera/CropImage;->t:Livd;

    iget v3, p0, Lcom/android/camera/CropImage;->k:I

    iget v4, p0, Lcom/android/camera/CropImage;->l:I

    mul-int/2addr v3, v4

    invoke-interface {v2, v6, v3, v5, v7}, Livd;->a(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/CropImage;->r:Landroid/graphics/Bitmap;

    .line 118
    :cond_2
    sget v2, Lcig$f;->discard:I

    invoke-virtual {p0, v2}, Lcom/android/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/camera/CropImage$1;

    invoke-direct {v3, p0}, Lcom/android/camera/CropImage$1;-><init>(Lcom/android/camera/CropImage;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    sget v2, Lcig$f;->save:I

    invoke-virtual {p0, v2}, Lcom/android/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/camera/CropImage$2;

    invoke-direct {v3, p0}, Lcom/android/camera/CropImage$2;-><init>(Lcom/android/camera/CropImage;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1188
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1192
    iget-object v2, p0, Lcom/android/camera/CropImage;->r:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    .line 1193
    iget-object v2, p0, Lcom/android/camera/CropImage;->p:Lcom/android/camera/CropImageView;

    iget-object v3, p0, Lcom/android/camera/CropImage;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CropImageView;->a(Landroid/graphics/Bitmap;Z)V

    .line 1194
    iget-object v2, p0, Lcom/android/camera/CropImage;->t:Livd;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/CropImage;->t:Livd;

    .line 1195
    invoke-interface {v2, v6, v8}, Livd;->a(II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1197
    :goto_2
    iget-object v3, p0, Lcom/android/camera/CropImage;->p:Lcom/android/camera/CropImageView;

    new-instance v4, Lcom/android/camera/CropImage$3;

    invoke-direct {v4, p0, v2}, Lcom/android/camera/CropImage$3;-><init>(Lcom/android/camera/CropImage;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/CropImageView;->post(Ljava/lang/Runnable;)Z

    .line 135
    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/android/camera/CropImage;->r:Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    .line 136
    invoke-virtual {p0}, Lcom/android/camera/CropImage;->finish()V

    .line 139
    :cond_4
    return-void

    .line 104
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1153
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_5
    const-string/jumbo v2, "set-as-wallpaper"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/CropImage;->g:Z

    goto/16 :goto_1

    .line 1195
    :cond_6
    iget-object v2, p0, Lcom/android/camera/CropImage;->r:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 1211
    :cond_7
    iget-object v2, p0, Lcom/android/camera/CropImage;->t:Livd;

    if-eqz v2, :cond_3

    .line 1212
    iget-object v2, p0, Lcom/android/camera/CropImage;->t:Livd;

    invoke-interface {v2, v6, v8}, Livd;->a(II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/CropImage;->r:Landroid/graphics/Bitmap;

    .line 1214
    iget-object v2, p0, Lcom/android/camera/CropImage;->p:Lcom/android/camera/CropImageView;

    iget-object v3, p0, Lcom/android/camera/CropImage;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CropImageView;->a(Landroid/graphics/Bitmap;Z)V

    .line 1216
    iget-object v2, p0, Lcom/android/camera/CropImage;->p:Lcom/android/camera/CropImageView;

    invoke-virtual {v2}, Lcom/android/camera/CropImageView;->getScale()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_8

    .line 1217
    iget-object v2, p0, Lcom/android/camera/CropImage;->p:Lcom/android/camera/CropImageView;

    invoke-virtual {v2, v5, v5}, Lcom/android/camera/CropImageView;->a(ZZ)V

    .line 1219
    :cond_8
    iget-object v2, p0, Lcom/android/camera/CropImage;->p:Lcom/android/camera/CropImageView;

    new-instance v3, Lcom/android/camera/CropImage$4;

    invoke-direct {v3, p0}, Lcom/android/camera/CropImage$4;-><init>(Lcom/android/camera/CropImage;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/CropImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/camera/CropImage;->s:Live;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/camera/CropImage;->s:Live;

    invoke-interface {v0}, Live;->a()V

    .line 448
    :cond_0
    invoke-super {p0}, Lcom/android/camera/MonitoredActivity;->onDestroy()V

    .line 449
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 440
    invoke-super {p0}, Lcom/android/camera/MonitoredActivity;->onPause()V

    .line 441
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 435
    invoke-super {p0}, Lcom/android/camera/MonitoredActivity;->onResume()V

    .line 436
    return-void
.end method
