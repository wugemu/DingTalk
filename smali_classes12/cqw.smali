.class public final Lcqw;
.super Landroid/graphics/drawable/Drawable;
.source "DotDrawable.java"


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field private f:Landroid/graphics/Paint;

.field private g:I

.field private h:I

.field private i:I

.field private j:F

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 39
    iput-object p2, p0, Lcqw;->a:Landroid/graphics/drawable/Drawable;

    .line 40
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p1, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcqw;->j:F

    .line 42
    const v0, -0xbebf

    iput v0, p0, Lcqw;->h:I

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcqw;->k:Z

    .line 44
    const/16 v0, 0x35

    iput v0, p0, Lcqw;->g:I

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcqw;->f:Landroid/graphics/Paint;

    .line 47
    iget-object v0, p0, Lcqw;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    iget v0, p0, Lcqw;->i:I

    iget v1, p0, Lcqw;->h:I

    if-eq v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcqw;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcqw;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget v0, p0, Lcqw;->h:I

    iput v0, p0, Lcqw;->i:I

    .line 86
    :cond_0
    iget-object v0, p0, Lcqw;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 87
    iget-boolean v0, p0, Lcqw;->k:Z

    if-eqz v0, :cond_3

    .line 1094
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1095
    invoke-virtual {p0}, Lcqw;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcqw;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 1096
    invoke-virtual {p0}, Lcqw;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcqw;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Lcqw;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 1097
    iget v0, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcqw;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 1098
    invoke-virtual {p0}, Lcqw;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 1099
    invoke-virtual {p0}, Lcqw;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 1107
    :goto_0
    iget v0, v2, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcqw;->j:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcqw;->d:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 1108
    iget v1, v2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v3, p0, Lcqw;->j:F

    add-float/2addr v1, v3

    iget v3, p0, Lcqw;->c:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 1110
    iget v3, p0, Lcqw;->g:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 1111
    iget v0, v2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v3, p0, Lcqw;->j:F

    add-float/2addr v0, v3

    iget v3, p0, Lcqw;->b:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 1118
    :cond_1
    :goto_1
    iget v3, p0, Lcqw;->g:I

    and-int/lit8 v3, v3, 0x30

    const/16 v4, 0x30

    if-ne v3, v4, :cond_7

    .line 1119
    iget v1, v2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcqw;->j:F

    add-float/2addr v1, v2

    iget v2, p0, Lcqw;->c:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 1126
    :cond_2
    :goto_2
    iget v2, p0, Lcqw;->j:F

    iget-object v3, p0, Lcqw;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 90
    :cond_3
    return-void

    .line 1101
    :cond_4
    invoke-virtual {p0}, Lcqw;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 1102
    invoke-virtual {p0}, Lcqw;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 1103
    invoke-virtual {p0}, Lcqw;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcqw;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Lcqw;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 1104
    iget v0, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcqw;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 1112
    :cond_5
    iget v3, p0, Lcqw;->g:I

    and-int/lit8 v3, v3, 0x5

    const/4 v4, 0x5

    if-ne v3, v4, :cond_6

    .line 1113
    iget v0, v2, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v3, p0, Lcqw;->j:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcqw;->d:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    goto :goto_1

    .line 1114
    :cond_6
    iget v3, p0, Lcqw;->g:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1115
    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->right:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-float v0, v0

    goto :goto_1

    .line 1120
    :cond_7
    iget v3, p0, Lcqw;->g:I

    and-int/lit8 v3, v3, 0x50

    const/16 v4, 0x50

    if-ne v3, v4, :cond_8

    .line 1121
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p0, Lcqw;->j:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcqw;->e:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    goto :goto_2

    .line 1122
    :cond_8
    iget v3, p0, Lcqw;->g:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_2

    .line 1123
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    goto/16 :goto_2
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcqw;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcqw;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcqw;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public final setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .prologue
    .line 131
    iget-object v0, p0, Lcqw;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 132
    return-void
.end method

.method public final setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 163
    iget-object v0, p0, Lcqw;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 164
    return-void
.end method

.method public final setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 157
    iget-object v0, p0, Lcqw;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 158
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 136
    iget-object v0, p0, Lcqw;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 137
    return-void
.end method
