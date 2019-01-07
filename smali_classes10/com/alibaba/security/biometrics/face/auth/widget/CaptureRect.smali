.class public Lcom/alibaba/security/biometrics/face/auth/widget/CaptureRect;
.super Landroid/view/View;


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

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CaptureRect;->a:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/face/auth/widget/CaptureRect;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CaptureRect;->a:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/face/auth/widget/CaptureRect;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v1, 0x0

    const v0, -0xff0100

    iput v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CaptureRect;->b:I

    iput v1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CaptureRect;->c:I

    iput v1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CaptureRect;->d:I

    iput v1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CaptureRect;->e:I

    iput v1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CaptureRect;->f:I

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CaptureRect;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CaptureRect;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CaptureRect;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CaptureRect;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CaptureRect;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CaptureRect;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CaptureRect;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CaptureRect;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
