.class public Lcom/taobao/taolive/sdk/ui/view/CenterAlignImageSpan;
.super Landroid/text/style/ImageSpan;
.source "CenterAlignImageSpan.java"


# static fields
.field private static final PADDING_LEFT:I = 0x8

.field private static final PADDING_RIGHT:I = 0x4


# instance fields
.field private mBackgroundColor:I


# direct methods
.method public constructor <init>(ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "backgroundColor"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 20
    invoke-direct {p0, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 21
    iput p1, p0, Lcom/taobao/taolive/sdk/ui/view/CenterAlignImageSpan;->mBackgroundColor:I

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/Bitmap;)V

    .line 26
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 38
    .local v2, "color1":I
    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/ui/view/CenterAlignImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 40
    .local v1, "b":Landroid/graphics/drawable/Drawable;
    iget v5, p0, Lcom/taobao/taolive/sdk/ui/view/CenterAlignImageSpan;->mBackgroundColor:I

    move-object/from16 v0, p9

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v6, p6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    add-float/2addr v7, p5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x41000000    # 8.0f

    add-float/2addr v7, v8

    const/high16 v8, 0x40800000    # 4.0f

    add-float/2addr v7, v8

    move/from16 v0, p8

    int-to-float v8, v0

    invoke-direct {v5, p5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p9

    invoke-virtual {p1, v5, v6, v7, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 43
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 44
    .local v3, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget v5, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int v5, v5, p7

    add-int v5, v5, p7

    iget v6, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    .line 45
    .local v4, "transY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 46
    const/high16 v5, 0x41000000    # 8.0f

    add-float/2addr v5, p5

    int-to-float v6, v4

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 47
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 48
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 50
    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 30
    invoke-super/range {p0 .. p5}, Landroid/text/style/ImageSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x4

    return v0
.end method
