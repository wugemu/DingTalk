.class public Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;
.super Landroid/widget/FrameLayout;
.source "RoundedFrameLayout.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:Landroid/graphics/Path;

.field private k:Landroid/graphics/Paint;

.field private l:Lcom/alibaba/android/user/namecard/widget/FixedAttribute;

.field private m:F

.field private n:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-direct {p0}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->a()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    invoke-direct {p0}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->a()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    invoke-direct {p0}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->a()V

    .line 81
    return-void
.end method

.method private a(I)F
    .locals 3
    .param p1, "dp"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 323
    const/4 v0, 0x1

    int-to-float v1, p1

    .line 324
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 323
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private a(F)I
    .locals 1
    .param p1, "px"    # F

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, p1, v0

    float-to-int v0, v0

    return v0
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 112
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->j:Landroid/graphics/Path;

    .line 114
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->k:Landroid/graphics/Paint;

    .line 115
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->k:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    invoke-static {}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    new-instance v0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout$1;-><init>(Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;)V

    .line 130
    .local v0, "provider":Landroid/view/ViewOutlineProvider;
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 131
    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->setClipToOutline(Z)V

    .line 133
    .end local v0    # "provider":Landroid/view/ViewOutlineProvider;
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 85
    sget-object v1, Lezg$n;->RoundedFrameLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    .local v0, "attributes":Landroid/content/res/TypedArray;
    sget v1, Lezg$n;->RoundedFrameLayout_clippedBackgroundColor:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->a:I

    .line 88
    sget v1, Lezg$n;->RoundedFrameLayout_rfBorderColor:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->b:I

    .line 89
    sget v1, Lezg$n;->RoundedFrameLayout_rfBorderWidth:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->d:F

    .line 90
    sget v1, Lezg$n;->RoundedFrameLayout_softBorderColor:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->c:I

    .line 91
    sget v1, Lezg$n;->RoundedFrameLayout_cornerRadius:I

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->e:F

    .line 93
    sget v1, Lezg$n;->RoundedFrameLayout_cornerRadiusTopLeft:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->f:F

    .line 94
    sget v1, Lezg$n;->RoundedFrameLayout_cornerRadiusTopRight:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->g:F

    .line 95
    sget v1, Lezg$n;->RoundedFrameLayout_cornerRadiusBottomRight:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->h:F

    .line 96
    sget v1, Lezg$n;->RoundedFrameLayout_cornerRadiusBottomLeft:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->i:F

    .line 97
    sget v1, Lezg$n;->RoundedFrameLayout_fixed_attribute:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1}, Lcom/alibaba/android/user/namecard/widget/FixedAttribute;->fromId(I)Lcom/alibaba/android/user/namecard/widget/FixedAttribute;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->l:Lcom/alibaba/android/user/namecard/widget/FixedAttribute;

    .line 98
    sget v1, Lezg$n;->RoundedFrameLayout_horizontal_ratio:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->m:F

    .line 99
    sget v1, Lezg$n;->RoundedFrameLayout_vertical_ratio:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->n:F

    .line 100
    iget v1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->d:F

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->d:F

    .line 103
    iget v1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->e:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->c()V

    .line 107
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;

    .prologue
    .line 29
    invoke-static {}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;

    .prologue
    .line 29
    iget v0, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->e:F

    return v0
.end method

.method private static b()Z
    .locals 2

    .prologue
    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 191
    iget v0, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->e:F

    iget v1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->e:F

    iget v2, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->e:F

    iget v3, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->e:F

    .line 2199
    cmpg-float v4, v0, v5

    if-ltz v4, :cond_0

    cmpg-float v4, v1, v5

    if-ltz v4, :cond_0

    cmpg-float v4, v2, v5

    if-ltz v4, :cond_0

    cmpg-float v4, v3, v5

    if-gez v4, :cond_1

    .line 2200
    :cond_0
    :goto_0
    return-void

    .line 2203
    :cond_1
    iput v0, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->f:F

    .line 2204
    iput v1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->g:F

    .line 2205
    iput v2, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->h:F

    .line 2206
    iput v3, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->i:F

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->getHeight()I

    move-result v3

    .line 1183
    iget-object v4, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->j:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 1185
    const/16 v4, 0x8

    new-array v4, v4, [F

    iget v5, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->f:F

    aput v5, v4, v1

    iget v5, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->f:F

    aput v5, v4, v0

    const/4 v5, 0x2

    iget v6, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->g:F

    aput v6, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->g:F

    aput v6, v4, v5

    const/4 v5, 0x4

    iget v6, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->h:F

    aput v6, v4, v5

    const/4 v5, 0x5

    iget v6, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->h:F

    aput v6, v4, v5

    const/4 v5, 0x6

    iget v6, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->i:F

    aput v6, v4, v5

    const/4 v5, 0x7

    iget v6, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->i:F

    aput v6, v4, v5

    .line 1187
    iget-object v5, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->j:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/RectF;

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-direct {v6, v7, v7, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v4, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 2140
    iget v2, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->e:F

    cmpl-float v2, v2, v7

    if-ltz v2, :cond_3

    invoke-static {}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 159
    :goto_0
    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->j:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 163
    :cond_0
    iget v0, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->a:I

    if-eqz v0, :cond_1

    .line 164
    iget v0, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->a:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 167
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 169
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->d:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 171
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->j:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 173
    iget v0, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->c:I

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->k:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 177
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->j:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 179
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 2140
    goto :goto_0
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->b:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->d:F

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->a(F)I

    move-result v0

    return v0
.end method

.method public getClippedBackgroundColor()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->a:I

    return v0
.end method

.method public getCornerRadius()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 248
    const/4 v0, 0x0

    iget v1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->e:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->a(F)I

    move-result v0

    return v0
.end method

.method public getCornerRadiusBottomLeft()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->i:F

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->a(F)I

    move-result v0

    return v0
.end method

.method public getCornerRadiusBottomRight()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->h:F

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->a(F)I

    move-result v0

    return v0
.end method

.method public getCornerRadiusTopLeft()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->f:F

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->a(F)I

    move-result v0

    return v0
.end method

.method public getCornerRadiusTopRight()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->g:F

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->a(F)I

    move-result v0

    return v0
.end method

.method public getSoftBorderColor()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->c:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 333
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 334
    .local v3, "originalWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 335
    .local v2, "originalHeight":I
    iget-object v4, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->l:Lcom/alibaba/android/user/namecard/widget/FixedAttribute;

    sget-object v5, Lcom/alibaba/android/user/namecard/widget/FixedAttribute;->WIDTH:Lcom/alibaba/android/user/namecard/widget/FixedAttribute;

    if-ne v4, v5, :cond_0

    iget v4, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->m:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_0

    .line 336
    int-to-float v4, v3

    iget v5, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->n:F

    iget v6, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->m:F

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 337
    .local v0, "calculatedHeight":I
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-super {p0, p1, v4}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 344
    .end local v0    # "calculatedHeight":I
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->l:Lcom/alibaba/android/user/namecard/widget/FixedAttribute;

    sget-object v5, Lcom/alibaba/android/user/namecard/widget/FixedAttribute;->HEIGHT:Lcom/alibaba/android/user/namecard/widget/FixedAttribute;

    if-ne v4, v5, :cond_1

    iget v4, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->n:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_1

    .line 339
    int-to-float v4, v2

    iget v5, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->m:F

    iget v6, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->n:F

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 340
    .local v1, "calculatedWidth":I
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-super {p0, v4, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0

    .line 342
    .end local v1    # "calculatedWidth":I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 147
    invoke-static {}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->invalidateOutline()V

    .line 150
    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0
    .param p1, "borderColor"    # I

    .prologue
    .line 214
    iput p1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->b:I

    .line 215
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 1
    .param p1, "px"    # F

    .prologue
    .line 226
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 227
    iput p1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->d:F

    .line 229
    :cond_0
    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1
    .param p1, "dp"    # I

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->a(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->setBorderWidth(F)V

    .line 223
    return-void
.end method

.method public setClippedBackgroundColor(I)V
    .locals 0
    .param p1, "clippedBackgroundColor"    # I

    .prologue
    .line 244
    iput p1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->a:I

    .line 245
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1
    .param p1, "px"    # F

    .prologue
    .line 256
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 257
    iput p1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->e:F

    .line 258
    invoke-direct {p0}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->c()V

    .line 260
    :cond_0
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 1
    .param p1, "dp"    # I

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->a(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->setCornerRadius(F)V

    .line 253
    return-void
.end method

.method public setCornerRadiusBottomLeft(F)V
    .locals 1
    .param p1, "px"    # F

    .prologue
    .line 316
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 317
    iput p1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->i:F

    .line 318
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->e:F

    .line 320
    :cond_0
    return-void
.end method

.method public setCornerRadiusBottomLeft(I)V
    .locals 1
    .param p1, "dp"    # I

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->a(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->setCornerRadiusBottomLeft(F)V

    .line 313
    return-void
.end method

.method public setCornerRadiusBottomRight(F)V
    .locals 1
    .param p1, "px"    # F

    .prologue
    .line 301
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 302
    iput p1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->h:F

    .line 303
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->e:F

    .line 305
    :cond_0
    return-void
.end method

.method public setCornerRadiusBottomRight(I)V
    .locals 1
    .param p1, "dp"    # I

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->a(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->setCornerRadiusBottomRight(F)V

    .line 298
    return-void
.end method

.method public setCornerRadiusTopLeft(F)V
    .locals 1
    .param p1, "px"    # F

    .prologue
    .line 271
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 272
    iput p1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->f:F

    .line 273
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->e:F

    .line 275
    :cond_0
    return-void
.end method

.method public setCornerRadiusTopLeft(I)V
    .locals 1
    .param p1, "dp"    # I

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->a(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->setCornerRadiusTopLeft(F)V

    .line 268
    return-void
.end method

.method public setCornerRadiusTopRight(F)V
    .locals 1
    .param p1, "px"    # F

    .prologue
    .line 286
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 287
    iput p1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->g:F

    .line 288
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->e:F

    .line 290
    :cond_0
    return-void
.end method

.method public setCornerRadiusTopRight(I)V
    .locals 1
    .param p1, "dp"    # I

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->a(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->setCornerRadiusTopRight(F)V

    .line 283
    return-void
.end method

.method public setSoftBorderColor(I)V
    .locals 0
    .param p1, "softBorderColor"    # I

    .prologue
    .line 236
    iput p1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->c:I

    .line 237
    return-void
.end method
