.class public Lcom/alibaba/android/teleconf/widget/DotsProgressBar;
.super Landroid/view/View;
.source "DotsProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/widget/DotsProgressBar$a;
    }
.end annotation


# instance fields
.field private a:F

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:I

.field private g:I

.field private h:I

.field private i:F

.field private j:I

.field private k:I

.field private l:Z

.field private m:I

.field private n:Lcom/alibaba/android/teleconf/widget/DotsProgressBar$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->d:Landroid/graphics/Paint;

    .line 30
    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->e:Landroid/graphics/Paint;

    .line 31
    iput v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->f:I

    .line 33
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->i:F

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->j:I

    .line 35
    iput v4, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->k:I

    .line 36
    iput-boolean v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->l:Z

    .line 37
    iput v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->m:I

    .line 1055
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Leuj$g;->conf_circle_dot_indicator_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->a:F

    .line 1056
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Leuj$f;->C2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->b:I

    .line 1057
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->c:I

    .line 1059
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Leuj$n;->DotsProgressBar:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1061
    sget v1, Leuj$n;->DotsProgressBar_dotRadius:I

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->a:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->a:F

    .line 1062
    sget v1, Leuj$n;->DotsProgressBar_dotColor:I

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->b:I

    .line 1063
    sget v1, Leuj$n;->DotsProgressBar_dotBgColor:I

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->c:I

    .line 1064
    sget v1, Leuj$n;->DotsProgressBar_dotMargin:I

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->i:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->i:F

    .line 1065
    sget v1, Leuj$n;->DotsProgressBar_dotVertical:I

    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->l:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->l:Z

    .line 1066
    sget v1, Leuj$n;->DotsProgressBar_dotOrientation:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->m:I

    .line 1068
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->d:Landroid/graphics/Paint;

    .line 1069
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1070
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->d:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->b:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1072
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->e:Landroid/graphics/Paint;

    .line 1073
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1074
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->e:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->c:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1076
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/DotsProgressBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/DotsProgressBar;

    .prologue
    .line 24
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->f:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/DotsProgressBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/DotsProgressBar;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->f:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/widget/DotsProgressBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/DotsProgressBar;

    .prologue
    .line 24
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->k:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/widget/DotsProgressBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/DotsProgressBar;

    .prologue
    .line 24
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->j:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->n:Lcom/alibaba/android/teleconf/widget/DotsProgressBar$a;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar$a;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/widget/DotsProgressBar$a;-><init>(Lcom/alibaba/android/teleconf/widget/DotsProgressBar;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->n:Lcom/alibaba/android/teleconf/widget/DotsProgressBar$a;

    .line 87
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->f:I

    .line 88
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->n:Lcom/alibaba/android/teleconf/widget/DotsProgressBar$a;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 89
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->n:Lcom/alibaba/android/teleconf/widget/DotsProgressBar$a;

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->n:Lcom/alibaba/android/teleconf/widget/DotsProgressBar$a;

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->n:Lcom/alibaba/android/teleconf/widget/DotsProgressBar$a;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    :cond_0
    return-void
.end method

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

    .line 113
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 116
    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->l:Z

    if-eqz v3, :cond_1

    .line 117
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->h:I

    int-to-float v3, v3

    iget v4, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->j:I

    int-to-float v4, v4

    iget v5, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->a:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->j:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    iget v5, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->i:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    div-float v1, v3, v6

    .line 118
    .local v1, "dY":F
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->g:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v0, v3

    .line 119
    .local v0, "dX":F
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->m:I

    if-ne v3, v8, :cond_0

    .line 120
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->h:I

    int-to-float v3, v3

    sub-float v1, v3, v1

    .line 129
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->j:I

    if-ge v2, v3, :cond_6

    .line 130
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->f:I

    iget v4, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->j:I

    if-eq v3, v4, :cond_2

    .line 133
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->f:I

    if-gt v2, v3, :cond_2

    .line 134
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->a:F

    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 139
    :goto_2
    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->l:Z

    if-eqz v3, :cond_4

    .line 140
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->m:I

    if-ne v3, v8, :cond_3

    .line 141
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->a:F

    mul-float/2addr v3, v6

    iget v4, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->i:F

    add-float/2addr v3, v4

    sub-float/2addr v1, v3

    .line 129
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 123
    .end local v0    # "dX":F
    .end local v1    # "dY":F
    .end local v2    # "i":I
    :cond_1
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->j:I

    int-to-float v4, v4

    iget v5, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->a:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->j:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    iget v5, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->i:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    div-float v0, v3, v6

    .line 124
    .restart local v0    # "dX":F
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->h:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v1, v3

    .line 125
    .restart local v1    # "dY":F
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->m:I

    if-ne v3, v7, :cond_0

    .line 126
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->g:I

    int-to-float v3, v3

    sub-float v0, v3, v0

    goto :goto_0

    .line 136
    .restart local v2    # "i":I
    :cond_2
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->a:F

    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 143
    :cond_3
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->a:F

    mul-float/2addr v3, v6

    iget v4, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->i:F

    add-float/2addr v3, v4

    add-float/2addr v1, v3

    goto :goto_3

    .line 146
    :cond_4
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->m:I

    if-ne v3, v7, :cond_5

    .line 147
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->a:F

    mul-float/2addr v3, v6

    iget v4, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->i:F

    add-float/2addr v3, v4

    sub-float/2addr v0, v3

    goto :goto_3

    .line 149
    :cond_5
    iget v3, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->a:F

    mul-float/2addr v3, v6

    iget v4, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->i:F

    add-float/2addr v3, v4

    add-float/2addr v0, v3

    goto :goto_3

    .line 154
    :cond_6
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
    .line 100
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 101
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->l:Z

    if-eqz v0, :cond_0

    .line 102
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->h:I

    .line 103
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->a:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->g:I

    .line 108
    :goto_0
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->g:I

    iget v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->h:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->setMeasuredDimension(II)V

    .line 109
    return-void

    .line 105
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->g:I

    .line 106
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->a:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->h:I

    goto :goto_0
.end method

.method public setDotsCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->j:I

    .line 81
    return-void
.end method
