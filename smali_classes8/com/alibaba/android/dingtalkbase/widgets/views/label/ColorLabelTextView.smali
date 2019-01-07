.class public Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;
.super Landroid/widget/TextView;
.source "ColorLabelTextView.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 30
    .local v0, "color":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->a:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->a:Landroid/graphics/Paint;

    .line 32
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->a:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 33
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->a:Landroid/graphics/Paint;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 37
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->b:Landroid/graphics/RectF;

    if-nez v1, :cond_1

    .line 38
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->b:Landroid/graphics/RectF;

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 41
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 42
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 43
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 44
    return-void
.end method
