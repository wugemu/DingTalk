.class public final Lcqs;
.super Landroid/text/style/ImageSpan;
.source "CenterAlignImageSpan.java"


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 16
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 21
    invoke-virtual {p0}, Lcqs;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 22
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 23
    invoke-super/range {p0 .. p9}, Landroid/text/style/ImageSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    .line 37
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 29
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 30
    .local v1, "fm":Landroid/graphics/Paint$FontMetricsInt;
    if-eqz v1, :cond_1

    .line 31
    iget v3, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v3, p7

    iget v4, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v4, p7

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v3, v4

    .line 32
    .local v2, "transY":I
    int-to-float v3, v2

    invoke-virtual {p1, p5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 34
    .end local v2    # "transY":I
    :cond_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public final getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 9
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 41
    invoke-virtual {p0}, Lcqs;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 42
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_0

    .line 43
    const/4 v7, 0x0

    .line 60
    :goto_0
    return v7

    .line 46
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 47
    .local v5, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 48
    .local v3, "fmPaint":Landroid/graphics/Paint$FontMetricsInt;
    if-eqz p5, :cond_1

    if-eqz v3, :cond_1

    .line 49
    iget v7, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v8, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v4, v7, v8

    .line 50
    .local v4, "fontHeight":I
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    sub-int v1, v7, v8

    .line 52
    .local v1, "drHeight":I
    div-int/lit8 v7, v1, 0x2

    div-int/lit8 v8, v4, 0x4

    sub-int v6, v7, v8

    .line 53
    .local v6, "top":I
    div-int/lit8 v7, v1, 0x2

    div-int/lit8 v8, v4, 0x4

    add-int v0, v7, v8

    .line 55
    .local v0, "bottom":I
    neg-int v7, v0

    iput v7, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 56
    neg-int v7, v0

    iput v7, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 57
    iput v6, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 58
    iput v6, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 60
    .end local v0    # "bottom":I
    .end local v1    # "drHeight":I
    .end local v4    # "fontHeight":I
    .end local v6    # "top":I
    :cond_1
    iget v7, v5, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method
