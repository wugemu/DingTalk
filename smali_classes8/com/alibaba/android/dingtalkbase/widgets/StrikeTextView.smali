.class public Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;
.super Landroid/widget/TextView;
.source "StrikeTextView.java"


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:I

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Matrix;

.field private i:Landroid/graphics/LinearGradient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->a:I

    .line 40
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->b:F

    .line 41
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->c:F

    .line 47
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->d:F

    .line 48
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->e:F

    .line 56
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->a()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->a:I

    .line 40
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->b:F

    .line 41
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->c:F

    .line 47
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->d:F

    .line 48
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->e:F

    .line 61
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->a()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->a:I

    .line 40
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->b:F

    .line 41
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->c:F

    .line 47
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->d:F

    .line 48
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->e:F

    .line 66
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->a()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->a:I

    .line 40
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->b:F

    .line 41
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->c:F

    .line 47
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->d:F

    .line 48
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->e:F

    .line 72
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->a()V

    .line 73
    return-void
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcig$c;->ui_common_level4_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->f:I

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->g:Landroid/graphics/Paint;

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->g:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->h:Landroid/graphics/Matrix;

    .line 82
    return-void
.end method

.method private b()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x0

    .line 114
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->b:F

    neg-float v1, v1

    new-array v5, v6, [I

    const/4 v3, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getColor()I

    move-result v4

    aput v4, v5, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->f:I

    aput v4, v5, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->f:I

    aput v4, v5, v3

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getColor()I

    move-result v4

    aput v4, v5, v3

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->i:Landroid/graphics/LinearGradient;

    .line 118
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->d:F

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->setStrikeValue(F)V

    .line 119
    return-void

    .line 115
    :array_0
    .array-data 4
        0x0
        0x3a83126f    # 0.001f
        0x3f7fbe77    # 0.999f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 129
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1134
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1137
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->d:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 1138
    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->d:F

    .line 1140
    :cond_0
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->d:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 1141
    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->d:F

    .line 1143
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->c:F

    div-float v2, v0, v4

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->e:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->c:F

    div-float v4, v0, v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->g:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 131
    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 103
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 104
    sub-int v1, p4, p2

    .line 105
    .local v1, "newWidth":I
    sub-int v0, p5, p3

    .line 106
    .local v0, "newHeight":I
    int-to-float v2, v1

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->b:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    int-to-float v2, v0

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->c:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 107
    :cond_0
    int-to-float v2, v1

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->b:F

    .line 108
    int-to-float v2, v0

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->c:F

    .line 109
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->b()V

    .line 111
    :cond_1
    return-void
.end method

.method public setMaxLines(I)V
    .locals 0
    .param p1, "maxLines"    # I

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 124
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->a:I

    .line 125
    return-void
.end method

.method public setStrikeValue(F)V
    .locals 3
    .param p1, "strikeValue"    # F

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 147
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 168
    :goto_0
    return-void

    .line 150
    :cond_0
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->d:F

    .line 151
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->b:F

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->d:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->e:F

    .line 152
    invoke-static {}, Lcof;->m()Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    invoke-static {}, Lcof;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 154
    invoke-static {}, Lcof;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 155
    invoke-static {}, Lcof;->f()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->d:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->h:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->i:Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 161
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->h:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->b:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 162
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->i:Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 163
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->i:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 167
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->invalidate()V

    goto :goto_0

    .line 164
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 86
    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 89
    .local v1, "textPaint":Landroid/graphics/Paint;
    if-eqz v1, :cond_0

    .line 91
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->b:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->c:F

    .line 97
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->b()V

    .line 99
    :cond_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->b:F

    goto :goto_0
.end method
