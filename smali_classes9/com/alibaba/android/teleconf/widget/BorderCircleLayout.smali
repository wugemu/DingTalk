.class public Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;
.super Landroid/widget/RelativeLayout;
.source "BorderCircleLayout.java"


# instance fields
.field private final a:I

.field private final b:I

.field private c:Landroid/graphics/RectF;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;->a:I

    .line 20
    const/16 v0, 0xa

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;->b:I

    .line 38
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;->e:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;->getPaddingLeft()I

    move-result v9

    .line 44
    .local v9, "x":I
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;->getPaddingTop()I

    move-result v10

    .line 46
    .local v10, "y":I
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;->getPaddingRight()I

    move-result v1

    sub-int v8, v0, v1

    .line 47
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;->getPaddingBottom()I

    move-result v1

    sub-int v7, v0, v1

    .line 50
    .local v7, "height":I
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;->c:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    add-int/lit8 v1, v9, 0xa

    int-to-float v1, v1

    add-int/lit8 v2, v10, 0xa

    int-to-float v2, v2

    add-int v3, v9, v8

    add-int/lit8 v3, v3, -0xa

    int-to-float v3, v3

    add-int v4, v10, v7

    add-int/lit8 v4, v4, -0xa

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;->c:Landroid/graphics/RectF;

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;->d:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;->d:Landroid/graphics/Paint;

    .line 62
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;->d:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Leuj$f;->pure_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 65
    .local v6, "color":I
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    .end local v6    # "color":I
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;->c:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 71
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 72
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;->c:Landroid/graphics/RectF;

    add-int/lit8 v1, v9, 0xa

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 54
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;->c:Landroid/graphics/RectF;

    add-int/lit8 v1, v10, 0xa

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 55
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;->c:Landroid/graphics/RectF;

    add-int v1, v9, v8

    add-int/lit8 v1, v1, -0xa

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 56
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/BorderCircleLayout;->c:Landroid/graphics/RectF;

    add-int v1, v10, v7

    add-int/lit8 v1, v1, -0xa

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method
