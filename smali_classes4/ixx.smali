.class public final Lixx;
.super Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lixx$a;
    }
.end annotation


# static fields
.field private static synthetic D:[I


# instance fields
.field private A:F

.field private B:F

.field private C:I

.field e:Lhxu$b;

.field f:I

.field g:I

.field h:F

.field i:J

.field j:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

.field k:Landroid/content/Context;

.field l:I

.field m:I

.field n:I

.field o:I

.field p:Lhzg;

.field q:[I

.field r:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;

.field s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhzi;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/lang/String;

.field private u:Lhxu;

.field private v:I

.field private w:[Lcom/hisign/facedetectv1small/FaceDetect$b;

.field private x:Lcom/hisign/facedetectv1small/FaceDetect;

.field private y:Lcom/hisign/facedetectv1small/LiveDetect$c;

.field private z:Z


# direct methods
.method public constructor <init>(Lhzg;)V
    .locals 6

    const/4 v1, 0x0

    const/16 v3, 0xa

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;-><init>()V

    const-string/jumbo v0, "FaceLiveDetectSDK"

    iput-object v0, p0, Lixx;->t:Ljava/lang/String;

    iput-object v1, p0, Lixx;->u:Lhxu;

    iput v3, p0, Lixx;->v:I

    iget v0, p0, Lixx;->v:I

    new-array v0, v0, [Lcom/hisign/facedetectv1small/FaceDetect$b;

    iput-object v0, p0, Lixx;->w:[Lcom/hisign/facedetectv1small/FaceDetect$b;

    new-instance v0, Lhxu$b;

    invoke-direct {v0}, Lhxu$b;-><init>()V

    iput-object v0, p0, Lixx;->e:Lhxu$b;

    iput-object v1, p0, Lixx;->x:Lcom/hisign/facedetectv1small/FaceDetect;

    iput v2, p0, Lixx;->f:I

    const/16 v0, 0x28

    iput v0, p0, Lixx;->g:I

    const/high16 v0, 0x457a0000    # 4000.0f

    iput v0, p0, Lixx;->h:F

    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->AIMLESS:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    iput-object v0, p0, Lixx;->j:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    iput-object v1, p0, Lixx;->k:Landroid/content/Context;

    iput v2, p0, Lixx;->l:I

    iput v3, p0, Lixx;->m:I

    iput v2, p0, Lixx;->n:I

    iput v2, p0, Lixx;->o:I

    iput-object v1, p0, Lixx;->p:Lhzg;

    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->NoError:Lcom/hisign/facedetectv1small/LiveDetect$c;

    iput-object v0, p0, Lixx;->y:Lcom/hisign/facedetectv1small/LiveDetect$c;

    iput-boolean v2, p0, Lixx;->z:Z

    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Lixx;->A:F

    const v0, 0x3fb33333    # 1.4f

    iput v0, p0, Lixx;->B:F

    const/16 v0, 0x50

    iput v0, p0, Lixx;->C:I

    const/16 v0, 0x9

    new-array v0, v0, [I

    const/4 v1, 0x6

    aput v1, v0, v2

    const/4 v1, 0x1

    iget v2, p0, Lixx;->g:I

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x50

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lixx;->A:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lixx;->B:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lixx;->m:I

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    const/16 v1, 0x8

    aput v3, v0, v1

    iput-object v0, p0, Lixx;->q:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lixx;->s:Ljava/util/ArrayList;

    iget-object v0, p0, Lixx;->e:Lhxu$b;

    const/16 v1, 0x1b0

    iput v1, v0, Lhxu$b;->a:I

    iget-object v0, p0, Lixx;->e:Lhxu$b;

    const/16 v1, 0x300

    iput v1, v0, Lhxu$b;->b:I

    iput-object p1, p0, Lixx;->p:Lhzg;

    invoke-virtual {p1}, Lhzg;->a()J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lixx;->h:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lixx;->i:J

    invoke-virtual {p1}, Lhzg;->a()J

    move-result-wide v0

    const-wide/16 v2, 0xf

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lixx;->g:I

    iget-object v0, p0, Lixx;->e:Lhxu$b;

    iget v1, p0, Lixx;->g:I

    iput v1, v0, Lhxu$b;->d:I

    iget-object v0, p0, Lixx;->q:[I

    const/4 v1, 0x1

    iget v2, p0, Lixx;->g:I

    aput v2, v0, v1

    iget-object v0, p0, Lixx;->e:Lhxu$b;

    invoke-virtual {p1}, Lhzg;->d()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lhxu$b;->c:I

    iget-object v0, p0, Lixx;->p:Lhzg;

    invoke-virtual {v0}, Lhzg;->f()F

    move-result v0

    iput v0, p0, Lixx;->A:F

    iget-object v0, p0, Lixx;->p:Lhzg;

    invoke-virtual {v0}, Lhzg;->g()F

    move-result v0

    iput v0, p0, Lixx;->B:F

    iget v0, p0, Lixx;->A:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_0

    iput v5, p0, Lixx;->A:F

    :cond_0
    iget v0, p0, Lixx;->B:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    iput v5, p0, Lixx;->B:F

    :cond_1
    iget-object v0, p0, Lixx;->q:[I

    const/4 v1, 0x3

    iget v2, p0, Lixx;->A:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lixx;->q:[I

    const/4 v1, 0x4

    iget v2, p0, Lixx;->B:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    aput v2, v0, v1

    invoke-virtual {p1}, Lhzg;->h()I

    move-result v0

    iput v0, p0, Lixx;->m:I

    iget v0, p0, Lixx;->m:I

    if-ltz v0, :cond_2

    iget v0, p0, Lixx;->m:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lixx;->q:[I

    const/4 v1, 0x5

    iget v2, p0, Lixx;->m:I

    aput v2, v0, v1

    :cond_2
    invoke-virtual {p1}, Lhzg;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lixx;->q:[I

    const/4 v1, 0x6

    const/4 v2, 0x1

    aput v2, v0, v1

    :cond_3
    invoke-virtual {p1}, Lhzg;->c()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v1, v0

    if-gez v1, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v0

    if-lez v1, :cond_4

    iget-object v1, p0, Lixx;->q:[I

    const/4 v2, 0x7

    mul-float/2addr v0, v4

    float-to-int v0, v0

    aput v0, v1, v2

    :cond_4
    invoke-virtual {p1}, Lhzg;->b()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v1, v0

    if-gez v1, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v0

    if-lez v1, :cond_5

    iget-object v1, p0, Lixx;->q:[I

    const/16 v2, 0x8

    mul-float/2addr v0, v4

    float-to-int v0, v0

    aput v0, v1, v2

    :cond_5
    invoke-virtual {p1}, Lhzg;->i()I

    move-result v0

    if-lez v0, :cond_6

    const/16 v1, 0x64

    if-gt v0, v1, :cond_6

    iput v0, p0, Lixx;->C:I

    :cond_6
    return-void
.end method

.method static synthetic a(Lixx;)Lcom/hisign/facedetectv1small/FaceDetect;
    .locals 1

    iget-object v0, p0, Lixx;->x:Lcom/hisign/facedetectv1small/FaceDetect;

    return-object v0
.end method

.method static synthetic a(Lixx;[BLandroid/graphics/Rect;IIILandroid/graphics/Rect;)[B
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lixx;->a([BLandroid/graphics/Rect;IIILandroid/graphics/Rect;)[B

    move-result-object v0

    return-object v0
.end method

.method private a([BLandroid/graphics/Rect;IIILandroid/graphics/Rect;)[B
    .locals 22

    .prologue
    .line 0
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    if-nez p4, :cond_2

    :cond_1
    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_2
    mul-int/lit8 v4, p3, 0x3

    rem-int/lit8 v4, v4, 0x4

    mul-int/lit8 v5, p3, 0x4

    if-eqz v4, :cond_6

    rsub-int/lit8 v4, v4, 0x4

    :goto_1
    add-int/2addr v4, v5

    mul-int v4, v4, p4

    new-array v4, v4, [B

    move/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/hisign/matching/UvcInputAPI;->UVCYuvtoRgb(II[B[B)I

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 5000
    if-eqz v14, :cond_3

    if-nez p2, :cond_7

    :cond_3
    const/4 v4, 0x0

    .line 0
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lixx;->p:Lhzg;

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lixx;->p:Lhzg;

    invoke-virtual {v5}, Lhzg;->e()Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u88c1\u526a\u540e\u7684width\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "--\u88c1\u526a\u540e\u7684height\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, p0

    iget v7, v0, Lixx;->C:I

    invoke-virtual {v4, v5, v7, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    :try_start_0
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    move-object v4, v5

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 5000
    :cond_7
    move-object/from16 v0, p2

    iget v15, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v4, v18, v17

    sub-int v5, v16, v15

    int-to-double v6, v4

    const-wide v8, 0x3ff51eb851eb851fL    # 1.32

    mul-double/2addr v6, v8

    double-to-int v6, v6

    int-to-double v8, v5

    const-wide v10, 0x3ffc28f5c28f5c29L    # 1.76

    mul-double/2addr v8, v10

    double-to-int v9, v8

    int-to-double v10, v15

    sub-int v7, v9, v5

    int-to-double v12, v7

    const-wide v20, 0x3fe3333333333333L    # 0.6

    mul-double v12, v12, v20

    sub-double/2addr v10, v12

    double-to-int v8, v10

    move/from16 v0, v16

    int-to-double v10, v0

    sub-int v5, v9, v5

    int-to-double v12, v5

    const-wide v20, 0x3fd999999999999aL    # 0.4

    mul-double v12, v12, v20

    add-double/2addr v10, v12

    double-to-int v7, v10

    sub-int v5, v6, v4

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v17, v5

    sub-int v4, v6, v4

    div-int/lit8 v4, v4, 0x2

    add-int v4, v4, v18

    if-gez v8, :cond_8

    const/4 v8, 0x0

    move v7, v9

    :cond_8
    move/from16 v0, p4

    if-le v7, v0, :cond_10

    sub-int v7, p4, v9

    if-gez v7, :cond_f

    const/4 v7, 0x0

    move v13, v7

    :goto_4
    if-gez v5, :cond_9

    const/4 v5, 0x0

    move v4, v6

    :cond_9
    move/from16 v0, p3

    if-le v4, v0, :cond_e

    sub-int v4, p3, v6

    if-gez v4, :cond_d

    const/4 v4, 0x0

    move v11, v4

    :goto_5
    sub-int v4, p3, v11

    sub-int v5, p4, v13

    invoke-static {v14, v11, v13, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    const/high16 v12, 0x3f800000    # 1.0f

    if-lez p5, :cond_b

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move/from16 v0, p5

    if-gt v5, v0, :cond_a

    move/from16 v0, p5

    if-le v6, v0, :cond_b

    :cond_a
    if-lt v5, v6, :cond_c

    move/from16 v0, p5

    int-to-float v6, v0

    int-to-float v5, v5

    div-float v5, v6, v5

    move v12, v5

    .line 6000
    :goto_6
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v9, v12, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 5000
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v7

    if-eq v6, v7, :cond_b

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    move-object v4, v5

    :cond_b
    if-eqz p6, :cond_4

    sub-int v5, v17, v11

    int-to-float v5, v5

    mul-float/2addr v5, v12

    float-to-int v5, v5

    move-object/from16 v0, p6

    iput v5, v0, Landroid/graphics/Rect;->left:I

    sub-int v5, v15, v13

    int-to-float v5, v5

    mul-float/2addr v5, v12

    float-to-int v5, v5

    move-object/from16 v0, p6

    iput v5, v0, Landroid/graphics/Rect;->top:I

    sub-int v5, v18, v11

    int-to-float v5, v5

    mul-float/2addr v5, v12

    float-to-int v5, v5

    move-object/from16 v0, p6

    iput v5, v0, Landroid/graphics/Rect;->right:I

    sub-int v5, v16, v13

    int-to-float v5, v5

    mul-float/2addr v5, v12

    float-to-int v5, v5

    move-object/from16 v0, p6

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :cond_c
    move/from16 v0, p5

    int-to-float v5, v0

    int-to-float v6, v6

    div-float/2addr v5, v6

    move v12, v5

    goto :goto_6

    .line 0
    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :cond_d
    move v11, v4

    goto/16 :goto_5

    :cond_e
    move/from16 p3, v4

    move v11, v5

    goto/16 :goto_5

    :cond_f
    move v13, v7

    goto/16 :goto_4

    :cond_10
    move/from16 p4, v7

    move v13, v8

    goto/16 :goto_4
.end method

.method private static synthetic d()[I
    .locals 3

    sget-object v0, Lixx;->D:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->values()[Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->AIMLESS:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->BLINK:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->DONE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->KEEP_STILL:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->MOUTH:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    :goto_5
    :try_start_5
    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->MOVEMENT_3D:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    :goto_6
    :try_start_6
    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->NONE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_7
    :try_start_7
    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_PITCH:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    :goto_8
    :try_start_8
    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_PITCH_DOWN:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    :goto_9
    :try_start_9
    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_PITCH_UP:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    :goto_a
    :try_start_a
    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_YAW:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    :goto_b
    :try_start_b
    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_YAW_LEFT:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    :goto_c
    :try_start_c
    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_YAW_RIGHT:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    :goto_d
    sput-object v0, Lixx;->D:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_d

    :catch_1
    move-exception v1

    goto :goto_c

    :catch_2
    move-exception v1

    goto :goto_b

    :catch_3
    move-exception v1

    goto :goto_a

    :catch_4
    move-exception v1

    goto :goto_9

    :catch_5
    move-exception v1

    goto :goto_8

    :catch_6
    move-exception v1

    goto :goto_7

    :catch_7
    move-exception v1

    goto :goto_6

    :catch_8
    move-exception v1

    goto :goto_5

    :catch_9
    move-exception v1

    goto :goto_4

    :catch_a
    move-exception v1

    goto/16 :goto_3

    :catch_b
    move-exception v1

    goto/16 :goto_2

    :catch_c
    move-exception v1

    goto/16 :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 0
    invoke-virtual {p0}, Lixx;->b()V

    iget-object v1, p0, Lixx;->u:Lhxu;

    .line 1000
    invoke-static {}, Lcom/hisign/FaceSDK/FaceLiveDetect;->b()I

    iput-object v3, v1, Lhxu;->b:[B

    iput-object v3, v1, Lhxu;->c:[B

    const/4 v0, 0x0

    :goto_0
    iget-object v2, v1, Lhxu;->h:[Lcom/hisign/facedetectv1small/LiveDetect$b;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 0
    return-void

    .line 1000
    :cond_0
    iget-object v2, v1, Lhxu;->h:[Lcom/hisign/facedetectv1small/LiveDetect$b;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v3, 0x0

    iput v3, p0, Lixx;->f:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lixx;->i:J

    iput-object p1, p0, Lixx;->j:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    iget-object v0, p0, Lixx;->q:[I

    aget v0, v0, v3

    invoke-static {}, Lixx;->d()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lixx;->q:[I

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$d;->Idle:Lcom/hisign/facedetectv1small/LiveDetect$d;

    invoke-virtual {v2}, Lcom/hisign/facedetectv1small/LiveDetect$d;->ordinal()I

    move-result v2

    aput v2, v1, v3

    :goto_0
    iget-object v1, p0, Lixx;->q:[I

    aget v1, v1, v3

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lixx;->q:[I

    aget v1, v1, v3

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$d;->OpenMouth:Lcom/hisign/facedetectv1small/LiveDetect$d;

    invoke-virtual {v2}, Lcom/hisign/facedetectv1small/LiveDetect$d;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lixx;->q:[I

    aget v1, v1, v3

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$d;->BlinkEye:Lcom/hisign/facedetectv1small/LiveDetect$d;

    invoke-virtual {v2}, Lcom/hisign/facedetectv1small/LiveDetect$d;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lixx;->q:[I

    aget v1, v1, v3

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$d;->Idle:Lcom/hisign/facedetectv1small/LiveDetect$d;

    invoke-virtual {v2}, Lcom/hisign/facedetectv1small/LiveDetect$d;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/hisign/facedetectv1small/LiveDetect$d;->KeepStill:Lcom/hisign/facedetectv1small/LiveDetect$d;

    invoke-virtual {v1}, Lcom/hisign/facedetectv1small/LiveDetect$d;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/hisign/facedetectv1small/LiveDetect$d;->Idle:Lcom/hisign/facedetectv1small/LiveDetect$d;

    invoke-virtual {v1}, Lcom/hisign/facedetectv1small/LiveDetect$d;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->NONE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    if-eq p1, v1, :cond_1

    const/16 v0, 0xa

    iput v0, p0, Lixx;->l:I

    :cond_0
    :goto_1
    iget-object v0, p0, Lixx;->u:Lhxu;

    iget-object v1, p0, Lixx;->q:[I

    invoke-virtual {v0, v1}, Lhxu;->a([I)I

    return-void

    :pswitch_1
    iget-object v1, p0, Lixx;->q:[I

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$d;->ShakeHead:Lcom/hisign/facedetectv1small/LiveDetect$d;

    invoke-virtual {v2}, Lcom/hisign/facedetectv1small/LiveDetect$d;->ordinal()I

    move-result v2

    aput v2, v1, v3

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lixx;->q:[I

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$d;->NodHead:Lcom/hisign/facedetectv1small/LiveDetect$d;

    invoke-virtual {v2}, Lcom/hisign/facedetectv1small/LiveDetect$d;->ordinal()I

    move-result v2

    aput v2, v1, v3

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lixx;->q:[I

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$d;->LeftShakeHead:Lcom/hisign/facedetectv1small/LiveDetect$d;

    invoke-virtual {v2}, Lcom/hisign/facedetectv1small/LiveDetect$d;->ordinal()I

    move-result v2

    aput v2, v1, v3

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lixx;->q:[I

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$d;->RightShakeHead:Lcom/hisign/facedetectv1small/LiveDetect$d;

    invoke-virtual {v2}, Lcom/hisign/facedetectv1small/LiveDetect$d;->ordinal()I

    move-result v2

    aput v2, v1, v3

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lixx;->q:[I

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$d;->KeepStill:Lcom/hisign/facedetectv1small/LiveDetect$d;

    invoke-virtual {v2}, Lcom/hisign/facedetectv1small/LiveDetect$d;->ordinal()I

    move-result v2

    aput v2, v1, v3

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, p0, Lixx;->q:[I

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$d;->OpenMouth:Lcom/hisign/facedetectv1small/LiveDetect$d;

    invoke-virtual {v2}, Lcom/hisign/facedetectv1small/LiveDetect$d;->ordinal()I

    move-result v2

    aput v2, v1, v3

    goto/16 :goto_0

    :pswitch_7
    iget-object v1, p0, Lixx;->q:[I

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$d;->BlinkEye:Lcom/hisign/facedetectv1small/LiveDetect$d;

    invoke-virtual {v2}, Lcom/hisign/facedetectv1small/LiveDetect$d;->ordinal()I

    move-result v2

    aput v2, v1, v3

    goto/16 :goto_0

    :pswitch_8
    iget-object v1, p0, Lixx;->q:[I

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$d;->Idle:Lcom/hisign/facedetectv1small/LiveDetect$d;

    invoke-virtual {v2}, Lcom/hisign/facedetectv1small/LiveDetect$d;->ordinal()I

    move-result v2

    aput v2, v1, v3

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lixx;->q:[I

    aget v1, v1, v3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lixx;->l:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public final a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;)V
    .locals 0

    iput-object p1, p0, Lixx;->r:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;

    return-void
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lixx;->p:Lhzg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lixx;->p:Lhzg;

    invoke-virtual {v0}, Lhzg;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v2, Lhxu;->a:Z

    :cond_0
    new-instance v0, Lhxu;

    invoke-direct {v0}, Lhxu;-><init>()V

    iput-object v0, p0, Lixx;->u:Lhxu;

    iget-object v0, p0, Lixx;->u:Lhxu;

    iget-object v3, p0, Lixx;->e:Lhxu$b;

    iget-object v4, p0, Lixx;->q:[I

    invoke-virtual {v0, p1, v3, v4}, Lhxu;->a(Landroid/content/Context;Lhxu$b;[I)I

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    new-instance v0, Lcom/hisign/facedetectv1small/FaceDetect;

    invoke-direct {v0}, Lcom/hisign/facedetectv1small/FaceDetect;-><init>()V

    iput-object v0, p0, Lixx;->x:Lcom/hisign/facedetectv1small/FaceDetect;

    move v0, v1

    :goto_1
    iget v4, p0, Lixx;->v:I

    if-lt v0, v4, :cond_4

    iput-object p1, p0, Lixx;->k:Landroid/content/Context;

    invoke-virtual {p0}, Lixx;->b()V

    iget-object v0, p0, Lixx;->p:Lhzg;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lixx;->p:Lhzg;

    invoke-virtual {v0}, Lhzg;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "FaceLiveDetectSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "liveDetectInit Width="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lixx;->e:Lhxu$b;

    iget v5, v5, Lhxu$b;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lixx;->e:Lhxu$b;

    iget v5, v5, Lhxu$b;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "NativeHeapSizeTotal:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "bytes"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "NativeAllocatedHeapSize:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "bytes"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "NativeAllocatedFree:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "bytes"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-nez v3, :cond_1

    move v1, v2

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lixx;->w:[Lcom/hisign/facedetectv1small/FaceDetect$b;

    new-instance v5, Lcom/hisign/facedetectv1small/FaceDetect$b;

    invoke-direct {v5}, Lcom/hisign/facedetectv1small/FaceDetect$b;-><init>()V

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method public final a([BIII)Z
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lixx;->p:Lhzg;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lixx;->p:Lhzg;

    invoke-virtual {v2}, Lhzg;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "FaceLiveDetectSDK"

    const-string/jumbo v3, "doDetect Enter..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    array-length v2, p1

    mul-int v3, p2, p3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/16 v2, 0x10e

    if-eq p4, v2, :cond_3

    const/16 v2, 0x5a

    if-ne p4, v2, :cond_6

    :cond_3
    iget-object v2, p0, Lixx;->e:Lhxu$b;

    iget v2, v2, Lhxu$b;->b:I

    if-ne p2, v2, :cond_4

    iget-object v2, p0, Lixx;->e:Lhxu$b;

    iget v2, v2, Lhxu$b;->a:I

    if-eq p3, v2, :cond_5

    :cond_4
    const/4 v1, 0x1

    iget-object v2, p0, Lixx;->e:Lhxu$b;

    iput p3, v2, Lhxu$b;->a:I

    iget-object v2, p0, Lixx;->e:Lhxu$b;

    iput p2, v2, Lhxu$b;->b:I

    :cond_5
    :goto_1
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lixx;->a()V

    iget-object v0, p0, Lixx;->u:Lhxu;

    iget-object v1, p0, Lixx;->k:Landroid/content/Context;

    iget-object v2, p0, Lixx;->e:Lhxu$b;

    iget-object v3, p0, Lixx;->q:[I

    invoke-virtual {v0, v1, v2, v3}, Lhxu;->a(Landroid/content/Context;Lhxu$b;[I)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lixx;->e:Lhxu$b;

    iget v2, v2, Lhxu$b;->a:I

    if-ne p2, v2, :cond_7

    iget-object v2, p0, Lixx;->e:Lhxu$b;

    iget v2, v2, Lhxu$b;->b:I

    if-eq p3, v2, :cond_5

    :cond_7
    const/4 v1, 0x1

    iget-object v2, p0, Lixx;->e:Lhxu$b;

    iput p2, v2, Lhxu$b;->a:I

    iget-object v2, p0, Lixx;->e:Lhxu$b;

    iput p3, v2, Lhxu$b;->b:I

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lixx;->b()V

    iget-object v1, p0, Lixx;->j:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    invoke-virtual {p0, v1}, Lixx;->a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;)V

    iget-object v1, p0, Lixx;->p:Lhzg;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lixx;->p:Lhzg;

    invoke-virtual {v1}, Lhzg;->e()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "FaceLiveDetectSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "liveDetectInit ChangeV Width="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lixx;->e:Lhxu$b;

    iget v3, v3, Lhxu$b;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lixx;->e:Lhxu$b;

    iget v3, v3, Lhxu$b;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/16 v1, 0x10e

    if-eq p4, v1, :cond_a

    const/16 v1, 0x5a

    if-ne p4, v1, :cond_b

    :cond_a
    const/16 v0, 0x5a

    const/4 v1, 0x1

    invoke-static {p2, p3, p1, v0, v1}, Lcom/hisign/matching/UvcInputAPI;->a(II[BII)I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x5a

    if-eq p4, v1, :cond_c

    const/16 v1, 0xb4

    if-ne p4, v1, :cond_d

    :cond_c
    invoke-static {p2, p3, p1}, Lcom/hisign/matching/UvcInputAPI;->a(II[B)I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_d
    iget v1, p0, Lixx;->l:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_e

    iget v0, p0, Lixx;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lixx;->l:I

    iget-object v0, p0, Lixx;->q:[I

    const/4 v1, 0x0

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$d;->Idle:Lcom/hisign/facedetectv1small/LiveDetect$d;

    invoke-virtual {v2}, Lcom/hisign/facedetectv1small/LiveDetect$d;->ordinal()I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lixx;->u:Lhxu;

    iget-object v1, p0, Lixx;->q:[I

    invoke-virtual {v0, v1}, Lhxu;->a([I)I

    move-result v0

    move v3, v0

    :goto_2
    if-eqz v3, :cond_f

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_e
    iget v1, p0, Lixx;->l:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2f

    const/4 v0, 0x0

    iput v0, p0, Lixx;->l:I

    iget-object v0, p0, Lixx;->j:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    invoke-virtual {p0, v0}, Lixx;->a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;)V

    iget-object v0, p0, Lixx;->u:Lhxu;

    iget-object v1, p0, Lixx;->q:[I

    invoke-virtual {v0, v1}, Lhxu;->a([I)I

    move-result v0

    move v3, v0

    goto :goto_2

    :cond_f
    new-instance v4, Lhxu$c;

    invoke-direct {v4}, Lhxu$c;-><init>()V

    iget-object v0, p0, Lixx;->u:Lhxu;

    iget-object v1, p0, Lixx;->w:[Lcom/hisign/facedetectv1small/FaceDetect$b;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v4, v1, v2}, Lhxu;->a([BLhxu$c;[Lcom/hisign/facedetectv1small/FaceDetect$b;[Landroid/graphics/PointF;)V

    new-instance v5, Lixx$a;

    invoke-direct {v5, p0}, Lixx$a;-><init>(Lixx;)V

    iget-object v0, p0, Lixx;->e:Lhxu$b;

    iget v0, v0, Lhxu$b;->a:I

    iget-object v1, p0, Lixx;->e:Lhxu$b;

    iget v1, v1, Lhxu$b;->b:I

    .line 2000
    if-eqz p1, :cond_10

    if-lez v0, :cond_10

    if-gtz v1, :cond_1b

    .line 0
    :cond_10
    :goto_3
    iget v0, v4, Lhxu$c;->c:I

    if-lez v0, :cond_1d

    const/4 v0, 0x0

    iput v0, p0, Lixx;->n:I

    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->NotSingleFace:Lcom/hisign/facedetectv1small/LiveDetect$c;

    iget-object v1, v4, Lhxu$c;->d:Lcom/hisign/facedetectv1small/LiveDetect$c;

    if-ne v0, v1, :cond_1c

    iget v0, p0, Lixx;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lixx;->o:I

    iget v0, p0, Lixx;->o:I

    iget v1, p0, Lixx;->m:I

    if-lt v0, v1, :cond_11

    const/4 v0, 0x6

    iput v0, v4, Lhxu$c;->b:I

    :cond_11
    :goto_4
    iget-object v0, p0, Lixx;->p:Lhzg;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lixx;->p:Lhzg;

    invoke-virtual {v0}, Lhzg;->e()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "faceDetcRect[0].confidence="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lixx;->w:[Lcom/hisign/facedetectv1small/FaceDetect$b;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v1, v1, Lcom/hisign/facedetectv1small/FaceDetect$b;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_12
    iget-object v0, p0, Lixx;->w:[Lcom/hisign/facedetectv1small/FaceDetect$b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/hisign/facedetectv1small/FaceDetect$b;->e:F

    float-to-double v0, v0

    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v6

    if-lez v0, :cond_13

    iget v0, v4, Lhxu$c;->c:I

    iput v0, v5, Lixx$a;->g:I

    :cond_13
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lixx;->w:[Lcom/hisign/facedetectv1small/FaceDetect$b;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v1, v1, Lcom/hisign/facedetectv1small/FaceDetect$b;->a:I

    int-to-float v1, v1

    iget-object v2, p0, Lixx;->w:[Lcom/hisign/facedetectv1small/FaceDetect$b;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    iget v2, v2, Lcom/hisign/facedetectv1small/FaceDetect$b;->b:I

    int-to-float v2, v2

    iget-object v6, p0, Lixx;->w:[Lcom/hisign/facedetectv1small/FaceDetect$b;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget v6, v6, Lcom/hisign/facedetectv1small/FaceDetect$b;->c:I

    int-to-float v6, v6

    iget-object v7, p0, Lixx;->w:[Lcom/hisign/facedetectv1small/FaceDetect$b;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    iget v7, v7, Lcom/hisign/facedetectv1small/FaceDetect$b;->d:I

    int-to-float v7, v7

    invoke-direct {v0, v1, v2, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v0}, Lixx$a;->a(Landroid/graphics/RectF;)I

    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget v0, v4, Lhxu$c;->c:I

    if-lez v0, :cond_15

    invoke-virtual {v5}, Lixx$a;->h()Lhzh;

    move-result-object v2

    iget-object v0, p0, Lixx;->q:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sget-object v1, Lcom/hisign/facedetectv1small/LiveDetect$d;->OpenMouth:Lcom/hisign/facedetectv1small/LiveDetect$d;

    invoke-virtual {v1}, Lcom/hisign/facedetectv1small/LiveDetect$d;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_20

    iget-object v0, v4, Lhxu$c;->g:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_20

    iget-object v0, v4, Lhxu$c;->g:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_6
    invoke-virtual {v2}, Lhzh;->f()F

    move-result v1

    mul-float v6, v1, v0

    const/4 v7, 0x0

    mul-float/2addr v6, v7

    sub-float/2addr v1, v6

    const/4 v6, 0x0

    cmpg-float v6, v1, v6

    if-gez v6, :cond_14

    const/4 v1, 0x0

    :cond_14
    iget v6, v4, Lhxu$c;->h:F

    iget v7, v4, Lhxu$c;->h:F

    mul-float/2addr v6, v7

    iget v7, v4, Lhxu$c;->i:F

    iget v8, v4, Lhxu$c;->i:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v2, v6}, Lhzh;->b(F)V

    invoke-virtual {v2, v0}, Lhzh;->e(F)V

    invoke-virtual {v2, v1}, Lhzh;->d(F)V

    iget-object v1, p0, Lixx;->p:Lhzg;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lixx;->p:Lhzg;

    invoke-virtual {v1}, Lhzg;->e()Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "fMouthHWRatio="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "fMoveTmp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_15
    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->IsLive:Lcom/hisign/facedetectv1small/LiveDetect$c;

    invoke-virtual {v0}, Lcom/hisign/facedetectv1small/LiveDetect$c;->ordinal()I

    move-result v0

    iget v1, v4, Lhxu$c;->e:I

    if-ne v0, v1, :cond_21

    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->IsLive:Lcom/hisign/facedetectv1small/LiveDetect$c;

    iput-object v0, p0, Lixx;->y:Lcom/hisign/facedetectv1small/LiveDetect$c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lixx;->z:Z

    :cond_16
    :goto_7
    iget-boolean v0, p0, Lixx;->z:Z

    .line 3000
    iget-object v1, v5, Lixx$a;->a:Lhzh;

    invoke-virtual {v1, v0}, Lhzh;->a(Z)V

    .line 0
    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->BadContinuity:Lcom/hisign/facedetectv1small/LiveDetect$c;

    iget-object v0, p0, Lixx;->r:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lixx;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_25

    iget-object v0, p0, Lixx;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    :goto_8
    iget-object v0, p0, Lixx;->j:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->NONE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lixx;->j:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->DONE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    if-eq v0, v1, :cond_18

    const/4 v0, 0x4

    iget v1, v4, Lhxu$c;->b:I

    if-ne v0, v1, :cond_29

    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->BadContinuity:Lcom/hisign/facedetectv1small/LiveDetect$c;

    iget-object v1, v4, Lhxu$c;->d:Lcom/hisign/facedetectv1small/LiveDetect$c;

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lixx;->r:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;

    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->NOTVIDEO:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    invoke-interface {v0, v1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;->a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;)V

    :cond_18
    :goto_9
    iget-object v0, p0, Lixx;->r:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;

    invoke-interface {v0, v5}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;->a(Lhzi;)V

    :cond_19
    iget-object v0, p0, Lixx;->p:Lhzg;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lixx;->p:Lhzg;

    invoke-virtual {v0}, Lhzg;->e()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string/jumbo v0, "FaceLiveDetectSDK"

    const-string/jumbo v1, "doDetect Exit..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    if-eqz v3, :cond_2d

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2000
    :cond_1b
    iput-object p1, v5, Lixx$a;->b:[B

    iput v0, v5, Lixx$a;->c:I

    iput v1, v5, Lixx$a;->d:I

    new-instance v0, Lhzh;

    invoke-direct {v0}, Lhzh;-><init>()V

    iput-object v0, v5, Lixx$a;->a:Lhzh;

    goto/16 :goto_3

    .line 0
    :cond_1c
    const/4 v0, 0x0

    iput v0, p0, Lixx;->o:I

    goto/16 :goto_4

    :cond_1d
    iget-object v0, p0, Lixx;->p:Lhzg;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lixx;->p:Lhzg;

    invoke-virtual {v0}, Lhzg;->e()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "m_NoFaceWaitCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lixx;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1e
    iget v0, p0, Lixx;->n:I

    iget v1, p0, Lixx;->m:I

    if-ge v0, v1, :cond_1f

    iget v0, p0, Lixx;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lixx;->n:I

    :goto_a
    iget-object v0, p0, Lixx;->e:Lhxu$b;

    iget v0, v0, Lhxu$b;->a:I

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lixx;->e:Lhxu$b;

    iget v2, v2, Lhxu$b;->a:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    iget-object v6, p0, Lixx;->e:Lhxu$b;

    iget v6, v6, Lhxu$b;->b:I

    int-to-float v6, v6

    sub-float/2addr v6, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iget-object v7, p0, Lixx;->e:Lhxu$b;

    iget v7, v7, Lhxu$b;->a:I

    int-to-float v7, v7

    add-float/2addr v7, v0

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    iget-object v8, p0, Lixx;->e:Lhxu$b;

    iget v8, v8, Lhxu$b;->b:I

    int-to-float v8, v8

    add-float/2addr v0, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v0, v8

    invoke-direct {v1, v2, v6, v7, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v1}, Lixx$a;->a(Landroid/graphics/RectF;)I

    goto/16 :goto_5

    :cond_1f
    const/4 v0, 0x5

    iput v0, v4, Lhxu$c;->b:I

    goto :goto_a

    :cond_20
    iget-object v0, v4, Lhxu$c;->g:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    goto/16 :goto_6

    :cond_21
    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->Bad3DStructure:Lcom/hisign/facedetectv1small/LiveDetect$c;

    invoke-virtual {v0}, Lcom/hisign/facedetectv1small/LiveDetect$c;->ordinal()I

    move-result v0

    iget v1, v4, Lhxu$c;->e:I

    if-ne v0, v1, :cond_22

    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->Bad3DStructure:Lcom/hisign/facedetectv1small/LiveDetect$c;

    iput-object v0, p0, Lixx;->y:Lcom/hisign/facedetectv1small/LiveDetect$c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lixx;->z:Z

    goto/16 :goto_7

    :cond_22
    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->IsLive:Lcom/hisign/facedetectv1small/LiveDetect$c;

    iget-object v1, v4, Lhxu$c;->d:Lcom/hisign/facedetectv1small/LiveDetect$c;

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lixx;->q:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sget-object v1, Lcom/hisign/facedetectv1small/LiveDetect$d;->ShakeHead:Lcom/hisign/facedetectv1small/LiveDetect$d;

    invoke-virtual {v1}, Lcom/hisign/facedetectv1small/LiveDetect$d;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_23

    iget-object v0, p0, Lixx;->q:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sget-object v1, Lcom/hisign/facedetectv1small/LiveDetect$d;->NodHead:Lcom/hisign/facedetectv1small/LiveDetect$d;

    invoke-virtual {v1}, Lcom/hisign/facedetectv1small/LiveDetect$d;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_16

    :cond_23
    iget-object v0, p0, Lixx;->q:[I

    const/4 v1, 0x0

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$d;->Movement3D:Lcom/hisign/facedetectv1small/LiveDetect$d;

    invoke-virtual {v2}, Lcom/hisign/facedetectv1small/LiveDetect$d;->ordinal()I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lixx;->u:Lhxu;

    iget-object v1, p0, Lixx;->q:[I

    invoke-virtual {v0, v1}, Lhxu;->a([I)I

    iget-object v0, p0, Lixx;->u:Lhxu;

    iget-object v1, p0, Lixx;->w:[Lcom/hisign/facedetectv1small/FaceDetect$b;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v4, v1, v2}, Lhxu;->a([BLhxu$c;[Lcom/hisign/facedetectv1small/FaceDetect$b;[Landroid/graphics/PointF;)V

    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->IsLive:Lcom/hisign/facedetectv1small/LiveDetect$c;

    invoke-virtual {v0}, Lcom/hisign/facedetectv1small/LiveDetect$c;->ordinal()I

    move-result v0

    iget v1, v4, Lhxu$c;->e:I

    if-ne v0, v1, :cond_24

    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->IsLive:Lcom/hisign/facedetectv1small/LiveDetect$c;

    iput-object v0, p0, Lixx;->y:Lcom/hisign/facedetectv1small/LiveDetect$c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lixx;->z:Z

    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->IsLive:Lcom/hisign/facedetectv1small/LiveDetect$c;

    iput-object v0, v4, Lhxu$c;->d:Lcom/hisign/facedetectv1small/LiveDetect$c;

    :goto_b
    iget-object v0, p0, Lixx;->p:Lhzg;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lixx;->p:Lhzg;

    invoke-virtual {v0}, Lhzg;->e()Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u52a8\u4f5c\u5b8c\u6210\u4e4b\u540e\u53d6\u76843D\u7ed3\u679c\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lixx;->z:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_24
    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->Bad3DStructure:Lcom/hisign/facedetectv1small/LiveDetect$c;

    iput-object v0, p0, Lixx;->y:Lcom/hisign/facedetectv1small/LiveDetect$c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lixx;->z:Z

    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->IsLive:Lcom/hisign/facedetectv1small/LiveDetect$c;

    iput-object v0, v4, Lhxu$c;->d:Lcom/hisign/facedetectv1small/LiveDetect$c;

    const/4 v0, 0x7

    iput v0, v4, Lhxu$c;->b:I

    goto :goto_b

    :cond_25
    const/4 v2, 0x0

    iget-object v0, p0, Lixx;->s:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzi;

    invoke-virtual {v0}, Lhzi;->c()F

    move-result v1

    iget-object v0, p0, Lixx;->s:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzi;

    invoke-virtual {v0}, Lhzi;->c()F

    move-result v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2e

    iget-object v0, p0, Lixx;->s:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzi;

    invoke-virtual {v0}, Lhzi;->c()F

    move-result v0

    const/4 v1, 0x1

    .line 4000
    :goto_c
    iget-object v2, v5, Lixx$a;->a:Lhzh;

    invoke-virtual {v2}, Lhzh;->f()F

    move-result v2

    .line 0
    cmpg-float v0, v0, v2

    if-gez v0, :cond_17

    iget-object v0, p0, Lixx;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    :cond_26
    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->Bad3DStructure:Lcom/hisign/facedetectv1small/LiveDetect$c;

    iget-object v1, v4, Lhxu$c;->d:Lcom/hisign/facedetectv1small/LiveDetect$c;

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lixx;->r:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;

    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->BAD3D:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    invoke-interface {v0, v1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;->a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;)V

    goto/16 :goto_9

    :cond_27
    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->BadColor:Lcom/hisign/facedetectv1small/LiveDetect$c;

    iget-object v1, v4, Lhxu$c;->d:Lcom/hisign/facedetectv1small/LiveDetect$c;

    if-ne v0, v1, :cond_28

    iget-object v0, p0, Lixx;->r:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;

    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->BADCOLOR:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    invoke-interface {v0, v1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;->a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;)V

    goto/16 :goto_9

    :cond_28
    iget-object v0, p0, Lixx;->r:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;

    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->ACTIONBLEND:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    invoke-interface {v0, v1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;->a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;)V

    goto/16 :goto_9

    :cond_29
    const/4 v0, 0x5

    iget v1, v4, Lhxu$c;->b:I

    if-ne v0, v1, :cond_2a

    iget v0, p0, Lixx;->n:I

    iget v1, p0, Lixx;->m:I

    if-lt v0, v1, :cond_18

    iget-object v0, p0, Lixx;->r:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;

    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->NOTVIDEO:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    invoke-interface {v0, v1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;->a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;)V

    goto/16 :goto_9

    :cond_2a
    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->IsLive:Lcom/hisign/facedetectv1small/LiveDetect$c;

    iget-object v1, v4, Lhxu$c;->d:Lcom/hisign/facedetectv1small/LiveDetect$c;

    if-ne v0, v1, :cond_2b

    iget-object v0, p0, Lixx;->r:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;

    invoke-interface {v0, v5}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;->b(Lhzi;)Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lixx;->a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;)V

    iget-object v0, p0, Lixx;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_9

    :cond_2b
    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->NotLive:Lcom/hisign/facedetectv1small/LiveDetect$c;

    iget-object v1, v4, Lhxu$c;->d:Lcom/hisign/facedetectv1small/LiveDetect$c;

    if-ne v0, v1, :cond_2c

    iget-object v0, p0, Lixx;->r:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;

    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->TIMEOUT:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    invoke-interface {v0, v1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;->a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;)V

    goto/16 :goto_9

    :cond_2c
    iget v0, p0, Lixx;->h:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lixx;->i:J

    sub-long/2addr v6, v8

    long-to-float v1, v6

    cmpg-float v0, v0, v1

    if-gez v0, :cond_18

    iget-object v0, p0, Lixx;->r:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;

    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->TIMEOUT:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    invoke-interface {v0, v1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;->a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;)V

    goto/16 :goto_9

    :cond_2d
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_2e
    move v0, v1

    move v1, v2

    goto/16 :goto_c

    :cond_2f
    move v3, v0

    goto/16 :goto_2
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v2, 0x0

    iget-object v0, p0, Lixx;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v2, p0, Lixx;->f:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lixx;->i:J

    iput v2, p0, Lixx;->l:I

    iput v2, p0, Lixx;->n:I

    iput v2, p0, Lixx;->o:I

    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->NoError:Lcom/hisign/facedetectv1small/LiveDetect$c;

    iput-object v0, p0, Lixx;->y:Lcom/hisign/facedetectv1small/LiveDetect$c;

    iget-object v0, p0, Lixx;->q:[I

    sget-object v1, Lcom/hisign/facedetectv1small/LiveDetect$d;->Idle:Lcom/hisign/facedetectv1small/LiveDetect$d;

    invoke-virtual {v1}, Lcom/hisign/facedetectv1small/LiveDetect$d;->ordinal()I

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Lixx;->u:Lhxu;

    iget-object v1, p0, Lixx;->q:[I

    invoke-virtual {v0, v1}, Lhxu;->b([I)I

    return-void
.end method

.method public final b([BIII)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lixx;->a([BIII)Z

    move-result v0

    return v0
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lhzi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lixx;->s:Ljava/util/ArrayList;

    return-object v0
.end method
