.class public final Lcta;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcta$a;
    }
.end annotation


# instance fields
.field public a:Landroid/view/animation/Animation$AnimationListener;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IF)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I
    .param p3, "radius"    # F

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {p0}, Lcta;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v1, v7, Landroid/util/DisplayMetrics;->density:F

    .line 70
    .local v1, "density":F
    const/high16 v7, 0x41a00000    # 20.0f

    mul-float/2addr v7, v1

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    float-to-int v2, v7

    .line 71
    .local v2, "diameter":I
    const/high16 v7, 0x3fe00000    # 1.75f

    mul-float/2addr v7, v1

    float-to-int v6, v7

    .line 72
    .local v6, "shadowYOffset":I
    const/4 v7, 0x0

    mul-float/2addr v7, v1

    float-to-int v5, v7

    .line 74
    .local v5, "shadowXOffset":I
    const/high16 v7, 0x40600000    # 3.5f

    mul-float/2addr v7, v1

    float-to-int v7, v7

    iput v7, p0, Lcta;->b:I

    .line 77
    invoke-static {}, Lcta;->a()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 78
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v7, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v7}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 79
    .local v0, "circle":Landroid/graphics/drawable/ShapeDrawable;
    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v7, v1

    invoke-static {p0, v7}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;F)V

    .line 90
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    const v8, -0x50506

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    invoke-virtual {p0, v0}, Lcta;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    return-void

    .line 81
    .end local v0    # "circle":Landroid/graphics/drawable/ShapeDrawable;
    :cond_0
    new-instance v3, Lcta$a;

    iget v7, p0, Lcta;->b:I

    invoke-direct {v3, p0, v7, v2}, Lcta$a;-><init>(Lcta;II)V

    .line 82
    .local v3, "oval":Landroid/graphics/drawable/shapes/OvalShape;
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 83
    .restart local v0    # "circle":Landroid/graphics/drawable/ShapeDrawable;
    const/4 v7, 0x1

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    invoke-static {p0, v7, v8}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 84
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    iget v8, p0, Lcta;->b:I

    int-to-float v8, v8

    int-to-float v9, v5

    int-to-float v10, v6

    const/high16 v11, 0x1e000000

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 86
    iget v4, p0, Lcta;->b:I

    .line 88
    .local v4, "padding":I
    invoke-virtual {p0, v4, v4, v4, v4}, Lcta;->setPadding(IIII)V

    goto :goto_0
.end method

.method private static a()Z
    .locals 2

    .prologue
    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final onAnimationEnd()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 121
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationEnd()V

    .line 122
    iget-object v0, p0, Lcta;->a:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcta;->a:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0}, Lcta;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 125
    :cond_0
    return-void
.end method

.method public final onAnimationStart()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationStart()V

    .line 114
    iget-object v0, p0, Lcta;->a:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcta;->a:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0}, Lcta;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 117
    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 101
    invoke-static {}, Lcta;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcta;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcta;->b:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcta;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcta;->b:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcta;->setMeasuredDimension(II)V

    .line 105
    :cond_0
    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 3
    .param p1, "colorRes"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 131
    invoke-virtual {p0}, Lcta;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcta;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 133
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcta;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method
