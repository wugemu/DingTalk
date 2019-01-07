.class public Lcom/alibaba/android/user/contact/view/CircleView;
.super Landroid/view/View;
.source "CircleView.java"


# instance fields
.field protected a:F

.field protected b:J

.field protected c:J

.field protected d:J

.field protected e:J

.field protected f:F

.field protected g:F

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Paint;

.field private k:F

.field private l:Landroid/graphics/RectF;

.field private m:Landroid/graphics/RectF;

.field private n:F

.field private o:F

.field private p:F

.field private q:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    .line 59
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->a:F

    .line 46
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->k:F

    .line 48
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->b:J

    .line 50
    iput-wide v2, p0, Lcom/alibaba/android/user/contact/view/CircleView;->c:J

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/view/CircleView;->d:J

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/view/CircleView;->e:J

    .line 54
    const/high16 v0, 0x43af0000    # 350.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->f:F

    .line 55
    const/high16 v0, 0x437a0000    # 250.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->g:F

    .line 110
    const/high16 v0, -0x3cf10000    # -143.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->n:F

    .line 111
    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->o:F

    .line 112
    const/high16 v0, 0x42d40000    # 106.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->p:F

    .line 113
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->q:F

    .line 60
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/CircleView;->a()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v2, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->a:F

    .line 46
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->k:F

    .line 48
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->b:J

    .line 50
    iput-wide v2, p0, Lcom/alibaba/android/user/contact/view/CircleView;->c:J

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/view/CircleView;->d:J

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/view/CircleView;->e:J

    .line 54
    const/high16 v0, 0x43af0000    # 350.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->f:F

    .line 55
    const/high16 v0, 0x437a0000    # 250.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->g:F

    .line 110
    const/high16 v0, -0x3cf10000    # -143.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->n:F

    .line 111
    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->o:F

    .line 112
    const/high16 v0, 0x42d40000    # 106.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->p:F

    .line 113
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->q:F

    .line 65
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/CircleView;->a()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->a:F

    .line 46
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->k:F

    .line 48
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->b:J

    .line 50
    iput-wide v2, p0, Lcom/alibaba/android/user/contact/view/CircleView;->c:J

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/view/CircleView;->d:J

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/view/CircleView;->e:J

    .line 54
    const/high16 v0, 0x43af0000    # 350.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->f:F

    .line 55
    const/high16 v0, 0x437a0000    # 250.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->g:F

    .line 110
    const/high16 v0, -0x3cf10000    # -143.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->n:F

    .line 111
    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->o:F

    .line 112
    const/high16 v0, 0x42d40000    # 106.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->p:F

    .line 113
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->q:F

    .line 70
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/CircleView;->a()V

    .line 71
    return-void
.end method

.method private a()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v6, 0x42c80000    # 100.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v9, 0x1

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/CircleView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42f80000    # 124.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/alibaba/android/user/contact/view/CircleView;->g:F

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/CircleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/alibaba/android/user/contact/view/CircleView;->a:F

    .line 81
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/view/CircleView;->h:Landroid/graphics/Paint;

    .line 82
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CircleView;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CircleView;->h:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CircleView;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/view/CircleView;->i:Landroid/graphics/Paint;

    .line 87
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CircleView;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CircleView;->i:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/view/CircleView;->j:Landroid/graphics/Paint;

    .line 91
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CircleView;->j:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 92
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/alibaba/android/user/contact/view/CircleView;->f:F

    const/high16 v2, 0x42000000    # 32.0f

    iget v3, p0, Lcom/alibaba/android/user/contact/view/CircleView;->f:F

    iget v4, p0, Lcom/alibaba/android/user/contact/view/CircleView;->a:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v6

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lezg$e;->circle_shape_top:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    aput v7, v5, v6

    .line 95
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lezg$e;->circle_shape_down:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    aput v6, v5, v9

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 97
    .local v0, "mShader":Landroid/graphics/Shader;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CircleView;->j:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 101
    return-void
.end method


# virtual methods
.method public final a(F)Z
    .locals 8
    .param p1, "characterProgress"    # F

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 203
    iget v2, p0, Lcom/alibaba/android/user/contact/view/CircleView;->k:F

    mul-float/2addr p1, v2

    .line 204
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/view/CircleView;->b:J

    float-to-int v6, p1

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 206
    .local v0, "progress":J
    iget-wide v2, p0, Lcom/alibaba/android/user/contact/view/CircleView;->c:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 207
    iput-wide v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->c:J

    .line 208
    const/4 v2, 0x1

    .line 210
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final b(F)Z
    .locals 8
    .param p1, "teamworkProgress"    # F

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 215
    iget v2, p0, Lcom/alibaba/android/user/contact/view/CircleView;->k:F

    mul-float/2addr p1, v2

    .line 216
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/view/CircleView;->b:J

    float-to-int v6, p1

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 218
    .local v0, "progress":J
    iget-wide v2, p0, Lcom/alibaba/android/user/contact/view/CircleView;->e:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 219
    iput-wide v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->e:J

    .line 220
    const/4 v2, 0x1

    .line 222
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final c(F)Z
    .locals 8
    .param p1, "communicateProgress"    # F

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 227
    iget v2, p0, Lcom/alibaba/android/user/contact/view/CircleView;->k:F

    mul-float/2addr p1, v2

    .line 228
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/view/CircleView;->b:J

    float-to-int v6, p1

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 230
    .local v0, "progress":J
    iget-wide v2, p0, Lcom/alibaba/android/user/contact/view/CircleView;->d:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 231
    iput-wide v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->d:J

    .line 232
    const/4 v2, 0x1

    .line 234
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->l:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->m:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    .line 121
    :cond_0
    iget v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->f:F

    iget v1, p0, Lcom/alibaba/android/user/contact/view/CircleView;->a:F

    sub-float v7, v0, v1

    .line 122
    .local v7, "arcLeft":F
    iget v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->g:F

    iget v1, p0, Lcom/alibaba/android/user/contact/view/CircleView;->a:F

    sub-float v9, v0, v1

    .line 123
    .local v9, "arcTop":F
    iget v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->f:F

    iget v1, p0, Lcom/alibaba/android/user/contact/view/CircleView;->a:F

    add-float v8, v0, v1

    .line 124
    .local v8, "arcRight":F
    iget v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->g:F

    iget v1, p0, Lcom/alibaba/android/user/contact/view/CircleView;->a:F

    add-float v6, v0, v1

    .line 125
    .local v6, "arcBottom":F
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v7, v9, v8, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->l:Landroid/graphics/RectF;

    .line 126
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/android/user/contact/view/CircleView;->q:F

    add-float/2addr v1, v7

    iget v2, p0, Lcom/alibaba/android/user/contact/view/CircleView;->q:F

    add-float/2addr v2, v9

    iget v4, p0, Lcom/alibaba/android/user/contact/view/CircleView;->q:F

    sub-float v4, v8, v4

    iget v5, p0, Lcom/alibaba/android/user/contact/view/CircleView;->q:F

    sub-float v5, v6, v5

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->m:Landroid/graphics/RectF;

    .line 129
    .end local v6    # "arcBottom":F
    .end local v7    # "arcLeft":F
    .end local v8    # "arcRight":F
    .end local v9    # "arcTop":F
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->h:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->circle_green:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CircleView;->l:Landroid/graphics/RectF;

    iget v2, p0, Lcom/alibaba/android/user/contact/view/CircleView;->n:F

    iget v3, p0, Lcom/alibaba/android/user/contact/view/CircleView;->p:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/android/user/contact/view/CircleView;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->h:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->circle_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CircleView;->l:Landroid/graphics/RectF;

    iget v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->n:F

    iget v2, p0, Lcom/alibaba/android/user/contact/view/CircleView;->p:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/alibaba/android/user/contact/view/CircleView;->o:F

    add-float/2addr v2, v0

    iget v3, p0, Lcom/alibaba/android/user/contact/view/CircleView;->p:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/android/user/contact/view/CircleView;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 135
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->h:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->circle_yellow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CircleView;->l:Landroid/graphics/RectF;

    iget v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->n:F

    iget v2, p0, Lcom/alibaba/android/user/contact/view/CircleView;->p:F

    iget v4, p0, Lcom/alibaba/android/user/contact/view/CircleView;->o:F

    add-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    add-float/2addr v2, v0

    iget v3, p0, Lcom/alibaba/android/user/contact/view/CircleView;->p:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/android/user/contact/view/CircleView;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 140
    iget v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->p:F

    const-wide/16 v4, 0x2

    iget-wide v12, p0, Lcom/alibaba/android/user/contact/view/CircleView;->b:J

    mul-long/2addr v4, v12

    const-wide/16 v12, 0x1

    sub-long/2addr v4, v12

    long-to-float v1, v4

    div-float v3, v0, v1

    .line 142
    .local v3, "percentage":F
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    int-to-long v0, v10

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/view/CircleView;->b:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    .line 143
    int-to-long v0, v10

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/view/CircleView;->c:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->circle_green:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CircleView;->m:Landroid/graphics/RectF;

    iget v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->n:F

    add-float v2, v3, v3

    int-to-float v4, v10

    mul-float/2addr v2, v4

    add-float/2addr v2, v0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/android/user/contact/view/CircleView;->i:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 142
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 146
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 147
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->circle_green_black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 152
    :cond_3
    const/4 v10, 0x0

    :goto_2
    int-to-long v0, v10

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/view/CircleView;->b:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_5

    .line 153
    int-to-long v0, v10

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/view/CircleView;->e:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_4

    .line 154
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->circle_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    :goto_3
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CircleView;->m:Landroid/graphics/RectF;

    iget v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->n:F

    iget v2, p0, Lcom/alibaba/android/user/contact/view/CircleView;->p:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/alibaba/android/user/contact/view/CircleView;->o:F

    add-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    int-to-float v4, v10

    mul-float/2addr v2, v4

    add-float/2addr v2, v0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/android/user/contact/view/CircleView;->i:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 152
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 156
    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 157
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->circle_blue_black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 162
    :cond_5
    const/4 v10, 0x0

    :goto_4
    int-to-long v0, v10

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/view/CircleView;->b:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_7

    .line 163
    int-to-long v0, v10

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/view/CircleView;->d:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_6

    .line 164
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->circle_yellow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    :goto_5
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CircleView;->m:Landroid/graphics/RectF;

    iget v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->n:F

    iget v2, p0, Lcom/alibaba/android/user/contact/view/CircleView;->p:F

    iget v4, p0, Lcom/alibaba/android/user/contact/view/CircleView;->o:F

    add-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    int-to-float v4, v10

    mul-float/2addr v2, v4

    add-float/2addr v2, v0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/android/user/contact/view/CircleView;->i:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 162
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 166
    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 167
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->circle_yellow_black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    .line 172
    :cond_7
    iget v0, p0, Lcom/alibaba/android/user/contact/view/CircleView;->f:F

    iget v1, p0, Lcom/alibaba/android/user/contact/view/CircleView;->g:F

    iget v2, p0, Lcom/alibaba/android/user/contact/view/CircleView;->a:F

    float-to-double v4, v2

    const-wide v12, 0x3ff3333333333333L    # 1.2

    div-double/2addr v4, v12

    double-to-int v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcom/alibaba/android/user/contact/view/CircleView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 173
    return-void
.end method

.method public setCenterX(F)V
    .locals 0
    .param p1, "mCenterX"    # F

    .prologue
    .line 74
    iput p1, p0, Lcom/alibaba/android/user/contact/view/CircleView;->f:F

    .line 75
    return-void
.end method
