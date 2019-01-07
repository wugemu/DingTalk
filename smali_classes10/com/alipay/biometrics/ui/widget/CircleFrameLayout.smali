.class public Lcom/alipay/biometrics/ui/widget/CircleFrameLayout;
.super Landroid/widget/FrameLayout;
.source "CircleFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/biometrics/ui/widget/CircleFrameLayout$WidgetListener;
    }
.end annotation


# instance fields
.field private final BRAND:Ljava/lang/String;

.field private circleX:F

.field private circleY:F

.field isEnable:Z

.field widgetListener:Lcom/alipay/biometrics/ui/widget/CircleFrameLayout$WidgetListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const-string/jumbo v0, "Meizu"

    iput-object v0, p0, Lcom/alipay/biometrics/ui/widget/CircleFrameLayout;->BRAND:Ljava/lang/String;

    .line 53
    iput v1, p0, Lcom/alipay/biometrics/ui/widget/CircleFrameLayout;->circleX:F

    .line 54
    iput v1, p0, Lcom/alipay/biometrics/ui/widget/CircleFrameLayout;->circleY:F

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const-string/jumbo v1, "Meizu"

    iput-object v1, p0, Lcom/alipay/biometrics/ui/widget/CircleFrameLayout;->BRAND:Ljava/lang/String;

    .line 53
    iput v2, p0, Lcom/alipay/biometrics/ui/widget/CircleFrameLayout;->circleX:F

    .line 54
    iput v2, p0, Lcom/alipay/biometrics/ui/widget/CircleFrameLayout;->circleY:F

    .line 46
    sget-object v1, Lige$f;->bio_circle_frrameLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lige$f;->bio_circle_frrameLayout_bio_facesdk_enabled:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/biometrics/ui/widget/CircleFrameLayout;->isEnable:Z

    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const-string/jumbo v0, "Meizu"

    iput-object v0, p0, Lcom/alipay/biometrics/ui/widget/CircleFrameLayout;->BRAND:Ljava/lang/String;

    .line 53
    iput v1, p0, Lcom/alipay/biometrics/ui/widget/CircleFrameLayout;->circleX:F

    .line 54
    iput v1, p0, Lcom/alipay/biometrics/ui/widget/CircleFrameLayout;->circleY:F

    .line 37
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 58
    iget-boolean v3, p0, Lcom/alipay/biometrics/ui/widget/CircleFrameLayout;->isEnable:Z

    if-eqz v3, :cond_1

    .line 60
    iget v3, p0, Lcom/alipay/biometrics/ui/widget/CircleFrameLayout;->circleX:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    div-float/2addr v3, v6

    iput v3, p0, Lcom/alipay/biometrics/ui/widget/CircleFrameLayout;->circleX:F

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    div-float/2addr v3, v6

    iput v3, p0, Lcom/alipay/biometrics/ui/widget/CircleFrameLayout;->circleY:F

    .line 64
    :cond_0
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 66
    .local v1, "path":Landroid/graphics/Path;
    iget v3, p0, Lcom/alipay/biometrics/ui/widget/CircleFrameLayout;->circleX:F

    iget v4, p0, Lcom/alipay/biometrics/ui/widget/CircleFrameLayout;->circleY:F

    iget v5, p0, Lcom/alipay/biometrics/ui/widget/CircleFrameLayout;->circleX:F

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 69
    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 72
    :try_start_0
    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    move-result v2

    .line 73
    .local v2, "rtn":Z
    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/alipay/biometrics/ui/widget/CircleFrameLayout;->widgetListener:Lcom/alipay/biometrics/ui/widget/CircleFrameLayout$WidgetListener;

    if-eqz v3, :cond_1

    const-string/jumbo v3, "Meizu"

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v1    # "path":Landroid/graphics/Path;
    .end local v2    # "rtn":Z
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 83
    return-void

    .line 77
    .restart local v1    # "path":Landroid/graphics/Path;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/alipay/biometrics/ui/widget/CircleFrameLayout;->isEnable:Z

    .line 87
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/CircleFrameLayout;->postInvalidate()V

    .line 88
    return-void
.end method

.method public setWidgetListener(Lcom/alipay/biometrics/ui/widget/CircleFrameLayout$WidgetListener;)V
    .locals 0
    .param p1, "widgetListener"    # Lcom/alipay/biometrics/ui/widget/CircleFrameLayout$WidgetListener;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alipay/biometrics/ui/widget/CircleFrameLayout;->widgetListener:Lcom/alipay/biometrics/ui/widget/CircleFrameLayout$WidgetListener;

    .line 92
    return-void
.end method
