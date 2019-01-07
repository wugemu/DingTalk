.class public Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;
.super Landroid/view/View;
.source "ConfCallAnimView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$a;,
        Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$b;,
        Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$d;,
        Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$c;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:I

.field private c:F

.field private d:F

.field private e:F

.field private f:I

.field private g:F

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Path;

.field private j:Landroid/graphics/RectF;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$c;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:Z

.field private n:I

.field private o:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$a;

.field private p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->a:Landroid/os/Handler;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->b:I

    .line 50
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->c:F

    .line 51
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->d:F

    .line 52
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->e:F

    .line 53
    const/16 v0, 0x50

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->f:I

    .line 55
    const/high16 v0, 0x43700000    # 240.0f

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->g:F

    .line 65
    iput v2, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->l:I

    .line 66
    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->m:Z

    .line 67
    iput v2, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->n:I

    .line 71
    new-instance v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;-><init>(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->p:Ljava/lang/Runnable;

    .line 1153
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Leuj$n;->ConfCallAnimView:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1156
    sget v1, Leuj$n;->ConfCallAnimView_callAnimStrokeWidth:I

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->c:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->c:F

    .line 1157
    sget v1, Leuj$n;->ConfCallAnimView_callAnimCenterWidth:I

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->g:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->g:F

    .line 1158
    sget v1, Leuj$n;->ConfCallAnimView_callAnimStrokeColor:I

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->b:I

    .line 1159
    sget v1, Leuj$n;->ConfCallAnimView_callAnimRefreshInterval:I

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->f:I

    .line 1161
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->h:Landroid/graphics/Paint;

    .line 1162
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->h:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1163
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->h:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->b:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1164
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->h:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->c:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1165
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->h:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1167
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->j:Landroid/graphics/RectF;

    .line 1169
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;
    .param p1, "x1"    # Landroid/graphics/Path;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->i:Landroid/graphics/Path;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->m:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)Landroid/graphics/Path;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->i:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    .prologue
    .line 40
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->n:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->o:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$a;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    .prologue
    .line 40
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->l:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)I
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    .prologue
    .line 40
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->n:I

    return v0
.end method

.method static synthetic j(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    .prologue
    .line 40
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->f:I

    return v0
.end method

.method static synthetic k(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->a:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 270
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->l:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->postInvalidate()V

    .line 274
    return-void
.end method

.method public getAnimationType()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->l:I

    return v0
.end method

.method public getRefreshInterval()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->f:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 349
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 350
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->p:Ljava/lang/Runnable;

    .line 354
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 307
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 308
    if-nez p1, :cond_0

    .line 345
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->getWidth()I

    move-result v11

    .line 312
    .local v11, "viewWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->getHeight()I

    move-result v10

    .line 314
    .local v10, "viewHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v8, v12

    .line 315
    .local v8, "bigCircleDotX":F
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v9, v12

    .line 318
    .local v9, "bigCircleDotY":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->g:F

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->getHeight()I

    move-result v13

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_1

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->c:F

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->g:F

    .line 322
    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->g:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    sub-float v5, v8, v12

    .line 323
    .local v5, "bgLeft":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->g:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    sub-float v7, v9, v12

    .line 324
    .local v7, "bgTop":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->g:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float v6, v8, v12

    .line 325
    .local v6, "bgRight":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->g:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float v4, v9, v12

    .line 326
    .local v4, "bgBottom":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->j:Landroid/graphics/RectF;

    invoke-virtual {v12, v5, v7, v6, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 328
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->m:Z

    if-nez v12, :cond_3

    .line 329
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->l:I

    if-eqz v12, :cond_2

    .line 331
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->l:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 1195
    if-lez v11, :cond_2

    if-gtz v10, :cond_4

    .line 337
    :cond_2
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->m:Z

    .line 340
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->m:Z

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->i:Landroid/graphics/Path;

    if-eqz v12, :cond_b

    .line 341
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->i:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->h:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1198
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->k:Ljava/util/List;

    if-nez v12, :cond_6

    .line 1199
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->k:Ljava/util/List;

    .line 1203
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->e:F

    float-to-int v12, v12

    mul-int/lit8 v13, v12, 0x5

    .line 1204
    div-int/lit8 v12, v11, 0x2

    div-int/lit8 v14, v13, 0x2

    sub-int v17, v12, v14

    .line 1205
    div-int/lit8 v12, v11, 0x2

    div-int/lit8 v14, v13, 0x2

    add-int v18, v12, v14

    .line 1206
    div-int/lit8 v12, v11, 0x2

    mul-int/lit8 v14, v13, 0x3

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v12, v14

    .line 1207
    div-int/lit8 v14, v11, 0x2

    mul-int/lit8 v13, v13, 0x3

    div-int/lit8 v13, v13, 0x2

    add-int v19, v14, v13

    .line 1208
    int-to-float v13, v10

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->c:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->g:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float/2addr v13, v14

    float-to-int v13, v13

    .line 1209
    const/4 v15, 0x0

    move/from16 v16, v12

    .line 1210
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v19

    if-gt v0, v1, :cond_2

    .line 1212
    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_7

    .line 1213
    :cond_5
    new-instance v12, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$d;

    move/from16 v0, v16

    int-to-float v14, v0

    int-to-float v0, v13

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v12, v0, v14, v1, v2}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$d;-><init>(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;FFI)V

    move v14, v15

    .line 1242
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->k:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1210
    move/from16 v0, v16

    int-to-float v12, v0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->e:F

    add-float/2addr v12, v15

    float-to-int v12, v12

    move/from16 v16, v12

    move v15, v14

    goto :goto_2

    .line 1201
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->k:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 1215
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->f:I

    move/from16 v20, v0

    .line 1217
    if-nez v15, :cond_8

    .line 1218
    int-to-float v12, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->g:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->c:F

    move/from16 v21, v0

    sub-float v14, v14, v21

    const/high16 v21, 0x40800000    # 4.0f

    div-float v14, v14, v21

    add-float/2addr v12, v14

    float-to-int v12, v12

    .line 1237
    :goto_4
    new-instance v14, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$d;

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v12, v12

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-direct {v14, v0, v1, v12, v2}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$d;-><init>(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;FFI)V

    .line 1239
    add-int/lit8 v12, v15, 0x1

    move-object/from16 v23, v14

    move v14, v12

    move-object/from16 v12, v23

    goto :goto_3

    .line 1219
    :cond_8
    const/4 v12, 0x1

    if-ne v15, v12, :cond_9

    .line 1220
    int-to-float v12, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->g:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->c:F

    move/from16 v21, v0

    sub-float v14, v14, v21

    const/high16 v21, 0x40000000    # 2.0f

    div-float v14, v14, v21

    sub-float/2addr v12, v14

    float-to-int v12, v12

    .line 1221
    move/from16 v0, v16

    int-to-float v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->e:F

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    mul-float v21, v21, v22

    const/high16 v22, 0x40400000    # 3.0f

    div-float v21, v21, v22

    sub-float v14, v14, v21

    .line 1222
    new-instance v21, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$d;

    int-to-float v0, v13

    move/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    move/from16 v3, v20

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$d;-><init>(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;FFI)V

    .line 1223
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->k:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1224
    :cond_9
    const/4 v12, 0x2

    if-ne v15, v12, :cond_a

    .line 1225
    int-to-float v12, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->g:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->c:F

    move/from16 v21, v0

    sub-float v14, v14, v21

    const/high16 v21, 0x40000000    # 2.0f

    div-float v14, v14, v21

    add-float/2addr v12, v14

    float-to-int v12, v12

    .line 1226
    move/from16 v0, v16

    int-to-float v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->e:F

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    sub-float v14, v14, v21

    .line 1227
    new-instance v21, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$d;

    int-to-float v0, v13

    move/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    move/from16 v3, v20

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$d;-><init>(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;FFI)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->k:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1229
    :cond_a
    const/4 v12, 0x3

    if-ne v15, v12, :cond_c

    .line 1230
    int-to-float v12, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->g:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->c:F

    move/from16 v21, v0

    sub-float v14, v14, v21

    const/high16 v21, 0x40800000    # 4.0f

    div-float v14, v14, v21

    sub-float/2addr v12, v14

    float-to-int v12, v12

    .line 1232
    move/from16 v0, v16

    int-to-float v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->e:F

    move/from16 v21, v0

    const/high16 v22, 0x40400000    # 3.0f

    div-float v21, v21, v22

    sub-float v14, v14, v21

    .line 1233
    new-instance v21, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$d;

    int-to-float v0, v13

    move/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    move/from16 v3, v20

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$d;-><init>(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;FFI)V

    .line 1234
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->k:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 343
    :cond_b
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_0

    :cond_c
    move v12, v13

    goto/16 :goto_4
.end method

.method public setAnimationType(I)V
    .locals 2
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 277
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iput p1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->l:I

    .line 281
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->m:Z

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->i:Landroid/graphics/Path;

    .line 283
    iput v1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->n:I

    goto :goto_0
.end method

.method public setOnDrawListener(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$a;)V
    .locals 0
    .param p1, "l"    # Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$a;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->o:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$a;

    .line 303
    return-void
.end method

.method public setRefreshInterval(I)V
    .locals 0
    .param p1, "interval"    # I

    .prologue
    .line 291
    if-gtz p1, :cond_0

    .line 295
    :goto_0
    return-void

    .line 294
    :cond_0
    iput p1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->f:I

    goto :goto_0
.end method
