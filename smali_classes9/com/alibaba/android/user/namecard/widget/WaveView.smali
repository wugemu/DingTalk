.class public Lcom/alibaba/android/user/namecard/widget/WaveView;
.super Landroid/view/View;
.source "WaveView.java"


# instance fields
.field public a:Z

.field private b:I

.field private c:F

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/graphics/Paint;

.field private i:Z

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/user/namecard/widget/WaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/user/namecard/widget/WaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/WaveView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->yellow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->b:I

    .line 32
    const/16 v1, 0x32

    iput v1, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->d:I

    .line 36
    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->e:I

    .line 40
    const/16 v1, 0x12c

    iput v1, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->f:I

    .line 45
    iput-boolean v3, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->a:Z

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->g:Ljava/util/List;

    .line 54
    iput-boolean v4, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->i:Z

    .line 68
    sget-object v1, Lezg$n;->WaveView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 71
    sget v1, Lezg$n;->WaveView_wave_color:I

    iget v2, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->b:I

    .line 72
    sget v1, Lezg$n;->WaveView_wave_color_alpha:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->c:F

    .line 73
    sget v1, Lezg$n;->WaveView_wave_width:I

    iget v2, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->e:I

    .line 74
    iget v1, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->e:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->e:I

    .line 75
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {p1, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->j:I

    .line 76
    const/high16 v1, 0x437a0000    # 250.0f

    invoke-static {p1, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->f:I

    .line 77
    sget v1, Lezg$n;->WaveView_wave_coreImageRadius:I

    iget v2, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->d:I

    .line 1084
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->h:Landroid/graphics/Paint;

    .line 1085
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1086
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->h:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->b:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1087
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->g:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    :cond_0
    return-void
.end method

.method private getMinRadius()F
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "minRadius":F
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v1, v2

    .line 165
    .local v1, "radius":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_1

    .line 166
    move v0, v1

    goto :goto_0

    .line 167
    :cond_1
    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    .line 168
    move v0, v1

    goto :goto_0

    .line 172
    .end local v1    # "radius":F
    :cond_2
    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->a:Z

    .line 180
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/WaveView;->invalidate()V

    .line 181
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 224
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->g:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/WaveView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 108
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 113
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 115
    iget-object v5, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->g:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 116
    .local v3, "radius":I
    iget v5, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->d:I

    add-int/2addr v5, v3

    int-to-float v5, v5

    iget v6, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->f:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 117
    .local v4, "scale":F
    float-to-double v6, v4

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double v5, v6, v8

    if-gez v5, :cond_1

    .line 118
    mul-float v0, v11, v4

    .line 123
    .local v0, "alpha":F
    :goto_1
    iget-object v5, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->h:Landroid/graphics/Paint;

    iget v6, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->c:F

    mul-float/2addr v6, v0

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 125
    iget-boolean v5, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->i:Z

    if-eqz v5, :cond_0

    .line 126
    iget-object v5, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->h:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 127
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/WaveView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/WaveView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v7, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->d:I

    add-int/2addr v7, v3

    int-to-float v7, v7

    iget-object v8, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 132
    :cond_0
    iget-object v5, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->h:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    iget-object v5, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->h:Landroid/graphics/Paint;

    iget v6, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->j:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 134
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/WaveView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/WaveView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v7, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->d:I

    add-int/2addr v7, v3

    int-to-float v7, v7

    iget-object v8, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 136
    cmpg-float v5, v4, v10

    if-gez v5, :cond_2

    .line 138
    iget-object v5, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->g:Ljava/util/List;

    add-int/lit8 v6, v3, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 113
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 120
    .end local v0    # "alpha":F
    :cond_1
    sub-float v5, v10, v4

    mul-float v0, v11, v5

    .restart local v0    # "alpha":F
    goto :goto_1

    .line 141
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->g:Ljava/util/List;

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 145
    .end local v0    # "alpha":F
    .end local v3    # "radius":I
    .end local v4    # "scale":F
    :cond_3
    iget-object v5, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 146
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 147
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gez v5, :cond_4

    .line 148
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 153
    :cond_5
    invoke-direct {p0}, Lcom/alibaba/android/user/namecard/widget/WaveView;->getMinRadius()F

    move-result v5

    iget v6, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->e:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_6

    .line 154
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/WaveView;->b()V

    .line 157
    :cond_6
    iget-boolean v5, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->a:Z

    if-eqz v5, :cond_7

    .line 158
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/WaveView;->invalidate()V

    .line 160
    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 93
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 94
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 95
    .local v0, "height":I
    if-lez v1, :cond_0

    if-lez v0, :cond_0

    .line 96
    if-le v1, v0, :cond_1

    div-int/lit8 v2, v0, 0x2

    :goto_0
    iput v2, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->f:I

    .line 98
    :cond_0
    return-void

    .line 96
    :cond_1
    div-int/lit8 v2, v1, 0x2

    goto :goto_0
.end method

.method public setFill(Z)V
    .locals 0
    .param p1, "fill"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->i:Z

    .line 221
    return-void
.end method

.method public setImageRadius(I)V
    .locals 0
    .param p1, "imageRadius"    # I

    .prologue
    .line 212
    iput p1, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->d:I

    .line 213
    return-void
.end method

.method public setMaxRadius(I)V
    .locals 0
    .param p1, "maxRadius"    # I

    .prologue
    .line 208
    iput p1, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->f:I

    .line 209
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 201
    iput p1, p0, Lcom/alibaba/android/user/namecard/widget/WaveView;->e:I

    .line 202
    return-void
.end method
