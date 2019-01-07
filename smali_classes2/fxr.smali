.class public final Lfxr;
.super Landroid/text/style/ReplacementSpan;
.source "RadiusBackgroundSpan.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "textColor"    # I
    .param p2, "backgroundColor"    # I
    .param p3, "radius"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 24
    iput p1, p0, Lfxr;->a:I

    .line 25
    iput p2, p0, Lfxr;->b:I

    .line 26
    iput p3, p0, Lfxr;->c:I

    .line 27
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 8
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

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 37
    iget v1, p0, Lfxr;->b:I

    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    const/4 v1, 0x1

    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    iget-object v1, p0, Lfxr;->e:Landroid/graphics/RectF;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lfxr;->e:Landroid/graphics/RectF;

    .line 42
    :cond_0
    iget-object v1, p0, Lfxr;->e:Landroid/graphics/RectF;

    int-to-float v2, p7

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x41700000    # 15.0f

    sub-float/2addr v2, v3

    iget v3, p0, Lfxr;->d:I

    int-to-float v3, v3

    add-float/2addr v3, p5

    int-to-float v4, p7

    .line 43
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->descent()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40a00000    # 5.0f

    sub-float/2addr v4, v5

    .line 42
    invoke-virtual {v1, p5, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 44
    iget-object v1, p0, Lfxr;->e:Landroid/graphics/RectF;

    iget v2, p0, Lfxr;->c:I

    int-to-float v2, v2

    iget v3, p0, Lfxr;->c:I

    int-to-float v3, v3

    move-object/from16 v0, p9

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 45
    iget v1, p0, Lfxr;->a:I

    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget v1, p0, Lfxr;->c:I

    int-to-float v1, v1

    add-float v5, p5, v1

    add-int/lit8 v1, p7, -0xa

    int-to-float v6, v1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v7, p9

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 47
    return-void
.end method

.method public final getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 31
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    iget v1, p0, Lfxr;->c:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfxr;->d:I

    .line 32
    iget v0, p0, Lfxr;->d:I

    return v0
.end method
