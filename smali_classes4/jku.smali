.class public final Ljku;
.super Landroid/graphics/drawable/Drawable;
.source "HSegmentedBarChartDrawable.java"


# instance fields
.field a:Ljks;

.field private final b:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 20
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ljku;->b:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 47
    invoke-virtual {p0}, Ljku;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 49
    .local v4, "rect":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Ljku;->a:Ljks;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljks;->a(I)F

    move-result v9

    div-float v6, v8, v9

    .line 51
    .local v6, "w2px":F
    iget v8, v4, Landroid/graphics/Rect;->left:I

    int-to-float v2, v8

    .line 53
    .local v2, "from":F
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v8, p0, Ljku;->a:Ljks;

    invoke-interface {v8}, Ljks;->b()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 54
    iget-object v8, p0, Ljku;->a:Ljks;

    const/4 v9, 0x2

    invoke-interface {v8, v3, v9}, Ljks;->a(II)F

    move-result v7

    .line 56
    .local v7, "weight":F
    mul-float v8, v7, v6

    add-float v5, v2, v8

    .line 58
    .local v5, "to":F
    iget-object v8, p0, Ljku;->b:Landroid/graphics/Rect;

    float-to-int v9, v2

    iget v10, v4, Landroid/graphics/Rect;->top:I

    float-to-int v11, v5

    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 60
    cmpl-float v8, v5, v2

    if-eqz v8, :cond_0

    .line 64
    iget-object v8, p0, Ljku;->a:Ljks;

    invoke-interface {v8, v3}, Ljks;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 65
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Ljku;->b:Landroid/graphics/Rect;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 67
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 69
    move v2, v5

    .line 53
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    .end local v5    # "to":F
    .end local v7    # "weight":F
    :cond_1
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 81
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 86
    return-void
.end method
