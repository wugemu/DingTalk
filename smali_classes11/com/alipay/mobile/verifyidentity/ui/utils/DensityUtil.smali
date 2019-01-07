.class public Lcom/alipay/mobile/verifyidentity/ui/utils/DensityUtil;
.super Ljava/lang/Object;
.source "DensityUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 12
    const/4 v0, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :goto_0
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getFontSize(F)F
    .locals 2

    .prologue
    const/high16 v0, 0x41800000    # 16.0f

    .line 77
    const/high16 v1, 0x3f600000    # 0.875f

    cmpl-float v1, p0, v1

    if-nez v1, :cond_1

    .line 78
    const/high16 v0, 0x41600000    # 14.0f

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v1

    if-eqz v1, :cond_0

    .line 83
    const/high16 v1, 0x3f900000    # 1.125f

    cmpl-float v1, p0, v1

    if-nez v1, :cond_2

    .line 84
    const/high16 v0, 0x41900000    # 18.0f

    goto :goto_0

    .line 86
    :cond_2
    const/high16 v1, 0x3fa00000    # 1.25f

    cmpl-float v1, p0, v1

    if-nez v1, :cond_3

    .line 87
    const/high16 v0, 0x41a00000    # 20.0f

    goto :goto_0

    .line 89
    :cond_3
    const/high16 v1, 0x3fb00000    # 1.375f

    cmpl-float v1, p0, v1

    if-nez v1, :cond_0

    .line 90
    const/high16 v0, 0x41b00000    # 22.0f

    goto :goto_0
.end method

.method public static getRelativeLeft(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020002

    if-ne v0, v1, :cond_0

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 43
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/utils/DensityUtil;->getRelativeLeft(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static getRelativeTop(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020002

    if-ne v0, v1, :cond_0

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 36
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/utils/DensityUtil;->getRelativeTop(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static getScale(I)F
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 52
    .line 53
    packed-switch p0, :pswitch_data_0

    .line 72
    :goto_0
    :pswitch_0
    return v0

    .line 55
    :pswitch_1
    const/high16 v0, 0x3f600000    # 0.875f

    .line 56
    goto :goto_0

    .line 61
    :pswitch_2
    const/high16 v0, 0x3f900000    # 1.125f

    .line 62
    goto :goto_0

    .line 64
    :pswitch_3
    const/high16 v0, 0x3fa00000    # 1.25f

    .line 65
    goto :goto_0

    .line 67
    :pswitch_4
    const/high16 v0, 0x3fb00000    # 1.375f

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getTextSize(FI)F
    .locals 1

    .prologue
    .line 47
    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/ui/utils/DensityUtil;->getScale(I)F

    move-result v0

    .line 48
    mul-float/2addr v0, p0

    return v0
.end method

.method public static isValueEqule(FF)Z
    .locals 2

    .prologue
    .line 96
    float-to-int v0, p0

    .line 97
    float-to-int v1, p1

    .line 98
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 26
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    div-float v0, p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static px2sp(Landroid/content/Context;F)F
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 104
    div-float v0, p1, v0

    return v0
.end method

.method public static sp2px(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 117
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
