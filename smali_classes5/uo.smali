.class public final Luo;
.super Landroid/graphics/drawable/Drawable;
.source "DividerDrawable.java"


# instance fields
.field private a:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 21
    invoke-direct {p0}, Luo;->a()V

    .line 22
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 25
    invoke-direct {p0}, Luo;->a()V

    .line 26
    iget-object v0, p0, Luo;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Luo;->a:Landroid/graphics/Paint;

    .line 31
    iget-object v0, p0, Luo;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    iget-object v0, p0, Luo;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 59
    invoke-virtual {p0}, Luo;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 60
    .local v9, "rect":Landroid/graphics/Rect;
    if-nez v9, :cond_0

    .line 72
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 64
    .local v10, "width":I
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 66
    .local v8, "height":I
    shr-int/lit8 v7, v10, 0x1

    .line 67
    .local v7, "halfW":I
    shr-int/lit8 v6, v8, 0x1

    .line 68
    .local v6, "halfH":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 69
    int-to-float v0, v7

    int-to-float v1, v6

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 70
    iget v0, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v7

    int-to-float v1, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v6

    int-to-float v2, v0

    int-to-float v3, v7

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v6

    int-to-float v4, v0

    iget-object v5, p0, Luo;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public final getIntrinsicHeight()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 41
    invoke-virtual {p0}, Luo;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 42
    .local v0, "rect":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 43
    const/4 v1, 0x0

    .line 45
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_0
.end method

.method public final getIntrinsicWidth()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 50
    invoke-virtual {p0}, Luo;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 51
    .local v0, "rect":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 52
    const/4 v1, 0x0

    .line 54
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_0
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, -0x1

    return v0
.end method

.method public final setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 76
    iget-object v0, p0, Luo;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 77
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 81
    iget-object v0, p0, Luo;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 82
    return-void
.end method
