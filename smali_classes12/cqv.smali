.class public final Lcqv;
.super Landroid/text/style/ImageSpan;
.source "CustomAlignImageSpan.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "verticalAlignment"    # I
    .param p3, "offsetX"    # I

    .prologue
    .line 22
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcqv;->a:I

    .line 24
    return-void
.end method

.method private a()Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    iget-object v1, p0, Lcqv;->b:Ljava/lang/ref/WeakReference;

    .line 67
    .local v1, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    const/4 v0, 0x0

    .line 69
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 72
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-nez v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lcqv;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 74
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcqv;->b:Ljava/lang/ref/WeakReference;

    .line 77
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 4
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

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    invoke-direct {p0}, Lcqv;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 31
    .local v0, "b":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 33
    const/4 v1, 0x0

    .line 34
    .local v1, "transY":I
    iget v2, p0, Lcqv;->mVerticalAlignment:I

    if-nez v2, :cond_1

    .line 35
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p8, v2

    .line 42
    :cond_0
    :goto_0
    iget v2, p0, Lcqv;->a:I

    int-to-float v2, v2

    add-float/2addr v2, p5

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 43
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 45
    return-void

    .line 36
    :cond_1
    iget v2, p0, Lcqv;->mVerticalAlignment:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 37
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p8, v2

    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int v1, v2, v3

    goto :goto_0

    .line 38
    :cond_2
    iget v2, p0, Lcqv;->mVerticalAlignment:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 39
    sub-int v2, p8, p6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

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
    .line 49
    invoke-direct {p0}, Lcqv;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 50
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 51
    .local v5, "rect":Landroid/graphics/Rect;
    if-eqz p5, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    .line 53
    .local v4, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v7, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v8, v4, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v7, v8

    float-to-int v3, v7

    .line 54
    .local v3, "fontHeight":I
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    sub-int v2, v7, v8

    .line 55
    .local v2, "drHeight":I
    div-int/lit8 v7, v2, 0x2

    div-int/lit8 v8, v3, 0x4

    sub-int v6, v7, v8

    .line 56
    .local v6, "top":I
    div-int/lit8 v7, v2, 0x2

    div-int/lit8 v8, v3, 0x4

    add-int v0, v7, v8

    .line 57
    .local v0, "bottom":I
    neg-int v7, v0

    iput v7, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 58
    iput v6, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 59
    neg-int v7, v0

    iput v7, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 60
    iput v6, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 62
    .end local v0    # "bottom":I
    .end local v2    # "drHeight":I
    .end local v3    # "fontHeight":I
    .end local v4    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .end local v6    # "top":I
    :cond_0
    iget v7, v5, Landroid/graphics/Rect;->right:I

    return v7
.end method
