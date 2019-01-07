.class public final Lgtd;
.super Ljava/lang/Object;
.source "ImageTransformUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;
    .locals 5

    .prologue
    const v4, 0x3f19999a    # 0.6f

    .line 38
    new-instance v1, Landroid/graphics/RectF;

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v4, v2, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 44
    .local v1, "faceExtendSize":Landroid/graphics/RectF;
    new-instance v0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;-><init>()V

    .line 45
    .local v0, "argument":Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;
    iput-object v1, v0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->extendFaceSize:Landroid/graphics/RectF;

    .line 46
    const/16 v2, 0x1e0

    iput v2, v0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->maxImageWidth:I

    .line 47
    const/16 v2, 0x50

    iput v2, v0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->quality:I

    .line 48
    const/16 v2, 0x64

    iput v2, v0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->faceQuality:I

    .line 50
    return-object v0
.end method

.method public static a(Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;)Lgsq;
    .locals 25
    .param p0, "frame"    # Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;
    .param p1, "argument"    # Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    invoke-static {}, Lgtd;->a()Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;

    move-result-object p1

    .line 73
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageData:[B

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imaegFormat:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageHeight:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageAngle:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->maxImageWidth:I

    invoke-static/range {v2 .. v7}, Lgsz;->a([BIIIII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 76
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    if-nez v8, :cond_1

    .line 77
    const/16 v23, 0x0

    .line 151
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v23

    .line 80
    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    .line 81
    .local v21, "imageWidth":I
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    .line 84
    .local v20, "imageHeight":I
    move/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float v24, v2, v3

    .line 87
    .local v24, "scale":F
    move-object/from16 v0, p1

    iget v2, v0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->quality:I

    invoke-static {v8, v2}, Lgsz;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object v19

    .line 90
    .local v19, "fullData":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->faceSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float v2, v2, v24

    float-to-int v14, v2

    .line 91
    .local v14, "faceLeft":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->faceSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float v2, v2, v24

    float-to-int v0, v2

    move/from16 v17, v0

    .line 92
    .local v17, "faceTop":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->faceSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float v2, v2, v24

    float-to-int v0, v2

    move/from16 v16, v0

    .line 93
    .local v16, "faceRight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->faceSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float v2, v2, v24

    float-to-int v11, v2

    .line 95
    .local v11, "faceBottom":I
    sub-int v18, v16, v14

    .line 96
    .local v18, "faceWidth":I
    sub-int v13, v11, v17

    .line 99
    .local v13, "faceHeight":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->extendFaceSize:Landroid/graphics/RectF;

    if-eqz v2, :cond_2

    .line 100
    int-to-float v2, v14

    move/from16 v0, v18

    int-to-float v3, v0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->extendFaceSize:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 101
    move/from16 v0, v16

    int-to-float v2, v0

    move/from16 v0, v18

    int-to-float v3, v0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->extendFaceSize:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    move/from16 v0, v21

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 102
    move/from16 v0, v17

    int-to-float v2, v0

    int-to-float v3, v13

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->extendFaceSize:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 103
    int-to-float v2, v11

    int-to-float v3, v13

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->extendFaceSize:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    move/from16 v0, v20

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 106
    :cond_2
    sub-int v18, v16, v14

    .line 107
    sub-int v13, v11, v17

    .line 110
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v14, v0, v1, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 113
    .local v10, "faceBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    iget v2, v0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->faceQuality:I

    invoke-static {v10, v2}, Lgsz;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object v12

    .line 116
    .local v12, "faceData":[B
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->isMirror:Z

    if-eqz v2, :cond_3

    .line 117
    invoke-static {v12}, Lgsz;->a([B)[B

    move-result-object v12

    .line 118
    invoke-static/range {v19 .. v19}, Lgsz;->a([B)[B

    move-result-object v19

    .line 122
    :cond_3
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 123
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 126
    new-instance v15, Lgsr;

    invoke-direct {v15}, Lgsr;-><init>()V

    .line 127
    .local v15, "faceRectModel":Lgsr;
    iput v14, v15, Lgsr;->a:I

    .line 128
    move/from16 v0, v17

    iput v0, v15, Lgsr;->b:I

    .line 129
    move/from16 v0, v18

    iput v0, v15, Lgsr;->c:I

    .line 130
    iput v13, v15, Lgsr;->d:I

    .line 131
    iput-object v12, v15, Lgsr;->e:[B

    .line 134
    new-instance v22, Lgsr;

    invoke-direct/range {v22 .. v22}, Lgsr;-><init>()V

    .line 135
    .local v22, "liveRectModel":Lgsr;
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iput v2, v0, Lgsr;->a:I

    .line 136
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iput v2, v0, Lgsr;->b:I

    .line 137
    move/from16 v0, v21

    move-object/from16 v1, v22

    iput v0, v1, Lgsr;->c:I

    .line 138
    move/from16 v0, v20

    move-object/from16 v1, v22

    iput v0, v1, Lgsr;->d:I

    .line 139
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    iput-object v0, v1, Lgsr;->e:[B

    .line 141
    new-instance v23, Lgsq;

    invoke-direct/range {v23 .. v23}, Lgsq;-><init>()V

    .line 142
    .local v23, "model":Lgsq;
    move-object/from16 v0, v23

    iput-object v15, v0, Lgsq;->a:Lgsr;

    .line 143
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    iput-object v0, v1, Lgsq;->c:Lgsr;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 146
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "faceBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "faceBottom":I
    .end local v12    # "faceData":[B
    .end local v13    # "faceHeight":I
    .end local v14    # "faceLeft":I
    .end local v15    # "faceRectModel":Lgsr;
    .end local v16    # "faceRight":I
    .end local v17    # "faceTop":I
    .end local v18    # "faceWidth":I
    .end local v19    # "fullData":[B
    .end local v20    # "imageHeight":I
    .end local v21    # "imageWidth":I
    .end local v22    # "liveRectModel":Lgsr;
    .end local v23    # "model":Lgsq;
    .end local v24    # "scale":F
    :catch_0
    move-exception v9

    .line 147
    .local v9, "e":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    const-string/jumbo v2, "facebox"

    const-string/jumbo v3, "FaceBoxImpl"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "createFaceRecognizeModel error:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/16 v23, 0x0

    goto/16 :goto_0
.end method

.method private static a(Landroid/graphics/Bitmap;Landroid/graphics/Rect;FFFFLandroid/graphics/Rect;I)Lgsr;
    .locals 16
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "faceRect"    # Landroid/graphics/Rect;
    .param p2, "leftScale"    # F
    .param p3, "topScale"    # F
    .param p4, "rightScale"    # F
    .param p5, "bottomScale"    # F
    .param p6, "newFaceRect"    # Landroid/graphics/Rect;
    .param p7, "quality"    # I

    .prologue
    .line 230
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 231
    .local v5, "imageWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 232
    .local v4, "imageHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 233
    .local v11, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 234
    .local v3, "h":I
    int-to-float v12, v11

    mul-float v12, v12, p2

    float-to-int v7, v12

    .line 235
    .local v7, "leftdelta":I
    int-to-float v12, v11

    mul-float v12, v12, p4

    float-to-int v9, v12

    .line 236
    .local v9, "rightdelta":I
    int-to-float v12, v3

    mul-float v12, v12, p3

    float-to-int v10, v12

    .line 237
    .local v10, "topdelta":I
    int-to-float v12, v3

    mul-float v12, v12, p5

    float-to-int v1, v12

    .line 238
    .local v1, "bottomdelta":I
    new-instance v8, Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v7

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v10

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v9

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v15, v1

    invoke-direct {v8, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 239
    .local v8, "rect":Landroid/graphics/Rect;
    iget v12, v8, Landroid/graphics/Rect;->left:I

    if-gez v12, :cond_0

    .line 240
    const/4 v12, 0x0

    iput v12, v8, Landroid/graphics/Rect;->left:I

    .line 242
    :cond_0
    iget v12, v8, Landroid/graphics/Rect;->top:I

    if-gez v12, :cond_1

    .line 243
    const/4 v12, 0x0

    iput v12, v8, Landroid/graphics/Rect;->top:I

    .line 245
    :cond_1
    iget v12, v8, Landroid/graphics/Rect;->right:I

    if-le v12, v5, :cond_2

    .line 246
    iput v5, v8, Landroid/graphics/Rect;->right:I

    .line 248
    :cond_2
    iget v12, v8, Landroid/graphics/Rect;->bottom:I

    if-le v12, v4, :cond_3

    .line 249
    iput v4, v8, Landroid/graphics/Rect;->bottom:I

    .line 252
    :cond_3
    iget v12, v8, Landroid/graphics/Rect;->top:I

    if-lez v12, :cond_4

    .end local v10    # "topdelta":I
    :goto_0
    const/4 v12, 0x0

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    move-object/from16 v0, p6

    iput v12, v0, Landroid/graphics/Rect;->top:I

    .line 253
    iget v12, v8, Landroid/graphics/Rect;->left:I

    if-lez v12, :cond_5

    .end local v7    # "leftdelta":I
    :goto_1
    const/4 v12, 0x0

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    move-object/from16 v0, p6

    iput v12, v0, Landroid/graphics/Rect;->left:I

    .line 254
    move-object/from16 v0, p6

    iget v12, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v3

    invoke-static {v12, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v0, p6

    iput v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 255
    move-object/from16 v0, p6

    iget v12, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v11

    invoke-static {v12, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v0, p6

    iput v12, v0, Landroid/graphics/Rect;->right:I

    .line 257
    new-instance v6, Lgsr;

    invoke-direct {v6}, Lgsr;-><init>()V

    .line 258
    .local v6, "img":Lgsr;
    iget v12, v8, Landroid/graphics/Rect;->left:I

    iput v12, v6, Lgsr;->a:I

    .line 259
    iget v12, v8, Landroid/graphics/Rect;->top:I

    iput v12, v6, Lgsr;->b:I

    .line 260
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v12

    iput v12, v6, Lgsr;->c:I

    .line 261
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v12

    iput v12, v6, Lgsr;->d:I

    .line 263
    iget v12, v8, Landroid/graphics/Rect;->left:I

    iget v13, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v15

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 265
    .local v2, "face":Landroid/graphics/Bitmap;
    move/from16 v0, p7

    invoke-static {v2, v0}, Lgsz;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object v12

    iput-object v12, v6, Lgsr;->e:[B

    .line 267
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 269
    return-object v6

    .line 252
    .end local v2    # "face":Landroid/graphics/Bitmap;
    .end local v6    # "img":Lgsr;
    .restart local v7    # "leftdelta":I
    .restart local v10    # "topdelta":I
    :cond_4
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 253
    .end local v10    # "topdelta":I
    :cond_5
    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method public static b(Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;)Lgsq;
    .locals 26
    .param p0, "frame"    # Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;
    .param p1, "argument"    # Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;

    .prologue
    .line 157
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageData:[B

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imaegFormat:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageHeight:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageAngle:I

    if-nez p1, :cond_0

    const/16 v7, 0x1e0

    :goto_0
    invoke-static/range {v2 .. v7}, Lgsz;->a([BIIIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 160
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_1

    .line 161
    const/16 v24, 0x0

    .line 221
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v24

    .line 157
    :cond_0
    move-object/from16 v0, p1

    iget v7, v0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->maxImageWidth:I

    goto :goto_0

    .line 164
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    .line 165
    .local v22, "imageWidth":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    .line 168
    .local v21, "imageHeight":I
    move/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageHeight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    div-float v25, v4, v5

    .line 170
    .local v25, "scale":F
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 172
    .local v3, "face":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->faceSize:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float v4, v4, v25

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 173
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->faceSize:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float v4, v4, v25

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->faceSize:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    mul-float v4, v4, v25

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->faceSize:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    mul-float v4, v4, v25

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 177
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v20

    .line 178
    .local v20, "faceWidth":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v18

    .line 186
    .local v18, "faceHeight":I
    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move/from16 v0, v20

    int-to-float v5, v0

    const v6, 0x3df5c28f    # 0.12f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 187
    iget v4, v3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move/from16 v0, v20

    int-to-float v5, v0

    const v6, 0x3df5c28f    # 0.12f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    move/from16 v0, v22

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 188
    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    move/from16 v0, v18

    int-to-float v5, v0

    const v6, 0x3df5c28f    # 0.12f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 189
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    move/from16 v0, v18

    int-to-float v5, v0

    const v6, 0x3e3851ec    # 0.18f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    move/from16 v0, v21

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 192
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 197
    .local v8, "faceRect":Landroid/graphics/Rect;
    const v4, 0x3e99999a    # 0.3f

    const/high16 v5, 0x3f000000    # 0.5f

    const v6, 0x3e99999a    # 0.3f

    const v7, 0x3dcccccd    # 0.1f

    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    iget v9, v0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->faceQuality:I

    :goto_2
    invoke-static/range {v2 .. v9}, Lgtd;->a(Landroid/graphics/Bitmap;Landroid/graphics/Rect;FFFFLandroid/graphics/Rect;I)Lgsr;

    move-result-object v19

    .line 200
    .local v19, "faceRectModel":Lgsr;
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 206
    .local v15, "liveRect":Landroid/graphics/Rect;
    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f4ccccd    # 0.8f

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3e99999a    # 0.3f

    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->quality:I

    move/from16 v16, v0

    :goto_3
    move-object v9, v2

    move-object v10, v3

    invoke-static/range {v9 .. v16}, Lgtd;->a(Landroid/graphics/Bitmap;Landroid/graphics/Rect;FFFFLandroid/graphics/Rect;I)Lgsr;

    move-result-object v23

    .line 209
    .local v23, "liveRectModel":Lgsr;
    new-instance v24, Lgsq;

    invoke-direct/range {v24 .. v24}, Lgsq;-><init>()V

    .line 210
    .local v24, "model":Lgsq;
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    iput-object v0, v1, Lgsq;->a:Lgsr;

    .line 211
    move-object/from16 v0, v24

    iput-object v8, v0, Lgsq;->b:Landroid/graphics/Rect;

    .line 212
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    iput-object v0, v1, Lgsq;->c:Lgsr;

    .line 213
    move-object/from16 v0, v24

    iput-object v15, v0, Lgsq;->d:Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 216
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "face":Landroid/graphics/Rect;
    .end local v8    # "faceRect":Landroid/graphics/Rect;
    .end local v15    # "liveRect":Landroid/graphics/Rect;
    .end local v18    # "faceHeight":I
    .end local v19    # "faceRectModel":Lgsr;
    .end local v20    # "faceWidth":I
    .end local v21    # "imageHeight":I
    .end local v22    # "imageWidth":I
    .end local v23    # "liveRectModel":Lgsr;
    .end local v24    # "model":Lgsq;
    .end local v25    # "scale":F
    :catch_0
    move-exception v17

    .line 217
    .local v17, "e":Ljava/lang/Throwable;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V

    .line 218
    const-string/jumbo v4, "facebox"

    const-string/jumbo v5, "FaceBoxImpl"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v9, "createFaceRecognizeModel error:"

    aput-object v9, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v17 .. v17}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 197
    .end local v17    # "e":Ljava/lang/Throwable;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "face":Landroid/graphics/Rect;
    .restart local v8    # "faceRect":Landroid/graphics/Rect;
    .restart local v18    # "faceHeight":I
    .restart local v20    # "faceWidth":I
    .restart local v21    # "imageHeight":I
    .restart local v22    # "imageWidth":I
    .restart local v25    # "scale":F
    :cond_2
    const/16 v9, 0x50

    goto :goto_2

    .line 206
    .restart local v15    # "liveRect":Landroid/graphics/Rect;
    .restart local v19    # "faceRectModel":Lgsr;
    :cond_3
    const/16 v16, 0x50

    goto :goto_3
.end method
