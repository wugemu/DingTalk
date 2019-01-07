.class public Lcom/taobao/taolive/sdk/ui/view/RoundBackgroundColorSpan;
.super Landroid/text/style/ReplacementSpan;
.source "RoundBackgroundColorSpan.java"


# instance fields
.field private bgColor:I

.field private textColor:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "bgColor"    # I
    .param p2, "textColor"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 17
    iput p1, p0, Lcom/taobao/taolive/sdk/ui/view/RoundBackgroundColorSpan;->bgColor:I

    .line 18
    iput p2, p0, Lcom/taobao/taolive/sdk/ui/view/RoundBackgroundColorSpan;->textColor:I

    .line 19
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 9
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

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 27
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    .line 28
    .local v8, "color1":I
    iget v1, p0, Lcom/taobao/taolive/sdk/ui/view/RoundBackgroundColorSpan;->bgColor:I

    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p6

    move-object/from16 v0, p9

    invoke-virtual {v0, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v3, p5

    move/from16 v0, p8

    int-to-float v4, v0

    invoke-direct {v1, p5, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p9

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 30
    iget v1, p0, Lcom/taobao/taolive/sdk/ui/view/RoundBackgroundColorSpan;->textColor:I

    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    move/from16 v0, p7

    int-to-float v6, v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v7, p9

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 32
    move-object/from16 v0, p9

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
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
    .line 22
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method
