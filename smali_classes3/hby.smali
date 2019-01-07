.class public final Lhby;
.super Landroid/view/View;
.source "DrawCaptureRect.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIII)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "colorfill"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    iput p6, p0, Lhby;->a:I

    .line 19
    iput p2, p0, Lhby;->b:I

    .line 20
    iput p3, p0, Lhby;->c:I

    .line 21
    iput p4, p0, Lhby;->d:I

    .line 22
    iput p5, p0, Lhby;->e:I

    .line 23
    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 27
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 28
    .local v5, "mpaint":Landroid/graphics/Paint;
    iget v0, p0, Lhby;->a:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 30
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 31
    iget v0, p0, Lhby;->b:I

    int-to-float v1, v0

    iget v0, p0, Lhby;->c:I

    int-to-float v2, v0

    iget v0, p0, Lhby;->b:I

    iget v3, p0, Lhby;->d:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lhby;->c:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 32
    iget v0, p0, Lhby;->b:I

    iget v1, p0, Lhby;->d:I

    add-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Lhby;->c:I

    int-to-float v2, v0

    iget v0, p0, Lhby;->b:I

    iget v3, p0, Lhby;->d:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lhby;->c:I

    iget v4, p0, Lhby;->e:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 33
    iget v0, p0, Lhby;->b:I

    int-to-float v1, v0

    iget v0, p0, Lhby;->c:I

    int-to-float v2, v0

    iget v0, p0, Lhby;->b:I

    int-to-float v3, v0

    iget v0, p0, Lhby;->c:I

    iget v4, p0, Lhby;->e:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 34
    iget v0, p0, Lhby;->b:I

    int-to-float v1, v0

    iget v0, p0, Lhby;->c:I

    iget v2, p0, Lhby;->e:I

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lhby;->b:I

    iget v3, p0, Lhby;->d:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lhby;->c:I

    iget v4, p0, Lhby;->e:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 35
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 36
    return-void
.end method
