.class public Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;
.super Landroid/view/View;
.source "DotsProgressBarV2.java"


# instance fields
.field private a:F

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Paint;

.field private i:I

.field private j:I

.field private k:I

.field private l:F

.field private m:I

.field private n:Z

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->d:Landroid/graphics/Paint;

    .line 29
    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->e:Landroid/graphics/Paint;

    .line 30
    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->f:Landroid/graphics/Paint;

    .line 31
    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->g:Landroid/graphics/Paint;

    .line 32
    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->h:Landroid/graphics/Paint;

    .line 33
    iput v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->i:I

    .line 35
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->l:F

    .line 36
    const/16 v0, 0x8

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->m:I

    .line 37
    iput-boolean v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->n:Z

    .line 38
    iput v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->o:I

    .line 39
    iput v9, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->p:I

    .line 1057
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Leuj$g;->conf_circle_dot_indicator_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->a:F

    .line 1058
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Leuj$f;->C2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->b:I

    .line 1059
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->c:I

    .line 1061
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Leuj$n;->DotsProgressBar:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1063
    sget v1, Leuj$n;->DotsProgressBar_dotRadius:I

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->a:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->a:F

    .line 1064
    sget v1, Leuj$n;->DotsProgressBar_dotColor:I

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->b:I

    .line 1065
    sget v1, Leuj$n;->DotsProgressBar_dotBgColor:I

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->c:I

    .line 1066
    sget v1, Leuj$n;->DotsProgressBar_dotMargin:I

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->l:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->l:F

    .line 1067
    sget v1, Leuj$n;->DotsProgressBar_dotVertical:I

    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->n:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->n:Z

    .line 1068
    sget v1, Leuj$n;->DotsProgressBar_dotOrientation:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->o:I

    .line 1070
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->d:Landroid/graphics/Paint;

    .line 1071
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1072
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->d:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->b:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1074
    iget v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->b:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 1075
    iget v2, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->b:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 1076
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->b:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 1077
    iget v4, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->b:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 1079
    int-to-float v5, v1

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 1080
    int-to-float v6, v1

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 1081
    int-to-float v1, v1

    const v7, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v7

    float-to-int v1, v1

    .line 1083
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->e:Landroid/graphics/Paint;

    .line 1084
    iget-object v7, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->e:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1085
    iget-object v7, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->e:Landroid/graphics/Paint;

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1087
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->f:Landroid/graphics/Paint;

    .line 1088
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->f:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1089
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->f:Landroid/graphics/Paint;

    invoke-static {v6, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1091
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->g:Landroid/graphics/Paint;

    .line 1092
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->g:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1093
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->g:Landroid/graphics/Paint;

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1096
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->h:Landroid/graphics/Paint;

    .line 1097
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->h:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1098
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->h:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->c:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1100
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    .line 137
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 139
    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->n:Z

    if-eqz v3, :cond_2

    .line 140
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->k:I

    int-to-float v3, v3

    iget v4, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->m:I

    int-to-float v4, v4

    iget v5, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->a:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->m:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    iget v5, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->l:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    div-float v1, v3, v6

    .line 141
    .local v1, "dY":F
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->j:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v0, v3

    .line 142
    .local v0, "dX":F
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->o:I

    if-ne v3, v8, :cond_0

    .line 143
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->k:I

    int-to-float v3, v3

    sub-float v1, v3, v1

    .line 152
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->m:I

    if-ge v2, v3, :cond_a

    .line 153
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->m:I

    if-nez v3, :cond_3

    .line 165
    :cond_1
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->a:F

    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 168
    :goto_2
    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->n:Z

    if-eqz v3, :cond_8

    .line 169
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->o:I

    if-ne v3, v8, :cond_7

    .line 170
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->a:F

    mul-float/2addr v3, v6

    iget v4, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->l:F

    add-float/2addr v3, v4

    sub-float/2addr v1, v3

    .line 152
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 146
    .end local v0    # "dX":F
    .end local v1    # "dY":F
    .end local v2    # "i":I
    :cond_2
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->j:I

    int-to-float v3, v3

    iget v4, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->m:I

    int-to-float v4, v4

    iget v5, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->a:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->m:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    iget v5, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->l:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    div-float v0, v3, v6

    .line 147
    .restart local v0    # "dX":F
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->k:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v1, v3

    .line 148
    .restart local v1    # "dY":F
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->o:I

    if-ne v3, v7, :cond_0

    .line 149
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->j:I

    int-to-float v3, v3

    sub-float v0, v3, v0

    goto :goto_0

    .line 156
    .restart local v2    # "i":I
    :cond_3
    if-nez v2, :cond_4

    .line 157
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->a:F

    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 158
    :cond_4
    if-ne v2, v7, :cond_5

    .line 159
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->a:F

    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 160
    :cond_5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 161
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->a:F

    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 162
    :cond_6
    if-ne v2, v8, :cond_1

    .line 163
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->a:F

    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 172
    :cond_7
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->a:F

    mul-float/2addr v3, v6

    iget v4, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->l:F

    add-float/2addr v3, v4

    add-float/2addr v1, v3

    goto :goto_3

    .line 175
    :cond_8
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->o:I

    if-ne v3, v7, :cond_9

    .line 176
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->a:F

    mul-float/2addr v3, v6

    iget v4, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->l:F

    add-float/2addr v3, v4

    sub-float/2addr v0, v3

    goto :goto_3

    .line 178
    :cond_9
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->a:F

    mul-float/2addr v3, v6

    iget v4, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->l:F

    add-float/2addr v3, v4

    add-float/2addr v0, v3

    goto :goto_3

    .line 183
    :cond_a
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 125
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->n:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->k:I

    .line 127
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->a:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->j:I

    .line 132
    :goto_0
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->j:I

    iget v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->k:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->setMeasuredDimension(II)V

    .line 133
    return-void

    .line 129
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->j:I

    .line 130
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->a:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->k:I

    goto :goto_0
.end method

.method public setDotsCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBarV2;->m:I

    .line 105
    return-void
.end method
