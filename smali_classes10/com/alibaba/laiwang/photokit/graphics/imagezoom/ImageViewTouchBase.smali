.class public Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field protected A:Landroid/graphics/RectF;

.field protected B:Landroid/graphics/RectF;

.field private b:Z

.field private c:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$a;

.field private d:I

.field protected l:Lhbh;

.field protected m:Landroid/graphics/Matrix;

.field protected n:Landroid/graphics/Matrix;

.field protected o:Landroid/os/Handler;

.field protected p:Ljava/lang/Runnable;

.field protected q:F

.field protected r:F

.field protected final s:Landroid/graphics/Matrix;

.field protected final t:[F

.field protected u:I

.field protected v:I

.field protected w:Z

.field protected final x:F

.field protected final y:I

.field protected z:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Lhbg;

    invoke-direct {v0}, Lhbg;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->l:Lhbh;

    .line 34
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->m:Landroid/graphics/Matrix;

    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->n:Landroid/graphics/Matrix;

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->o:Landroid/os/Handler;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->p:Ljava/lang/Runnable;

    .line 39
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->r:F

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->s:Landroid/graphics/Matrix;

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->t:[F

    .line 42
    iput v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->u:I

    iput v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->v:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->w:Z

    .line 44
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->x:F

    .line 45
    const/16 v0, 0xc8

    iput v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->y:I

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->z:Landroid/graphics/RectF;

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->A:Landroid/graphics/RectF;

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->B:Landroid/graphics/RectF;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->b:Z

    .line 131
    iput v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->d:I

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, -0x1

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Lhbg;

    invoke-direct {v0}, Lhbg;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->l:Lhbh;

    .line 34
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->m:Landroid/graphics/Matrix;

    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->n:Landroid/graphics/Matrix;

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->o:Landroid/os/Handler;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->p:Ljava/lang/Runnable;

    .line 39
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->r:F

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->s:Landroid/graphics/Matrix;

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->t:[F

    .line 42
    iput v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->u:I

    iput v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->v:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->w:Z

    .line 44
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->x:F

    .line 45
    const/16 v0, 0xc8

    iput v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->y:I

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->z:Landroid/graphics/RectF;

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->A:Landroid/graphics/RectF;

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->B:Landroid/graphics/RectF;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->b:Z

    .line 131
    iput v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->d:I

    .line 61
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, -0x1

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Lhbg;

    invoke-direct {v0}, Lhbg;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->l:Lhbh;

    .line 34
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->m:Landroid/graphics/Matrix;

    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->n:Landroid/graphics/Matrix;

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->o:Landroid/os/Handler;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->p:Ljava/lang/Runnable;

    .line 39
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->r:F

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->s:Landroid/graphics/Matrix;

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->t:[F

    .line 42
    iput v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->u:I

    iput v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->v:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->w:Z

    .line 44
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->x:F

    .line 45
    const/16 v0, 0xc8

    iput v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->y:I

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->z:Landroid/graphics/RectF;

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->A:Landroid/graphics/RectF;

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->B:Landroid/graphics/RectF;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->b:Z

    .line 131
    iput v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->d:I

    .line 66
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a()V

    .line 67
    return-void
.end method

.method private a(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 2
    .param p1, "supportMatrix"    # Landroid/graphics/Matrix;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 311
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->s:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 312
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->s:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 313
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->s:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private a(FF)V
    .locals 1
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    .line 427
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 428
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 429
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/drawable/Drawable;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v10, 0x40800000    # 4.0f

    .line 333
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v8

    int-to-float v5, v8

    .line 334
    .local v5, "viewWidth":F
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v8

    int-to-float v4, v8

    .line 335
    .local v4, "viewHeight":F
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v6, v8

    .line 336
    .local v6, "w":F
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    int-to-float v1, v8

    .line 337
    .local v1, "h":F
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 339
    div-float v7, v5, v6

    .line 340
    .local v7, "widthScale":F
    div-float v2, v4, v1

    .line 342
    .local v2, "heightScale":F
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v0, v8, Landroid/util/DisplayMetrics;->density:F

    .line 343
    .local v0, "desinty":F
    mul-float v8, v6, v0

    div-float v9, v5, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    mul-float v8, v1, v0

    div-float v9, v4, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 344
    mul-float v8, v10, v6

    div-float v7, v5, v8

    .line 345
    mul-float v8, v10, v6

    div-float v2, v4, v8

    .line 347
    :cond_0
    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 348
    .local v3, "scale":F
    invoke-virtual {p2, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 349
    return-void
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->b:Z

    return v0
.end method

.method private b()F
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 268
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 270
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_1

    .line 287
    :cond_0
    :goto_0
    return v5

    .line 274
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 275
    .local v6, "width":I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 276
    .local v4, "height":I
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v0, v7, Landroid/util/DisplayMetrics;->density:F

    .line 278
    .local v0, "desinty":F
    int-to-float v7, v6

    mul-float/2addr v7, v0

    iget v8, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->u:I

    div-int/lit8 v8, v8, 0x4

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    int-to-float v7, v4

    mul-float/2addr v7, v0

    iget v8, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->v:I

    div-int/lit8 v8, v8, 0x4

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_0

    .line 281
    :cond_2
    int-to-float v7, v6

    iget v8, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->u:I

    int-to-float v8, v8

    div-float v3, v7, v8

    .line 282
    .local v3, "fw":F
    int-to-float v7, v4

    iget v8, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->v:I

    int-to-float v8, v8

    div-float v2, v7, v8

    .line 283
    .local v2, "fh":F
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x40800000    # 4.0f

    mul-float v5, v7, v8

    .line 284
    .local v5, "max":F
    const/high16 v7, 0x3fc00000    # 1.5f

    cmpg-float v7, v5, v7

    if-gez v7, :cond_0

    .line 285
    const/high16 v5, 0x3fc00000    # 1.5f

    goto :goto_0
.end method

.method private b(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 6
    .param p1, "supportMatrix"    # Landroid/graphics/Matrix;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 361
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 363
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 367
    :goto_0
    return-object v2

    .line 364
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 365
    .local v1, "m":Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->z:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 366
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->z:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 367
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->z:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method private c(F)V
    .locals 4
    .param p1, "scale"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 437
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 438
    .local v0, "cx":F
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 439
    .local v1, "cy":F
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a(FFF)V

    .line 440
    return-void
.end method


# virtual methods
.method protected final a(Landroid/graphics/Matrix;ZZ)Landroid/graphics/RectF;
    .locals 12
    .param p1, "supportMatrix"    # Landroid/graphics/Matrix;
    .param p2, "horizontal"    # Z
    .param p3, "vertical"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 393
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 395
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_0

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v10, v10, v10, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 423
    :goto_0
    return-object v8

    .line 397
    :cond_0
    iget-object v8, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->A:Landroid/graphics/RectF;

    invoke-virtual {v8, v10, v10, v10, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 398
    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->b(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v4

    .line 399
    .local v4, "rect":Landroid/graphics/RectF;
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 400
    .local v3, "height":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 401
    .local v7, "width":F
    const/4 v0, 0x0

    .local v0, "deltaX":F
    const/4 v1, 0x0

    .line 402
    .local v1, "deltaY":F
    if-eqz p3, :cond_1

    .line 403
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v5

    .line 404
    .local v5, "viewHeight":I
    int-to-float v8, v5

    cmpg-float v8, v3, v8

    if-gez v8, :cond_3

    .line 405
    int-to-float v8, v5

    sub-float/2addr v8, v3

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    .line 412
    .end local v5    # "viewHeight":I
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 413
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v6

    .line 414
    .local v6, "viewWidth":I
    int-to-float v8, v6

    cmpg-float v8, v7, v8

    if-gez v8, :cond_5

    .line 415
    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    .line 422
    .end local v6    # "viewWidth":I
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->A:Landroid/graphics/RectF;

    invoke-virtual {v8, v0, v1, v10, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 423
    iget-object v8, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->A:Landroid/graphics/RectF;

    goto :goto_0

    .line 406
    .restart local v5    # "viewHeight":I
    :cond_3
    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_4

    .line 407
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    goto :goto_1

    .line 408
    :cond_4
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 409
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v8, v9

    goto :goto_1

    .line 416
    .end local v5    # "viewHeight":I
    .restart local v6    # "viewWidth":I
    :cond_5
    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_6

    .line 417
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    goto :goto_2

    .line 418
    :cond_6
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 419
    int-to-float v8, v6

    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v8, v9

    goto :goto_2
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 74
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 75
    return-void
.end method

.method protected final a(DD)V
    .locals 7
    .param p1, "dx"    # D
    .param p3, "dy"    # D

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 466
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 467
    .local v0, "rect":Landroid/graphics/RectF;
    if-nez v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->B:Landroid/graphics/RectF;

    double-to-float v2, p1

    double-to-float v3, p3

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 471
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->B:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 472
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->B:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->B:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, v1, v2}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a(FF)V

    .line 473
    invoke-virtual {p0, v5, v5}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a(ZZ)V

    goto :goto_0
.end method

.method protected a(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 457
    return-void
.end method

.method protected final a(FFD)V
    .locals 11
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F
    .param p3, "durationMs"    # D

    .prologue
    .line 490
    float-to-double v6, p1

    .line 491
    .local v6, "dx":D
    float-to-double v8, p2

    .line 492
    .local v8, "dy":D
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 493
    .local v4, "startTime":J
    iget-object v10, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->o:Landroid/os/Handler;

    new-instance v0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$2;

    const-wide v2, 0x4072c00000000000L    # 300.0

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$2;-><init>(Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;DJDD)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 515
    return-void
.end method

.method protected final a(FFF)V
    .locals 4
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 449
    iget v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->q:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    iget p1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->q:F

    .line 450
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v1

    .line 451
    .local v1, "oldScale":F
    div-float v0, p1, v1

    .line 2432
    .local v0, "deltaScale":F
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->n:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 2433
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 453
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a(F)V

    .line 454
    invoke-virtual {p0, v3, v3}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a(ZZ)V

    .line 455
    return-void
.end method

.method protected final a(FFFF)V
    .locals 12
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "durationMs"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getMaxZoom()F

    move-result v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getMaxZoom()F

    move-result p1

    .line 519
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 520
    .local v4, "startTime":J
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v7

    .line 522
    .local v7, "oldScale":F
    sub-float v6, p1, v7

    .line 524
    .local v6, "deltaScale":F
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->n:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 525
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 526
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a(Landroid/graphics/Matrix;ZZ)Landroid/graphics/RectF;

    move-result-object v10

    .line 528
    .local v10, "rect":Landroid/graphics/RectF;
    iget v1, v10, Landroid/graphics/RectF;->left:F

    mul-float/2addr v1, p1

    add-float v8, p2, v1

    .line 529
    .local v8, "destX":F
    iget v1, v10, Landroid/graphics/RectF;->top:F

    mul-float/2addr v1, p1

    add-float v9, p3, v1

    .line 531
    .local v9, "destY":F
    iget-object v11, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->o:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$3;

    move-object v2, p0

    move/from16 v3, p4

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$3;-><init>(Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {v11, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 551
    return-void
.end method

.method protected final a(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 5
    .param p1, "bitmapRect"    # Landroid/graphics/RectF;
    .param p2, "scrollRect"    # Landroid/graphics/RectF;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 477
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v1, v2

    .line 478
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v0, v2

    .line 480
    .local v0, "height":F
    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_0

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_0

    iput v4, p2, Landroid/graphics/RectF;->top:F

    .line 481
    :cond_0
    iget v2, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_1

    iput v4, p2, Landroid/graphics/RectF;->left:F

    .line 482
    :cond_1
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_2

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float v2, v4, v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p2, Landroid/graphics/RectF;->top:F

    .line 483
    :cond_2
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    sub-float v3, v0, v4

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 484
    sub-float v2, v0, v4

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p2, Landroid/graphics/RectF;->top:F

    .line 485
    :cond_3
    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_4

    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float v2, v4, v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 486
    :cond_4
    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    sub-float v3, v1, v4

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_5

    sub-float v2, v1, v4

    iget v3, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 487
    :cond_5
    return-void
.end method

.method protected a(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 260
    return-void
.end method

.method protected a(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/Matrix;F)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "reset"    # Z
    .param p3, "initial_matrix"    # Landroid/graphics/Matrix;
    .param p4, "maxZoom"    # F

    .prologue
    .line 227
    if-eqz p1, :cond_1

    .line 228
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->w:Z

    .line 231
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->m:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V

    .line 233
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    :goto_0
    if-eqz p2, :cond_0

    .line 240
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 241
    if-eqz p3, :cond_0

    .line 242
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->n:Landroid/graphics/Matrix;

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 248
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_2

    .line 249
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->b()F

    move-result v0

    iput v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->q:F

    .line 253
    :goto_1
    invoke-virtual {p0, p1}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a(Landroid/graphics/drawable/Drawable;)V

    .line 254
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 236
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 251
    :cond_2
    iput p4, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->q:F

    goto :goto_1
.end method

.method protected final a(ZZ)V
    .locals 5
    .param p1, "horizontal"    # Z
    .param p2, "vertical"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 383
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 385
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->n:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2, v4, v4}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a(Landroid/graphics/Matrix;ZZ)Landroid/graphics/RectF;

    move-result-object v1

    .line 387
    .local v1, "rect":Landroid/graphics/RectF;
    iget v2, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 388
    :cond_2
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, v2, v3}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a(FF)V

    goto :goto_0
.end method

.method protected b(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 459
    return-void
.end method

.method public final b(FF)V
    .locals 4
    .param p1, "scale"    # F
    .param p2, "durationMs"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 443
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 444
    .local v0, "cx":F
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 445
    .local v1, "cy":F
    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a(FFFF)V

    .line 446
    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/Matrix;F)V
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "reset"    # Z
    .param p3, "initial_matrix"    # Landroid/graphics/Matrix;
    .param p4, "maxZoom"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v6

    .line 211
    .local v6, "viewWidth":I
    if-gtz v6, :cond_0

    .line 212
    new-instance v0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$1;-><init>(Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;Landroid/graphics/drawable/Drawable;ZLandroid/graphics/Matrix;F)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->p:Ljava/lang/Runnable;

    .line 223
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/Matrix;F)V

    goto :goto_0
.end method

.method public final c(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 462
    float-to-double v0, p1

    float-to-double v2, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a(DD)V

    .line 463
    return-void
.end method

.method protected getBitmapRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->n:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->b(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 323
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->n:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->n:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getMaxZoom()F
    .locals 1

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->b()F

    move-result v0

    iput v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->q:F

    .line 296
    iget v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->q:F

    return v0
.end method

.method public getMinZoom()F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 300
    iget v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->r:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 301
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->r:F

    .line 303
    :cond_0
    iget v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->r:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public getScale()F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 379
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->n:Landroid/graphics/Matrix;

    .line 2352
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->t:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2353
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->t:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 379
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->b:Z

    .line 92
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->b:Z

    .line 98
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 102
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 103
    sub-int v1, p4, p2

    iput v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->u:I

    .line 104
    sub-int v1, p5, p3

    iput v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->v:I

    .line 105
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->p:Ljava/lang/Runnable;

    .line 106
    .local v0, "r":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 107
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->p:Ljava/lang/Runnable;

    .line 108
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 111
    iget-boolean v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->w:Z

    if-eqz v1, :cond_3

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->m:Landroid/graphics/Matrix;

    invoke-direct {p0, v1, v2}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V

    .line 114
    iget v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 117
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getMinZoom()F

    move-result v1

    invoke-virtual {p0, v1, v3, v3}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a(FFF)V

    .line 128
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 120
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getMinZoom()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->c(F)V

    goto :goto_0

    .line 123
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->m:Landroid/graphics/Matrix;

    invoke-direct {p0, v1, v2}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V

    .line 124
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 125
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getMinZoom()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->c(F)V

    goto :goto_0
.end method

.method public setFitToScreen(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->w:Z

    if-eq p1, v0, :cond_0

    .line 83
    iput-boolean p1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->w:Z

    .line 84
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->requestLayout()V

    .line 86
    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 137
    iput-boolean v3, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->w:Z

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->d:I

    .line 1196
    :cond_0
    if-eqz p1, :cond_1

    .line 1197
    new-instance v0, Lhbf;

    invoke-direct {v0, p1}, Lhbf;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, v3, v4, v2}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->b(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/Matrix;F)V

    :goto_0
    return-void

    .line 1199
    :cond_1
    invoke-virtual {p0, v4, v3, v4, v2}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->b(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/Matrix;F)V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 204
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->b(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/Matrix;F)V

    .line 205
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    return-void
.end method

.method public setOnBitmapChangedListener(Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$a;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->c:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$a;

    .line 71
    return-void
.end method
