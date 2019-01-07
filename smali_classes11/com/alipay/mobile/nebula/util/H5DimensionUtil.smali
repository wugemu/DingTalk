.class public Lcom/alipay/mobile/nebula/util/H5DimensionUtil;
.super Ljava/lang/Object;
.source "H5DimensionUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5DimensionUtil"

.field private static sScale:F

.field private static sScaledDensity:F

.field private static sScreenHeight:I

.field private static sScreenWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 27
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->initScale(Landroid/content/Context;)V

    .line 28
    sget v0, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScale:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getFontSize(F)F
    .locals 2
    .param p0, "paramFloat"    # F

    .prologue
    const/high16 v0, 0x41800000    # 16.0f

    .line 67
    const/high16 v1, 0x3f600000    # 0.875f

    cmpl-float v1, p0, v1

    if-nez v1, :cond_1

    .line 68
    const/high16 v0, 0x41600000    # 14.0f

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v1

    if-eqz v1, :cond_0

    .line 73
    const/high16 v1, 0x3f900000    # 1.125f

    cmpl-float v1, p0, v1

    if-nez v1, :cond_2

    .line 74
    const/high16 v0, 0x41900000    # 18.0f

    goto :goto_0

    .line 76
    :cond_2
    const/high16 v1, 0x3fa00000    # 1.25f

    cmpl-float v1, p0, v1

    if-nez v1, :cond_3

    .line 77
    const/high16 v0, 0x41a00000    # 20.0f

    goto :goto_0

    .line 79
    :cond_3
    const/high16 v1, 0x3fb00000    # 1.375f

    cmpl-float v1, p0, v1

    if-nez v1, :cond_0

    .line 80
    const/high16 v0, 0x41b00000    # 22.0f

    goto :goto_0
.end method

.method public static getRelativeLeft(Landroid/view/View;)I
    .locals 2
    .param p0, "myView"    # Landroid/view/View;

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020002

    if-ne v0, v1, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 61
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->getRelativeLeft(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static getRelativeTop(Landroid/view/View;)I
    .locals 2
    .param p0, "myView"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020002

    if-ne v0, v1, :cond_0

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 53
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->getRelativeTop(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    sget v2, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScreenHeight:I

    if-eqz v2, :cond_0

    .line 130
    sget v2, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScreenHeight:I

    .line 135
    :goto_0
    return v2

    .line 132
    :cond_0
    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 133
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 134
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 135
    sput v2, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScreenHeight:I

    goto :goto_0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    sget v2, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScreenWidth:I

    if-eqz v2, :cond_0

    .line 120
    sget v2, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScreenWidth:I

    .line 125
    :goto_0
    return v2

    .line 122
    :cond_0
    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 123
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 124
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 125
    sput v2, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScreenWidth:I

    goto :goto_0
.end method

.method private static initScale(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    :try_start_0
    sget v1, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScale:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5DimensionUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static initScaledDensity(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    :try_start_0
    sget v1, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScaledDensity:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v1, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScaledDensity:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5DimensionUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isValueEqule(FF)Z
    .locals 3
    .param p0, "v1"    # F
    .param p1, "v2"    # F

    .prologue
    .line 86
    float-to-int v0, p0

    .line 87
    .local v0, "a1":I
    float-to-int v1, p1

    .line 88
    .local v1, "a2":I
    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .prologue
    .line 45
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->initScale(Landroid/content/Context;)V

    .line 46
    sget v0, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScale:F

    div-float v0, p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static px2sp(Landroid/content/Context;F)F
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .prologue
    .line 93
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->initScaledDensity(Landroid/content/Context;)V

    .line 94
    sget v0, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScaledDensity:F

    div-float v0, p1, v0

    return v0
.end method

.method public static sp2px(Landroid/content/Context;F)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spValue"    # F

    .prologue
    .line 104
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->initScaledDensity(Landroid/content/Context;)V

    .line 105
    sget v0, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->sScaledDensity:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
