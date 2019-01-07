.class public Lcom/taobao/taolive/sdk/ui/view/CustomVerticalCenterSpan;
.super Landroid/text/style/ReplacementSpan;
.source "CustomVerticalCenterSpan.java"


# static fields
.field private static final PADDING_LEFT:I = 0x0

.field private static final PADDING_RIGHT:I = 0x8


# instance fields
.field private bgColor:I

.field private fontSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "bgColor"    # I
    .param p2, "fontSize"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 20
    iput p1, p0, Lcom/taobao/taolive/sdk/ui/view/CustomVerticalCenterSpan;->bgColor:I

    .line 21
    iput p2, p0, Lcom/taobao/taolive/sdk/ui/view/CustomVerticalCenterSpan;->fontSize:I

    .line 22
    return-void
.end method

.method private getCustomTextPaint(Landroid/graphics/Paint;)Landroid/text/TextPaint;
    .locals 2
    .param p1, "srcPaint"    # Landroid/graphics/Paint;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, p1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 45
    .local v0, "paint":Landroid/text/TextPaint;
    iget v1, p0, Lcom/taobao/taolive/sdk/ui/view/CustomVerticalCenterSpan;->fontSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 46
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 6
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

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    invoke-direct {p0, p9}, Lcom/taobao/taolive/sdk/ui/view/CustomVerticalCenterSpan;->getCustomTextPaint(Landroid/graphics/Paint;)Landroid/text/TextPaint;

    move-result-object v1

    .line 34
    .local v1, "p":Landroid/graphics/Paint;
    iget v2, p0, Lcom/taobao/taolive/sdk/ui/view/CustomVerticalCenterSpan;->bgColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, p6

    invoke-virtual {v1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    add-float/2addr v4, p5

    const/4 v5, 0x0

    add-float/2addr v4, v5

    const/high16 v5, 0x41000000    # 8.0f

    add-float/2addr v4, v5

    int-to-float v5, p8

    invoke-direct {v2, p5, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 37
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 38
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 39
    .local v0, "fm":Landroid/graphics/Paint$FontMetricsInt;
    const v2, -0x70000001

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    add-float/2addr v3, p5

    iget v4, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v4, p7

    add-int/2addr v4, p7

    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v5, p8, p6

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sub-int v4, p7, v4

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 41
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 26
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 27
    invoke-direct {p0, p1}, Lcom/taobao/taolive/sdk/ui/view/CustomVerticalCenterSpan;->getCustomTextPaint(Landroid/graphics/Paint;)Landroid/text/TextPaint;

    move-result-object v0

    .line 28
    .local v0, "p":Landroid/graphics/Paint;
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x0

    add-int/lit8 v1, v1, 0x8

    return v1
.end method
