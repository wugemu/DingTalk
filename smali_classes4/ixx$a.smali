.class public final Lixx$a;
.super Lhzi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lixx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field b:[B

.field c:I

.field d:I

.field e:Landroid/graphics/RectF;

.field f:Landroid/graphics/Rect;

.field g:I

.field h:Lcom/hisign/facedetectv1small/FaceDetect$a;

.field i:Z

.field j:Z

.field final synthetic k:Lixx;


# direct methods
.method public constructor <init>(Lixx;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lixx$a;->k:Lixx;

    invoke-direct {p0}, Lhzi;-><init>()V

    iput-object v2, p0, Lixx$a;->b:[B

    iput v1, p0, Lixx$a;->c:I

    iput v1, p0, Lixx$a;->d:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lixx$a;->e:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lixx$a;->f:Landroid/graphics/Rect;

    iput v1, p0, Lixx$a;->g:I

    iput-object v2, p0, Lixx$a;->h:Lcom/hisign/facedetectv1small/FaceDetect$a;

    iput-boolean v1, p0, Lixx$a;->i:Z

    iput-boolean v1, p0, Lixx$a;->j:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;)I
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v10, 0x0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 0
    iget-object v0, p0, Lixx$a;->f:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lixx$a;->f:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lixx$a;->f:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lixx$a;->f:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lixx$a;->a:Lhzh;

    iget-object v1, p0, Lixx$a;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lhzh;->a(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lixx$a;->a:Lhzh;

    invoke-virtual {v0, v10}, Lhzh;->a(Z)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget v1, p0, Lixx$a;->c:I

    if-lez v1, :cond_0

    iget v1, p0, Lixx$a;->d:I

    if-lez v1, :cond_0

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lixx$a;->c:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lixx$a;->c:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lixx$a;->d:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lixx$a;->d:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lixx$a;->a:Lhzh;

    invoke-virtual {v1, v0}, Lhzh;->a(Landroid/graphics/RectF;)V

    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lixx$a;->e:Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lixx$a;->e:Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/RectF;->right:F

    sub-float v0, v3, v0

    iput v0, v2, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lixx$a;->e:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lixx$a;->e:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v2, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1000
    iget-object v0, p0, Lixx$a;->b:[B

    if-nez v0, :cond_2

    .line 0
    :cond_1
    :goto_0
    return v10

    .line 1000
    :cond_2
    iget-object v0, p0, Lixx$a;->e:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-double v0, v0

    cmpg-double v0, v0, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lixx$a;->e:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, v0

    cmpg-double v0, v0, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lixx$a;->e:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lixx$a;->c:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget-object v0, p0, Lixx$a;->e:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lixx$a;->d:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    const/4 v0, 0x4

    new-array v2, v0, [I

    iget-object v0, p0, Lixx$a;->e:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    add-double/2addr v0, v8

    double-to-int v0, v0

    aput v0, v2, v10

    const/4 v0, 0x1

    iget-object v1, p0, Lixx$a;->e:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-double v4, v1

    add-double/2addr v4, v8

    double-to-int v1, v4

    aput v1, v2, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lixx$a;->e:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v1

    add-double/2addr v4, v8

    double-to-int v1, v4

    aput v1, v2, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lixx$a;->e:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v1

    add-double/2addr v4, v8

    double-to-int v1, v4

    aput v1, v2, v0

    iget-object v0, p0, Lixx$a;->h:Lcom/hisign/facedetectv1small/FaceDetect$a;

    if-nez v0, :cond_3

    new-instance v0, Lcom/hisign/facedetectv1small/FaceDetect$a;

    invoke-direct {v0}, Lcom/hisign/facedetectv1small/FaceDetect$a;-><init>()V

    iput-object v0, p0, Lixx$a;->h:Lcom/hisign/facedetectv1small/FaceDetect$a;

    :cond_3
    iget-object v0, p0, Lixx$a;->k:Lixx;

    invoke-static {v0}, Lixx;->a(Lixx;)Lcom/hisign/facedetectv1small/FaceDetect;

    move-result-object v0

    iget-object v1, p0, Lixx$a;->b:[B

    iget-object v7, p0, Lixx$a;->h:Lcom/hisign/facedetectv1small/FaceDetect$a;

    iget v4, p0, Lixx$a;->c:I

    iget v5, p0, Lixx$a;->d:I

    .line 2000
    const/4 v3, -0x8

    sget-boolean v8, Lcom/hisign/facedetectv1small/FaceDetect;->a:Z

    if-eqz v8, :cond_6

    const/16 v3, 0x14

    new-array v3, v3, [F

    const/16 v8, 0x9

    const/high16 v9, 0x40000000    # 2.0f

    aput v9, v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/hisign/facedetectv1small/FaceDetect;->a([B[I[FII)I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v3, v7}, Lcom/hisign/facedetectv1small/FaceDetect;->a([FLcom/hisign/facedetectv1small/FaceDetect$a;)I

    .line 1000
    :cond_4
    :goto_1
    if-nez v0, :cond_1

    iget-object v0, p0, Lixx$a;->h:Lcom/hisign/facedetectv1small/FaceDetect$a;

    iget v0, v0, Lcom/hisign/facedetectv1small/FaceDetect$a;->h:F

    sub-float v0, v11, v0

    cmpg-float v1, v0, v6

    if-gez v1, :cond_5

    move v0, v6

    :cond_5
    iget-object v1, p0, Lixx$a;->h:Lcom/hisign/facedetectv1small/FaceDetect$a;

    iget v1, v1, Lcom/hisign/facedetectv1small/FaceDetect$a;->a:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lixx$a;->a:Lhzh;

    invoke-virtual {v2, v1}, Lhzh;->d(F)V

    iget-object v1, p0, Lixx$a;->a:Lhzh;

    iget-object v2, p0, Lixx$a;->h:Lcom/hisign/facedetectv1small/FaceDetect$a;

    iget v2, v2, Lcom/hisign/facedetectv1small/FaceDetect$a;->c:F

    invoke-virtual {v1, v2}, Lhzh;->c(F)V

    iget-object v1, p0, Lixx$a;->a:Lhzh;

    invoke-virtual {v1, v0}, Lhzh;->a(F)V

    iget-object v0, p0, Lixx$a;->a:Lhzh;

    iget-object v1, p0, Lixx$a;->h:Lcom/hisign/facedetectv1small/FaceDetect$a;

    iget v1, v1, Lcom/hisign/facedetectv1small/FaceDetect$a;->j:F

    sub-float v1, v11, v1

    invoke-virtual {v0, v1}, Lhzh;->b(F)V

    goto/16 :goto_0

    :cond_6
    move v0, v3

    goto :goto_1
.end method

.method public final a()[B
    .locals 1

    iget-object v0, p0, Lixx$a;->b:[B

    return-object v0
.end method

.method public final a(I)[B
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v0, p0, Lixx$a;->k:Lixx;

    iget-object v1, p0, Lixx$a;->b:[B

    iget-object v2, p0, Lixx$a;->f:Landroid/graphics/Rect;

    iget v3, p0, Lixx$a;->c:I

    iget v4, p0, Lixx$a;->d:I

    const/16 v5, 0xc8

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lixx;->a(Lixx;[BLandroid/graphics/Rect;IIILandroid/graphics/Rect;)[B

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lixx$a;->g:I

    return v0
.end method

.method public final c()F
    .locals 1

    iget-object v0, p0, Lixx$a;->a:Lhzh;

    invoke-virtual {v0}, Lhzh;->f()F

    move-result v0

    return v0
.end method

.method public final d()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lixx$a;->a:Lhzh;

    invoke-virtual {v0}, Lhzh;->a()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public final e()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lixx$a;->a:Lhzh;

    invoke-virtual {v0}, Lhzh;->b()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lixx$a;->c:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lixx$a;->d:I

    return v0
.end method
