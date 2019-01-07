.class public Lin/srain/cube/views/ptr/header/MaterialHeader;
.super Landroid/view/View;
.source "MaterialHeader.java"

# interfaces
.implements Lkey;


# instance fields
.field private a:Lkfc;

.field private b:F

.field private c:Lin/srain/cube/views/ptr/PtrFrameLayout;

.field private d:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->b:F

    .line 23
    new-instance v0, Lin/srain/cube/views/ptr/header/MaterialHeader$1;

    invoke-direct {v0, p0}, Lin/srain/cube/views/ptr/header/MaterialHeader$1;-><init>(Lin/srain/cube/views/ptr/header/MaterialHeader;)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->d:Landroid/view/animation/Animation;

    .line 34
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->a()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->b:F

    .line 23
    new-instance v0, Lin/srain/cube/views/ptr/header/MaterialHeader$1;

    invoke-direct {v0, p0}, Lin/srain/cube/views/ptr/header/MaterialHeader$1;-><init>(Lin/srain/cube/views/ptr/header/MaterialHeader;)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->d:Landroid/view/animation/Animation;

    .line 39
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->a()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->b:F

    .line 23
    new-instance v0, Lin/srain/cube/views/ptr/header/MaterialHeader$1;

    invoke-direct {v0, p0}, Lin/srain/cube/views/ptr/header/MaterialHeader$1;-><init>(Lin/srain/cube/views/ptr/header/MaterialHeader;)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->d:Landroid/view/animation/Animation;

    .line 44
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->a()V

    .line 45
    return-void
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/header/MaterialHeader;)F
    .locals 1
    .param p0, "x0"    # Lin/srain/cube/views/ptr/header/MaterialHeader;

    .prologue
    .line 17
    iget v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->b:F

    return v0
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/header/MaterialHeader;F)F
    .locals 0
    .param p0, "x0"    # Lin/srain/cube/views/ptr/header/MaterialHeader;
    .param p1, "x1"    # F

    .prologue
    .line 17
    iput p1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->b:F

    return p1
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, -0x1

    .line 79
    new-instance v0, Lkfc;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lkfc;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lkfc;

    .line 80
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lkfc;

    .line 1221
    iput v2, v0, Lkfc;->b:I

    .line 1222
    iget-object v0, v0, Lkfc;->a:Lkfc$c;

    .line 1457
    iput v2, v0, Lkfc$c;->v:I

    .line 81
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lkfc;

    invoke-virtual {v0, p0}, Lkfc;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 82
    return-void
.end method

.method static synthetic b(Lin/srain/cube/views/ptr/header/MaterialHeader;)Lkfc;
    .locals 1
    .param p0, "x0"    # Lin/srain/cube/views/ptr/header/MaterialHeader;

    .prologue
    .line 17
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lkfc;

    return-object v0
.end method

.method static synthetic c(Lin/srain/cube/views/ptr/header/MaterialHeader;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lin/srain/cube/views/ptr/header/MaterialHeader;

    .prologue
    .line 17
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->d:Landroid/view/animation/Animation;

    return-object v0
.end method


# virtual methods
.method public final a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 1
    .param p1, "frame"    # Lin/srain/cube/views/ptr/PtrFrameLayout;

    .prologue
    .line 129
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->b:F

    .line 130
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lkfc;

    invoke-virtual {v0}, Lkfc;->stop()V

    .line 131
    return-void
.end method

.method public final a(Lin/srain/cube/views/ptr/PtrFrameLayout;ZBLkfe;)V
    .locals 8
    .param p1, "frame"    # Lin/srain/cube/views/ptr/PtrFrameLayout;
    .param p2, "isUnderTouch"    # Z
    .param p3, "status"    # B
    .param p4, "ptrIndicator"    # Lkfe;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const v5, 0x3f4ccccd    # 0.8f

    .line 166
    invoke-virtual {p4}, Lkfe;->g()F

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 168
    .local v0, "percent":F
    const/4 v3, 0x2

    if-ne p3, v3, :cond_0

    .line 169
    iget-object v3, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lkfc;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lkfc;->setAlpha(I)V

    .line 170
    iget-object v3, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lkfc;

    .line 3187
    iget-object v3, v3, Lkfc;->a:Lkfc$c;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lkfc$c;->a(Z)V

    .line 172
    mul-float v2, v0, v5

    .line 173
    .local v2, "strokeStart":F
    iget-object v3, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lkfc;

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 3204
    iget-object v5, v3, Lkfc;->a:Lkfc$c;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lkfc$c;->a(F)V

    .line 3205
    iget-object v3, v3, Lkfc;->a:Lkfc$c;

    invoke-virtual {v3, v4}, Lkfc$c;->b(F)V

    .line 174
    iget-object v3, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lkfc;

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 4194
    iget-object v3, v3, Lkfc;->a:Lkfc$c;

    invoke-virtual {v3, v4}, Lkfc$c;->d(F)V

    .line 177
    const/high16 v3, -0x41800000    # -0.25f

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v1, v3, v4

    .line 178
    .local v1, "rotation":F
    iget-object v3, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lkfc;

    .line 4214
    iget-object v3, v3, Lkfc;->a:Lkfc$c;

    invoke-virtual {v3, v1}, Lkfc$c;->c(F)V

    .line 179
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->invalidate()V

    .line 181
    .end local v1    # "rotation":F
    .end local v2    # "strokeStart":F
    :cond_0
    return-void
.end method

.method public final b(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0
    .param p1, "frame"    # Lin/srain/cube/views/ptr/PtrFrameLayout;

    .prologue
    .line 140
    return-void
.end method

.method public final c(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 2
    .param p1, "frame"    # Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 149
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lkfc;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lkfc;->setAlpha(I)V

    .line 150
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lkfc;

    invoke-virtual {v0}, Lkfc;->start()V

    .line 151
    return-void
.end method

.method public final d(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 1
    .param p1, "frame"    # Lin/srain/cube/views/ptr/PtrFrameLayout;

    .prologue
    .line 160
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lkfc;

    invoke-virtual {v0}, Lkfc;->stop()V

    .line 161
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 86
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lkfc;

    if-ne p1, v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->invalidate()V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 114
    .local v2, "saveCount":I
    iget-object v3, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lkfc;

    invoke-virtual {v3}, Lkfc;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 115
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lkfc;

    invoke-virtual {v5}, Lkfc;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v0, v3, v4

    .line 116
    .local v0, "l":I
    int-to-float v3, v0

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 117
    iget v3, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->b:F

    iget v4, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->b:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 118
    iget-object v3, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lkfc;

    invoke-virtual {v3, p1}, Lkfc;->draw(Landroid/graphics/Canvas;)V

    .line 119
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 120
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 107
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lkfc;

    invoke-virtual {v1}, Lkfc;->getIntrinsicHeight()I

    move-result v0

    .line 108
    .local v0, "size":I
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lkfc;

    invoke-virtual {v1, v2, v2, v0, v0}, Lkfc;->setBounds(IIII)V

    .line 109
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 100
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lkfc;

    invoke-virtual {v1}, Lkfc;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->getPaddingBottom()I

    move-result v2

    add-int v0, v1, v2

    .line 101
    .local v0, "height":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 102
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 103
    return-void
.end method

.method public setColorSchemeColors([I)V
    .locals 2
    .param p1, "colors"    # [I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 94
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lkfc;

    .line 2233
    iget-object v1, v0, Lkfc;->a:Lkfc$c;

    invoke-virtual {v1, p1}, Lkfc$c;->a([I)V

    .line 2234
    iget-object v0, v0, Lkfc;->a:Lkfc$c;

    .line 2541
    const/4 v1, 0x0

    iput v1, v0, Lkfc$c;->k:I

    .line 95
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->invalidate()V

    .line 96
    return-void
.end method

.method public setPtrFrameLayout(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 4
    .param p1, "layout"    # Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 49
    new-instance v0, Lin/srain/cube/views/ptr/header/MaterialHeader$2;

    invoke-direct {v0, p0}, Lin/srain/cube/views/ptr/header/MaterialHeader$2;-><init>(Lin/srain/cube/views/ptr/header/MaterialHeader;)V

    .line 56
    .local v0, "mPtrUIHandlerHook":Lkfa;
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->d:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 57
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->d:Landroid/view/animation/Animation;

    new-instance v2, Lin/srain/cube/views/ptr/header/MaterialHeader$3;

    invoke-direct {v2, p0, v0}, Lin/srain/cube/views/ptr/header/MaterialHeader$3;-><init>(Lin/srain/cube/views/ptr/header/MaterialHeader;Lkfa;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 74
    iput-object p1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->c:Lin/srain/cube/views/ptr/PtrFrameLayout;

    .line 75
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->c:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-virtual {v1, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->setRefreshCompleteHook(Lkfa;)V

    .line 76
    return-void
.end method
