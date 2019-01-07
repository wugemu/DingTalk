.class public final Lhay;
.super Lhaw;
.source "LocalBrowserImageDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lhaw;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lhaw;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final a(II)Lhbc;
    .locals 7
    .param p1, "sWidth"    # I
    .param p2, "sHeight"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 37
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 38
    :cond_0
    const/4 v3, 0x0

    .line 45
    :goto_0
    return-object v3

    .line 1049
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 1050
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    div-float/2addr v4, v6

    int-to-float v5, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    int-to-float v5, p1

    div-float/2addr v4, v5

    .line 1051
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    int-to-float v5, p2

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    int-to-float v5, p2

    div-float/2addr v3, v5

    .line 1052
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 42
    .local v1, "oRatio":F
    int-to-float v3, p1

    mul-float/2addr v3, v1

    float-to-int v2, v3

    .line 43
    .local v2, "width":I
    int-to-float v3, p2

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 45
    .local v0, "height":I
    new-instance v3, Lhbc;

    invoke-direct {v3, v2, v0}, Lhbc;-><init>(II)V

    goto :goto_0
.end method
