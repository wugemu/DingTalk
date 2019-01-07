.class public Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;
.super Landroid/view/View;
.source "CaptureRect.java"


# instance fields
.field a:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->a:Landroid/graphics/Paint;

    .line 25
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->a()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->a:Landroid/graphics/Paint;

    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->a()V

    .line 32
    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 54
    const v0, -0xff0100

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->b:I

    .line 55
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->c:I

    .line 56
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->d:I

    .line 57
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->e:I

    .line 58
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->f:I

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->c:I

    int-to-float v1, v0

    iget v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->d:I

    int-to-float v2, v0

    iget v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->c:I

    iget v3, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->e:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->d:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 69
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->c:I

    iget v1, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->e:I

    add-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->d:I

    int-to-float v2, v0

    iget v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->c:I

    iget v3, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->e:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->d:I

    iget v4, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->f:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 70
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->c:I

    int-to-float v1, v0

    iget v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->d:I

    int-to-float v2, v0

    iget v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->c:I

    int-to-float v3, v0

    iget v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->d:I

    iget v4, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->f:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 71
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->c:I

    int-to-float v1, v0

    iget v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->d:I

    iget v2, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->f:I

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->c:I

    iget v3, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->e:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->d:I

    iget v4, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->f:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 72
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 73
    return-void
.end method

.method public setProperty(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->c:I

    .line 36
    iput p2, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->d:I

    .line 37
    iput p3, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->e:I

    .line 38
    iput p4, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->f:I

    .line 39
    const v0, -0xff0100

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->b:I

    .line 40
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->postInvalidate()V

    .line 41
    return-void
.end method

.method public setProperty(IIIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "colorfill"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->c:I

    .line 45
    iput p2, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->d:I

    .line 46
    iput p3, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->e:I

    .line 47
    iput p4, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->f:I

    .line 48
    iput p5, p0, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->b:I

    .line 49
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/widget/CaptureRect;->postInvalidate()V

    .line 50
    return-void
.end method
