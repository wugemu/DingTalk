.class final Lcom/alibaba/laiwang/photokit/views/PinchImageView$b;
.super Ljava/lang/Object;
.source "PinchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/views/PinchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FFFF)F
    .locals 4
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .prologue
    .line 658
    sub-float v0, p0, p2

    .line 659
    .local v0, "x":F
    sub-float v1, p1, p3

    .line 660
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static a(Landroid/graphics/Matrix;)[F
    .locals 4
    .param p0, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 670
    if-eqz p0, :cond_0

    .line 671
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 672
    .local v0, "value":[F
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 673
    new-array v1, v2, [F

    aget v2, v0, v3

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x4

    aget v3, v0, v3

    aput v3, v1, v2

    .line 675
    .end local v0    # "value":[F
    :goto_0
    return-object v1

    :cond_0
    new-array v1, v2, [F

    goto :goto_0
.end method

.method public static b(FFFF)[F
    .locals 4
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 665
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    add-float v2, p0, p2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    add-float v2, p1, p3

    div-float/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method
