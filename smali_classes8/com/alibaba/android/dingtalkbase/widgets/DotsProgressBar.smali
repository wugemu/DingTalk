.class public Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;
.super Landroid/view/View;
.source "DotsProgressBar.java"


# instance fields
.field private a:F

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/os/Handler;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->b:Landroid/graphics/Paint;

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->c:Landroid/graphics/Paint;

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->d:Landroid/os/Handler;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->e:I

    .line 27
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->h:I

    .line 28
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->i:I

    .line 70
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->j:I

    .line 71
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->k:Ljava/lang/Runnable;

    .line 32
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->a(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->b:Landroid/graphics/Paint;

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->c:Landroid/graphics/Paint;

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->d:Landroid/os/Handler;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->e:I

    .line 27
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->h:I

    .line 28
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->i:I

    .line 70
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->j:I

    .line 71
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->k:Ljava/lang/Runnable;

    .line 37
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->a(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x1

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->b:Landroid/graphics/Paint;

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->c:Landroid/graphics/Paint;

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->d:Landroid/os/Handler;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->e:I

    .line 27
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->h:I

    .line 28
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->i:I

    .line 70
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->j:I

    .line 71
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->k:Ljava/lang/Runnable;

    .line 42
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->a(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;

    .prologue
    .line 19
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->e:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->e:I

    return p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcig$d;->circle_indicator_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->a:F

    .line 48
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->b:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->c:Landroid/graphics/Paint;

    const v1, -0xc75201

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;

    .prologue
    .line 19
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->j:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;

    .prologue
    .line 19
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->i:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->k:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 99
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 101
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->f:I

    int-to-float v3, v3

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->i:I

    int-to-float v4, v4

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->a:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->i:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->h:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float v0, v3, v6

    .line 102
    .local v0, "dX":F
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->g:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v1, v3

    .line 103
    .local v1, "dY":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->i:I

    if-ge v2, v3, :cond_1

    .line 104
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->e:I

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->i:I

    if-eq v3, v4, :cond_0

    .line 107
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->e:I

    if-gt v2, v3, :cond_0

    .line 108
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->a:F

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 113
    :goto_1
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->a:F

    mul-float/2addr v3, v6

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->h:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_0
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->a:F

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 116
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 91
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->f:I

    .line 92
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->a:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->g:I

    .line 93
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->f:I

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->g:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->setMeasuredDimension(II)V

    .line 95
    return-void
.end method

.method public setDotsCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->i:I

    .line 58
    return-void
.end method
