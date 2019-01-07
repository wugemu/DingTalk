.class public Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;
.super Landroid/widget/FrameLayout;


# instance fields
.field a:Z

.field b:Lhxs;

.field private final c:Ljava/lang/String;

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "Meizu"

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;->c:Ljava/lang/String;

    iput v1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;->d:F

    iput v1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;->e:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "Meizu"

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;->c:Ljava/lang/String;

    iput v1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;->d:F

    iput v1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;->e:F

    sget-object v0, Lhyx$i;->circleFrameLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lhyx$i;->circleFrameLayout_facelivnesssdk_enabled:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;->a:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string/jumbo v0, "Meizu"

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;->c:Ljava/lang/String;

    iput v1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;->d:F

    iput v1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;->e:F

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;->a:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;->d:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    iput v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;->d:F

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    iput v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;->e:F

    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget v1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;->d:F

    iget v2, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;->e:F

    iget v3, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;->d:F

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    :try_start_0
    sget-object v1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;->b:Lhxs;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Meizu"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;->a:Z

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;->postInvalidate()V

    return-void
.end method

.method public setWidgetListener(Lhxs;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;->b:Lhxs;

    return-void
.end method
