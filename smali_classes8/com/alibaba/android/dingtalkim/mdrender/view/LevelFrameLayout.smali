.class public Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;
.super Landroid/widget/FrameLayout;
.source "LevelFrameLayout.java"


# static fields
.field private static final a:I


# instance fields
.field private final b:Ljava/lang/String;

.field private c:I

.field private d:Landroid/graphics/Paint;

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "#E4E4E4"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->b:Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->a()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->b:Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->a()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->b:Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->a()V

    .line 40
    return-void
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->setWillNotDraw(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->f:I

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->e:I

    .line 46
    iget v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->e:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->g:I

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->d:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->d:Landroid/graphics/Paint;

    sget v1, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->e:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->d:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    return-void
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->c:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 75
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_0
    iget v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->c:I

    if-ge v6, v0, :cond_0

    .line 76
    iget v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->g:I

    iget v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->f:I

    mul-int/2addr v1, v6

    add-int/2addr v0, v1

    int-to-float v1, v0

    const/4 v2, 0x0

    iget v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->g:I

    iget v3, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->f:I

    mul-int/2addr v3, v6

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 75
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method public setLevel(I)V
    .locals 4
    .param p1, "level"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 58
    iget v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->c:I

    if-ne p1, v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    if-ltz p1, :cond_0

    .line 62
    iput p1, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->c:I

    .line 63
    if-nez p1, :cond_2

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->setPadding(IIII)V

    .line 68
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->invalidate()V

    goto :goto_0

    .line 66
    :cond_2
    iget v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->f:I

    iget v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->c:I

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->setPadding(IIII)V

    goto :goto_1
.end method
