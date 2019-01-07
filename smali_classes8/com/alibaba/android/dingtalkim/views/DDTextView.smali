.class public Lcom/alibaba/android/dingtalkim/views/DDTextView;
.super Landroid/view/View;
.source "DDTextView.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:I

.field private e:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DDTextView;->a:Ljava/lang/String;

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DDTextView;->e:Landroid/graphics/Rect;

    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/DDTextView;->a()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/views/DDTextView;->a:Ljava/lang/String;

    .line 30
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/views/DDTextView;->e:Landroid/graphics/Rect;

    .line 39
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/DDTextView;->a()V

    .line 41
    sget-object v4, Lctk$k;->DDTextView:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Lctk$k;->DDTextView_text:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "s":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 46
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/views/DDTextView;->setText(Ljava/lang/String;)V

    .line 49
    :cond_0
    sget v4, Lctk$k;->DDTextView_textColor:I

    const/high16 v5, -0x1000000

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/views/DDTextView;->setTextColor(I)V

    .line 51
    sget v4, Lctk$k;->DDTextView_textSize:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 52
    .local v3, "textSize":I
    if-lez v3, :cond_1

    .line 53
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/views/DDTextView;->setTextSize(I)V

    .line 56
    :cond_1
    sget v4, Lctk$k;->DDTextView_textStyle:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "style":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/views/DDTextView;->setTextStyle(Ljava/lang/String;)V

    .line 59
    sget v4, Lctk$k;->DDTextView_minWidth:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/alibaba/android/dingtalkim/views/DDTextView;->d:I

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    return-void
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DDTextView;->b:Landroid/graphics/Paint;

    .line 66
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DDTextView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DDTextView;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DDTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DDTextView;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DDTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DDTextView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 70
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DDTextView;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 150
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 152
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/views/DDTextView;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 153
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/views/DDTextView;->b:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 154
    .local v2, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 155
    .local v3, "top":F
    iget v1, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 156
    .local v1, "bottom":F
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/views/DDTextView;->e:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    div-float v5, v3, v6

    sub-float/2addr v4, v5

    div-float v5, v1, v6

    sub-float/2addr v4, v5

    float-to-int v0, v4

    .line 157
    .local v0, "baseLineY":I
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/views/DDTextView;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/views/DDTextView;->e:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v0

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/views/DDTextView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 158
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    .line 74
    .line 1080
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1081
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1083
    if-ne v2, v4, :cond_1

    move v0, v1

    .line 1101
    :cond_0
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1102
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1104
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/DDTextView;->b:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/alibaba/android/dingtalkim/views/DDTextView;->c:I

    .line 1105
    if-ne v3, v4, :cond_3

    .line 74
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/views/DDTextView;->setMeasuredDimension(II)V

    .line 76
    return-void

    .line 1086
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DDTextView;->b:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/DDTextView;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DDTextView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    .line 1087
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DDTextView;->getPaddingRight()I

    move-result v3

    add-int/2addr v0, v3

    .line 1088
    if-ne v2, v5, :cond_2

    .line 1089
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1091
    :cond_2
    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/DDTextView;->d:I

    if-ge v0, v1, :cond_0

    .line 1092
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/DDTextView;->d:I

    goto :goto_0

    .line 1108
    :cond_3
    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/DDTextView;->c:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/views/DDTextView;->b:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DDTextView;->getPaddingTop()I

    move-result v4

    add-int/2addr v2, v4

    .line 1109
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DDTextView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    .line 1110
    if-ne v3, v5, :cond_4

    .line 1111
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 123
    const-string/jumbo p1, ""

    .line 125
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/DDTextView;->a:Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DDTextView;->requestLayout()V

    .line 127
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DDTextView;->invalidate()V

    .line 128
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DDTextView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DDTextView;->invalidate()V

    .line 139
    return-void
.end method

.method public setTextSize(I)V
    .locals 2
    .param p1, "size"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DDTextView;->b:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 132
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DDTextView;->requestLayout()V

    .line 133
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DDTextView;->invalidate()V

    .line 134
    return-void
.end method

.method public setTextStyle(Ljava/lang/String;)V
    .locals 3
    .param p1, "style"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 142
    const-string/jumbo v0, "bold"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DDTextView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 144
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DDTextView;->invalidate()V

    .line 146
    :cond_0
    return-void
.end method
