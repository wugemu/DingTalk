.class public final Lcjz;
.super Landroid/graphics/drawable/Drawable;
.source "IconFontDrawable.java"


# instance fields
.field public a:Landroid/content/res/ColorStateList;

.field public b:F

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "icon"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 27
    iput-object p1, p0, Lcjz;->c:Ljava/lang/String;

    .line 28
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcjz;->a:Landroid/content/res/ColorStateList;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "icon"    # Ljava/lang/String;
    .param p2, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 32
    iput-object p1, p0, Lcjz;->c:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcjz;->a:Landroid/content/res/ColorStateList;

    .line 34
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 37
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcjz;->a:Landroid/content/res/ColorStateList;

    .line 38
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 50
    iget-object v4, p0, Lcjz;->e:Landroid/graphics/Paint;

    if-nez v4, :cond_0

    .line 51
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcjz;->e:Landroid/graphics/Paint;

    .line 52
    iget-object v4, p0, Lcjz;->e:Landroid/graphics/Paint;

    invoke-static {}, Lcka;->a()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 53
    iget-object v4, p0, Lcjz;->e:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object v4, p0, Lcjz;->e:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 56
    :cond_0
    iget-object v4, p0, Lcjz;->a:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_1

    .line 57
    iget-object v4, p0, Lcjz;->a:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcjz;->getState()[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 58
    .local v0, "color":I
    iget v4, p0, Lcjz;->d:I

    if-eq v0, v4, :cond_1

    .line 59
    iput v0, p0, Lcjz;->d:I

    .line 60
    iget-object v4, p0, Lcjz;->e:Landroid/graphics/Paint;

    iget v5, p0, Lcjz;->d:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    .end local v0    # "color":I
    :cond_1
    invoke-virtual {p0}, Lcjz;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 64
    .local v3, "rect":Landroid/graphics/Rect;
    iget v4, p0, Lcjz;->b:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2

    .line 65
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcjz;->b:F

    .line 67
    :cond_2
    iget-object v4, p0, Lcjz;->e:Landroid/graphics/Paint;

    iget v5, p0, Lcjz;->b:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 68
    iget-object v4, p0, Lcjz;->e:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 69
    .local v1, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v4, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v5, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v2, v4, v5

    .line 70
    .local v2, "h":F
    iget-object v4, p0, Lcjz;->c:Ljava/lang/String;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget v7, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcjz;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 71
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public final isStateful()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method protected final onStateChange([I)Z
    .locals 3
    .param p1, "state"    # [I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v2, p0, Lcjz;->a:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 94
    .local v0, "color":I
    iget v2, p0, Lcjz;->d:I

    if-eq v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .prologue
    .line 75
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 79
    return-void
.end method
