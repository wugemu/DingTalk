.class public final Lgsj;
.super Landroid/graphics/drawable/Drawable;
.source "ParallelClipDrawable.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 20
    iput-object p1, p0, Lgsj;->a:Landroid/graphics/drawable/Drawable;

    .line 21
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 33
    iget-object v3, p0, Lgsj;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lgsj;->b:Landroid/graphics/Rect;

    if-nez v3, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    iget-object v3, p0, Lgsj;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lgsj;->b:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v1, v3, v4

    .line 37
    .local v1, "height":I
    iget-object v3, p0, Lgsj;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lgsj;->getLevel()I

    move-result v4

    mul-int/2addr v4, v1

    div-int/lit16 v4, v4, 0x2710

    add-int v2, v3, v4

    .line 38
    .local v2, "top":I
    iget-object v3, p0, Lgsj;->b:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 39
    .local v0, "bottom":I
    invoke-virtual {p0}, Lgsj;->getLevel()I

    move-result v3

    const/16 v4, 0x1b58

    if-gt v3, v4, :cond_2

    .line 40
    mul-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0xa

    add-int v0, v2, v3

    .line 43
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 44
    iget-object v3, p0, Lgsj;->a:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lgsj;->b:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lgsj;->b:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lgsj;->b:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lgsj;->b:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 45
    iget-object v3, p0, Lgsj;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lgsj;->b:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v3, v2, v4, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 46
    iget-object v3, p0, Lgsj;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 52
    return-void
.end method

.method public final setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lgsj;->b:Landroid/graphics/Rect;

    .line 25
    return-void
.end method

.method public final setBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    iput-object p1, p0, Lgsj;->b:Landroid/graphics/Rect;

    .line 29
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 56
    return-void
.end method
