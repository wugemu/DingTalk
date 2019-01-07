.class public final Lgsw;
.super Ljava/lang/Object;
.source "FaceRecordPresenter.java"

# interfaces
.implements Lgsv$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgsw$a;
    }
.end annotation


# instance fields
.field a:I

.field b:Z

.field c:Lgsw$a;

.field public final d:Lgsv$b;

.field public e:Lgso;

.field f:Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;

.field g:Landroid/os/Handler;

.field public h:Lgso$a;

.field private i:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lgsv$b;)V
    .locals 2
    .param p1, "recordView"    # Lgsv$b;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lgsw;->a:I

    .line 89
    new-instance v0, Lgsw$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgsw$1;-><init>(Lgsw;Landroid/os/Looper;)V

    iput-object v0, p0, Lgsw;->g:Landroid/os/Handler;

    .line 127
    new-instance v0, Lgsw$2;

    invoke-direct {v0, p0}, Lgsw$2;-><init>(Lgsw;)V

    iput-object v0, p0, Lgsw;->h:Lgso$a;

    .line 85
    iput-object p1, p0, Lgsw;->d:Lgsv$b;

    .line 86
    invoke-interface {p1, p0}, Lgsv$b;->setPresenter(Lcjd;)V

    .line 87
    return-void
.end method


# virtual methods
.method a(Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;Landroid/graphics/Bitmap;)Lgsw$a;
    .locals 21
    .param p1, "frame"    # Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;
    .param p2, "beautyBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 241
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 242
    :cond_0
    const/16 v18, 0x0

    .line 294
    :goto_0
    return-object v18

    .line 244
    :cond_1
    :try_start_0
    invoke-static {}, Lgtd;->a()Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;

    move-result-object v8

    .line 245
    .local v8, "argument":Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;
    const/4 v1, 0x0

    iput v1, v8, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->maxImageWidth:I

    .line 247
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lgtd;->a(Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;)Lgsq;

    move-result-object v16

    .line 249
    .local v16, "imageInfo":Lgsq;
    if-nez v16, :cond_2

    .line 250
    const/16 v18, 0x0

    goto :goto_0

    .line 252
    :cond_2
    new-instance v18, Lgsw$a;

    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Lgsw$a;-><init>(B)V

    .line 254
    .local v18, "info":Lgsw$a;
    move-object/from16 v0, v16

    iget-object v1, v0, Lgsq;->c:Lgsr;

    iget v0, v1, Lgsr;->c:I

    move/from16 v19, v0

    .line 258
    .local v19, "width":I
    move-object/from16 v0, v16

    iget-object v1, v0, Lgsq;->a:Lgsr;

    iget-object v1, v1, Lgsr;->e:[B

    div-int/lit8 v2, v19, 0x2

    const/16 v3, 0x100

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1140
    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1142
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1143
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1145
    const/4 v6, 0x0

    .line 1147
    if-lez v2, :cond_3

    if-le v4, v2, :cond_3

    .line 1148
    int-to-float v2, v2

    int-to-float v3, v4

    div-float/2addr v2, v3

    .line 1149
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 1150
    invoke-virtual {v6, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1153
    :cond_3
    if-eqz v6, :cond_6

    .line 1154
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 1156
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 259
    .local v13, "faceBitmap":Landroid/graphics/Bitmap;
    :goto_1
    const/16 v1, 0x64

    invoke-static {v13, v1}, Lgsz;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object v14

    .line 260
    .local v14, "faceData":[B
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    move-object/from16 v0, v18

    iput v1, v0, Lgsw$a;->e:I

    .line 261
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    move-object/from16 v0, v18

    iput v1, v0, Lgsw$a;->f:I

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 264
    .local v10, "bw":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 266
    .local v9, "bh":I
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 267
    .local v17, "imageRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v12, v0, Lgsw;->i:Landroid/graphics/RectF;

    .line 268
    .local v12, "face":Landroid/graphics/RectF;
    if-eqz v12, :cond_5

    .line 269
    int-to-float v1, v10

    iget v2, v12, Landroid/graphics/RectF;->left:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, v9

    iget v3, v12, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, v10

    iget v4, v12, Landroid/graphics/RectF;->right:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v4, v9

    iget v5, v12, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1200
    :goto_2
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1201
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 1202
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1203
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1206
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    int-to-float v6, v1

    const/4 v7, 0x0

    mul-float/2addr v6, v7

    sub-float/2addr v2, v6

    float-to-int v2, v2

    const/4 v6, 0x0

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1207
    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    int-to-float v7, v1

    const/16 v20, 0x0

    mul-float v7, v7, v20

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1208
    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    const/4 v6, 0x0

    int-to-float v0, v4

    move/from16 v20, v0

    mul-float v6, v6, v20

    sub-float/2addr v3, v6

    float-to-int v3, v3

    const/4 v6, 0x0

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1209
    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    const/16 v20, 0x0

    int-to-float v4, v4

    mul-float v4, v4, v20

    add-float/2addr v4, v6

    float-to-int v4, v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1211
    const/4 v6, 0x0

    .line 1213
    const/16 v4, 0x1e0

    if-le v1, v4, :cond_4

    .line 1214
    const/high16 v4, 0x43f00000    # 480.0f

    int-to-float v1, v1

    div-float v1, v4, v1

    .line 1215
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 1216
    invoke-virtual {v6, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1219
    :cond_4
    sub-int v4, v7, v2

    sub-int/2addr v5, v3

    const/4 v7, 0x0

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 279
    .local v15, "imageBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    move-object/from16 v0, v18

    iput v1, v0, Lgsw$a;->c:I

    .line 280
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    move-object/from16 v0, v18

    iput v1, v0, Lgsw$a;->d:I

    .line 282
    const/16 v1, 0x64

    invoke-static {v15, v1}, Lgsz;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object v1

    move-object/from16 v0, v18

    iput-object v1, v0, Lgsw$a;->b:[B

    .line 283
    move-object/from16 v0, v18

    iput-object v14, v0, Lgsw$a;->a:[B

    .line 285
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 286
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 289
    .end local v8    # "argument":Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;
    .end local v9    # "bh":I
    .end local v10    # "bw":I
    .end local v12    # "face":Landroid/graphics/RectF;
    .end local v13    # "faceBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "faceData":[B
    .end local v15    # "imageBitmap":Landroid/graphics/Bitmap;
    .end local v16    # "imageInfo":Lgsq;
    .end local v17    # "imageRect":Landroid/graphics/Rect;
    .end local v18    # "info":Lgsw$a;
    .end local v19    # "width":I
    :catch_0
    move-exception v11

    .line 290
    .local v11, "e":Ljava/lang/Throwable;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    .line 291
    const-string/jumbo v1, "FaceRecord"

    const-string/jumbo v2, "FaceRecordPresenter"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "frameToFaceInfo error:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 272
    .end local v11    # "e":Ljava/lang/Throwable;
    .restart local v8    # "argument":Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;
    .restart local v9    # "bh":I
    .restart local v10    # "bw":I
    .restart local v12    # "face":Landroid/graphics/RectF;
    .restart local v13    # "faceBitmap":Landroid/graphics/Bitmap;
    .restart local v14    # "faceData":[B
    .restart local v16    # "imageInfo":Lgsq;
    .restart local v17    # "imageRect":Landroid/graphics/Rect;
    .restart local v18    # "info":Lgsw$a;
    .restart local v19    # "width":I
    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2, v10, v9}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .end local v9    # "bh":I
    .end local v10    # "bw":I
    .end local v12    # "face":Landroid/graphics/RectF;
    .end local v13    # "faceBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "faceData":[B
    .end local v17    # "imageRect":Landroid/graphics/Rect;
    :cond_6
    move-object v13, v1

    goto/16 :goto_1
.end method

.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 518
    iget-object v0, p0, Lgsw;->e:Lgso;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lgsw;->e:Lgso;

    invoke-virtual {v0}, Lgso;->a()V

    .line 521
    :cond_0
    iput-object v2, p0, Lgsw;->f:Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;

    .line 522
    iput-object v2, p0, Lgsw;->c:Lgsw$a;

    .line 523
    iput-boolean v1, p0, Lgsw;->b:Z

    .line 524
    iput v1, p0, Lgsw;->a:I

    .line 525
    invoke-static {}, Lgta;->a()Lgta;

    move-result-object v0

    .line 2030
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lgta;->b:J

    .line 2031
    iget-object v0, v0, Lgta;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 526
    iget-object v0, p0, Lgsw;->g:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 527
    return-void
.end method

.method public final a(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/RectF;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const v3, 0x3e19999a    # 0.15f

    .line 209
    iput-object p1, p0, Lgsw;->i:Landroid/graphics/RectF;

    .line 210
    iget-object v1, p0, Lgsw;->e:Lgso;

    if-eqz v1, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 213
    .local v0, "detectorRect":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/RectF;

    .end local v0    # "detectorRect":Landroid/graphics/RectF;
    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 215
    .restart local v0    # "detectorRect":Landroid/graphics/RectF;
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 216
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 218
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    const v3, 0x3da3d70a    # 0.08f

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 219
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    const v3, 0x3d4ccccd    # 0.05f

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 222
    iget-object v1, p0, Lgsw;->e:Lgso;

    invoke-virtual {v1, v0}, Lgso;->a(Landroid/graphics/RectF;)V

    .line 224
    .end local v0    # "detectorRect":Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method public final a([BIIIZI)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "rotate"    # I
    .param p5, "mirror"    # Z
    .param p6, "format"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 233
    iget-object v0, p0, Lgsw;->e:Lgso;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lgsw;->e:Lgso;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lgso;->a([BIIIIZ)V

    .line 236
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 531
    iget-object v0, p0, Lgsw;->g:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 532
    return-void
.end method

.method public final c()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 352
    iget-object v7, p0, Lgsw;->c:Lgsw$a;

    .line 353
    .local v7, "info":Lgsw$a;
    if-nez v7, :cond_0

    .line 1365
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v2, v7, Lgsw$a;->b:[B

    iget-object v3, v7, Lgsw$a;->a:[B

    iget v5, v7, Lgsw$a;->e:I

    iget v6, v7, Lgsw$a;->f:I

    .line 1361
    invoke-virtual {p0}, Lgsw;->e()Lgsu;

    move-result-object v4

    .line 1363
    if-eqz v4, :cond_1

    iget-object v0, p0, Lgsw;->d:Lgsv$b;

    invoke-interface {v0}, Lgsv$b;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1364
    :cond_1
    const-string/jumbo v0, "FaceRecord"

    const-string/jumbo v1, "view finish, startRecord 1 ignore callback"

    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1369
    :cond_2
    iget-object v0, p0, Lgsw;->d:Lgsv$b;

    invoke-interface {v0}, Lgsv$b;->j()V

    .line 1371
    const-string/jumbo v0, "FaceRecordPresenter"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v8

    new-instance v0, Lgsw$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lgsw$4;-><init>(Lgsw;[B[BLgsu;II)V

    invoke-interface {v8, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 470
    invoke-virtual {p0}, Lgsw;->e()Lgsu;

    move-result-object v0

    .line 472
    .local v0, "record":Lgsu;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lgsw;->d:Lgsv$b;

    invoke-interface {v1}, Lgsv$b;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 473
    :cond_0
    const-string/jumbo v1, "FaceRecord"

    const-string/jumbo v2, "FaceRecordPresenter"

    const-string/jumbo v3, "view finish, register ignore callback"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :goto_0
    return-void

    .line 478
    :cond_1
    iget-object v1, p0, Lgsw;->d:Lgsv$b;

    invoke-interface {v1}, Lgsv$b;->l()V

    .line 480
    iget-object v1, p0, Lgsw;->f:Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;

    new-instance v2, Lgsw$5;

    invoke-direct {v2, p0}, Lgsw$5;-><init>(Lgsw;)V

    invoke-interface {v0, v1, v2}, Lgsu;->a(Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;Lgsu$a;)V

    goto :goto_0
.end method

.method e()Lgsu;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 508
    iget-object v1, p0, Lgsw;->d:Lgsv$b;

    invoke-interface {v1}, Lgsv$b;->i()Landroid/app/Activity;

    move-result-object v0

    .line 510
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lgsu;

    if-eqz v1, :cond_0

    .line 511
    check-cast v0, Lgsu;

    .line 513
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-object v0

    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 201
    iget-object v0, p0, Lgsw;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lgsw;->e:Lgso;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lgsw;->e:Lgso;

    invoke-virtual {v0}, Lgso;->b()V

    .line 205
    :cond_0
    return-void
.end method
