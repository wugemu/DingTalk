.class public final Lkfc;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkfc$b;,
        Lkfc$d;,
        Lkfc$a;,
        Lkfc$c;
    }
.end annotation


# static fields
.field private static final c:Landroid/view/animation/Interpolator;

.field private static final d:Landroid/view/animation/Interpolator;

.field private static final e:Landroid/view/animation/Interpolator;

.field private static final f:Landroid/view/animation/Interpolator;


# instance fields
.field public final a:Lkfc$c;

.field public b:I

.field private final g:[I

.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/graphics/drawable/Drawable$Callback;

.field private j:F

.field private k:Landroid/content/res/Resources;

.field private l:Landroid/view/View;

.field private m:Landroid/view/animation/Animation;

.field private n:F

.field private o:D

.field private p:D

.field private q:Landroid/view/animation/Animation;

.field private r:Landroid/graphics/drawable/ShapeDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lkfc;->c:Landroid/view/animation/Interpolator;

    .line 49
    new-instance v0, Lkfc$a;

    invoke-direct {v0, v1}, Lkfc$a;-><init>(B)V

    sput-object v0, Lkfc;->d:Landroid/view/animation/Interpolator;

    .line 50
    new-instance v0, Lkfc$d;

    invoke-direct {v0, v1}, Lkfc$d;-><init>(B)V

    sput-object v0, Lkfc;->e:Landroid/view/animation/Interpolator;

    .line 51
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lkfc;->f:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    .line 129
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 85
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    move-object/from16 v0, p0

    iput-object v2, v0, Lkfc;->g:[I

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lkfc;->h:Ljava/util/ArrayList;

    .line 99
    new-instance v2, Lkfc$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lkfc$1;-><init>(Lkfc;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lkfc;->i:Landroid/graphics/drawable/Drawable$Callback;

    .line 130
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lkfc;->l:Landroid/view/View;

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lkfc;->k:Landroid/content/res/Resources;

    .line 132
    new-instance v2, Lkfc$c;

    move-object/from16 v0, p0

    iget-object v3, v0, Lkfc;->i:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v2, v3}, Lkfc$c;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lkfc;->a:Lkfc$c;

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lkfc;->a:Lkfc$c;

    move-object/from16 v0, p0

    iget-object v3, v0, Lkfc;->g:[I

    invoke-virtual {v2, v3}, Lkfc$c;->a([I)V

    .line 1178
    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    const-wide v6, 0x4021800000000000L    # 8.75

    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    const/high16 v10, 0x41200000    # 10.0f

    const/high16 v11, 0x40a00000    # 5.0f

    .line 2140
    move-object/from16 v0, p0

    iget-object v12, v0, Lkfc;->a:Lkfc$c;

    .line 2141
    move-object/from16 v0, p0

    iget-object v13, v0, Lkfc;->k:Landroid/content/res/Resources;

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    .line 2142
    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    .line 2143
    float-to-double v14, v13

    mul-double/2addr v2, v14

    move-object/from16 v0, p0

    iput-wide v2, v0, Lkfc;->o:D

    .line 2144
    float-to-double v2, v13

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lkfc;->p:D

    .line 2145
    double-to-float v2, v8

    mul-float/2addr v2, v13

    .line 2580
    iput v2, v12, Lkfc$c;->h:F

    .line 2581
    iget-object v3, v12, Lkfc$c;->b:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2582
    invoke-virtual {v12}, Lkfc$c;->d()V

    .line 2146
    float-to-double v2, v13

    mul-double/2addr v2, v6

    .line 2651
    iput-wide v2, v12, Lkfc$c;->r:D

    .line 3541
    const/4 v2, 0x0

    iput v2, v12, Lkfc$c;->k:I

    .line 2148
    mul-float v2, v10, v13

    mul-float v3, v11, v13

    .line 4467
    float-to-int v2, v2

    iput v2, v12, Lkfc$c;->s:I

    .line 4468
    float-to-int v2, v3

    iput v2, v12, Lkfc$c;->t:I

    .line 2149
    move-object/from16 v0, p0

    iget-wide v2, v0, Lkfc;->o:D

    double-to-int v2, v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lkfc;->p:D

    double-to-int v3, v4

    .line 4627
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    .line 4629
    iget-wide v4, v12, Lkfc$c;->r:D

    const-wide/16 v6, 0x0

    cmpg-double v3, v4, v6

    if-lez v3, :cond_0

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2

    .line 4630
    :cond_0
    iget v2, v12, Lkfc$c;->h:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 4634
    :goto_0
    iput v2, v12, Lkfc$c;->i:F

    .line 2150
    move-object/from16 v0, p0

    iget-wide v2, v0, Lkfc;->o:D

    .line 5154
    move-object/from16 v0, p0

    iget-object v4, v0, Lkfc;->l:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lkff;->a(Landroid/content/Context;)V

    .line 5155
    const/high16 v4, 0x3fe00000    # 1.75f

    invoke-static {v4}, Lkff;->a(F)I

    move-result v4

    .line 5156
    const/4 v5, 0x0

    invoke-static {v5}, Lkff;->a(F)I

    move-result v5

    .line 5157
    const/high16 v6, 0x40600000    # 3.5f

    invoke-static {v6}, Lkff;->a(F)I

    move-result v6

    .line 5158
    new-instance v7, Lkfc$b;

    double-to-int v2, v2

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v6, v2}, Lkfc$b;-><init>(Lkfc;II)V

    .line 5159
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2, v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lkfc;->r:Landroid/graphics/drawable/ShapeDrawable;

    .line 5160
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 5161
    move-object/from16 v0, p0

    iget-object v2, v0, Lkfc;->l:Landroid/view/View;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lkfc;->r:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 5163
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lkfc;->r:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    int-to-float v3, v6

    int-to-float v5, v5

    int-to-float v4, v4

    const/high16 v6, 0x1e000000

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 5328
    move-object/from16 v0, p0

    iget-object v2, v0, Lkfc;->a:Lkfc$c;

    .line 5329
    new-instance v3, Lkfc$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lkfc$2;-><init>(Lkfc;Lkfc$c;)V

    .line 5345
    sget-object v4, Lkfc;->f:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5346
    const-wide/16 v4, 0x29a

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 5347
    new-instance v4, Lkfc$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lkfc$3;-><init>(Lkfc;Lkfc$c;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 5364
    new-instance v4, Lkfc$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lkfc$4;-><init>(Lkfc;Lkfc$c;)V

    .line 5390
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 5391
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 5392
    sget-object v5, Lkfc;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5393
    const-wide/16 v6, 0x535

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 5394
    new-instance v5, Lkfc$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v2}, Lkfc$5;-><init>(Lkfc;Lkfc$c;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 5413
    move-object/from16 v0, p0

    iput-object v3, v0, Lkfc;->q:Landroid/view/animation/Animation;

    .line 5414
    move-object/from16 v0, p0

    iput-object v4, v0, Lkfc;->m:Landroid/view/animation/Animation;

    .line 136
    return-void

    .line 4632
    :cond_2
    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    iget-wide v4, v12, Lkfc$c;->r:D

    sub-double/2addr v2, v4

    double-to-float v2, v2

    goto/16 :goto_0

    .line 85
    :array_0
    .array-data 4
        -0x36cbc9
        -0xc8a40f
        -0x82dc2
        -0xcb5cb0
    .end array-data
.end method

.method static synthetic a(Lkfc;F)F
    .locals 0
    .param p0, "x0"    # Lkfc;
    .param p1, "x1"    # F

    .prologue
    .line 42
    iput p1, p0, Lkfc;->n:F

    return p1
.end method

.method static synthetic a(Lkfc;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lkfc;

    .prologue
    .line 42
    iget-object v0, p0, Lkfc;->m:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic a()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lkfc;->e:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic b(Lkfc;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lkfc;

    .prologue
    .line 42
    iget-object v0, p0, Lkfc;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lkfc;->d:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic c(Lkfc;)F
    .locals 1
    .param p0, "x0"    # Lkfc;

    .prologue
    .line 42
    iget v0, p0, Lkfc;->n:F

    return v0
.end method


# virtual methods
.method final a(F)V
    .locals 0
    .param p1, "rotation"    # F

    .prologue
    .line 282
    iput p1, p0, Lkfc;->j:F

    .line 283
    invoke-virtual {p0}, Lkfc;->invalidateSelf()V

    .line 284
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 249
    iget-object v0, p0, Lkfc;->r:Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lkfc;->r:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lkfc;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    iget-object v0, p0, Lkfc;->r:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 254
    :cond_0
    invoke-virtual {p0}, Lkfc;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 255
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 256
    .local v7, "saveCount":I
    iget v0, p0, Lkfc;->j:F

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 257
    iget-object v8, p0, Lkfc;->a:Lkfc$c;

    .line 5476
    iget-object v0, v8, Lkfc$c;->d:Landroid/graphics/Paint;

    iget v1, v8, Lkfc$c;->v:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5477
    iget-object v0, v8, Lkfc$c;->d:Landroid/graphics/Paint;

    iget v1, v8, Lkfc$c;->u:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5479
    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, v8, Lkfc$c;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 5481
    iget-object v1, v8, Lkfc$c;->a:Landroid/graphics/RectF;

    .line 5482
    invoke-virtual {v1, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 5483
    iget v0, v8, Lkfc$c;->i:F

    iget v2, v8, Lkfc$c;->i:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 5484
    iget v0, v8, Lkfc$c;->e:F

    iget v2, v8, Lkfc$c;->g:F

    add-float/2addr v0, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v2, v0

    .line 5485
    iget v0, v8, Lkfc$c;->f:F

    iget v3, v8, Lkfc$c;->g:F

    add-float/2addr v0, v3

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v0, v3

    .line 5486
    sub-float v3, v0, v2

    .line 5487
    iget-object v0, v8, Lkfc$c;->b:Landroid/graphics/Paint;

    iget-object v4, v8, Lkfc$c;->j:[I

    iget v5, v8, Lkfc$c;->k:I

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 5488
    iget-object v0, v8, Lkfc$c;->b:Landroid/graphics/Paint;

    iget v4, v8, Lkfc$c;->u:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5489
    const/4 v4, 0x0

    iget-object v5, v8, Lkfc$c;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 5494
    iget-boolean v0, v8, Lkfc$c;->o:Z

    if-eqz v0, :cond_1

    .line 5495
    iget-object v0, v8, Lkfc$c;->p:Landroid/graphics/Path;

    if-nez v0, :cond_2

    .line 5496
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v8, Lkfc$c;->p:Landroid/graphics/Path;

    .line 5497
    iget-object v0, v8, Lkfc$c;->p:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 5503
    :goto_0
    iget v0, v8, Lkfc$c;->i:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, v8, Lkfc$c;->q:F

    mul-float/2addr v0, v1

    .line 5504
    iget-wide v4, v8, Lkfc$c;->r:D

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v4, v10

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    float-to-double v10, v1

    add-double/2addr v4, v10

    double-to-float v1, v4

    .line 5505
    iget-wide v4, v8, Lkfc$c;->r:D

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v4, v10

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    float-to-double v10, v9

    add-double/2addr v4, v10

    double-to-float v4, v4

    .line 5510
    iget-object v5, v8, Lkfc$c;->p:Landroid/graphics/Path;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 5511
    iget-object v5, v8, Lkfc$c;->p:Landroid/graphics/Path;

    iget v9, v8, Lkfc$c;->s:I

    int-to-float v9, v9

    iget v10, v8, Lkfc$c;->q:F

    mul-float/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5512
    iget-object v5, v8, Lkfc$c;->p:Landroid/graphics/Path;

    iget v9, v8, Lkfc$c;->s:I

    int-to-float v9, v9

    iget v10, v8, Lkfc$c;->q:F

    mul-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget v10, v8, Lkfc$c;->t:I

    int-to-float v10, v10

    iget v11, v8, Lkfc$c;->q:F

    mul-float/2addr v10, v11

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5514
    iget-object v5, v8, Lkfc$c;->p:Landroid/graphics/Path;

    sub-float v0, v1, v0

    invoke-virtual {v5, v0, v4}, Landroid/graphics/Path;->offset(FF)V

    .line 5515
    iget-object v0, v8, Lkfc$c;->p:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5517
    iget-object v0, v8, Lkfc$c;->c:Landroid/graphics/Paint;

    iget-object v1, v8, Lkfc$c;->j:[I

    iget v4, v8, Lkfc$c;->k:I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5518
    iget-object v0, v8, Lkfc$c;->c:Landroid/graphics/Paint;

    iget v1, v8, Lkfc$c;->u:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5519
    add-float v0, v2, v3

    const/high16 v1, 0x40a00000    # 5.0f

    sub-float/2addr v0, v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 5521
    iget-object v0, v8, Lkfc$c;->p:Landroid/graphics/Path;

    iget-object v1, v8, Lkfc$c;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 258
    :cond_1
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 259
    return-void

    .line 5499
    :cond_2
    iget-object v0, v8, Lkfc$c;->p:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_0
.end method

.method public final getAlpha()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lkfc;->a:Lkfc$c;

    .line 5561
    iget v0, v0, Lkfc$c;->u:I

    .line 262
    return v0
.end method

.method public final getIntrinsicHeight()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 239
    iget-wide v0, p0, Lkfc;->p:D

    double-to-int v0, v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 244
    iget-wide v0, p0, Lkfc;->o:D

    double-to-int v0, v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 288
    const/4 v0, -0x3

    return v0
.end method

.method public final isRunning()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 293
    iget-object v2, p0, Lkfc;->h:Ljava/util/ArrayList;

    .line 294
    .local v2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 295
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 296
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    .line 297
    .local v1, "animator":Landroid/view/animation/Animation;
    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v4

    if-nez v4, :cond_0

    .line 298
    const/4 v4, 0x1

    .line 301
    .end local v1    # "animator":Landroid/view/animation/Animation;
    :goto_1
    return v4

    .line 295
    .restart local v1    # "animator":Landroid/view/animation/Animation;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 301
    .end local v1    # "animator":Landroid/view/animation/Animation;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public final setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 267
    iget-object v0, p0, Lkfc;->a:Lkfc$c;

    .line 5568
    iput p1, v0, Lkfc$c;->u:I

    .line 268
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 272
    iget-object v0, p0, Lkfc;->a:Lkfc$c;

    .line 6553
    iget-object v1, v0, Lkfc$c;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6554
    invoke-virtual {v0}, Lkfc$c;->d()V

    .line 273
    return-void
.end method

.method public final start()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 306
    iget-object v0, p0, Lkfc;->m:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 307
    iget-object v0, p0, Lkfc;->a:Lkfc$c;

    invoke-virtual {v0}, Lkfc$c;->b()V

    .line 309
    iget-object v0, p0, Lkfc;->a:Lkfc$c;

    .line 6606
    iget v0, v0, Lkfc$c;->f:F

    .line 309
    iget-object v1, p0, Lkfc;->a:Lkfc$c;

    .line 7587
    iget v1, v1, Lkfc$c;->e:F

    .line 309
    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lkfc;->l:Landroid/view/View;

    iget-object v1, p0, Lkfc;->q:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 316
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lkfc;->a:Lkfc$c;

    .line 8541
    const/4 v1, 0x0

    iput v1, v0, Lkfc$c;->k:I

    .line 313
    iget-object v0, p0, Lkfc;->a:Lkfc$c;

    invoke-virtual {v0}, Lkfc$c;->c()V

    .line 314
    iget-object v0, p0, Lkfc;->l:Landroid/view/View;

    iget-object v1, p0, Lkfc;->m:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public final stop()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 320
    iget-object v0, p0, Lkfc;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 321
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkfc;->a(F)V

    .line 322
    iget-object v0, p0, Lkfc;->a:Lkfc$c;

    invoke-virtual {v0, v1}, Lkfc$c;->a(Z)V

    .line 323
    iget-object v0, p0, Lkfc;->a:Lkfc$c;

    .line 9541
    iput v1, v0, Lkfc$c;->k:I

    .line 324
    iget-object v0, p0, Lkfc;->a:Lkfc$c;

    invoke-virtual {v0}, Lkfc$c;->c()V

    .line 325
    return-void
.end method
