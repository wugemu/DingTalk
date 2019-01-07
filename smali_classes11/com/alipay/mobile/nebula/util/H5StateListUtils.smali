.class public Lcom/alipay/mobile/nebula/util/H5StateListUtils;
.super Ljava/lang/Object;
.source "H5StateListUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorStateList(III)Landroid/content/res/ColorStateList;
    .locals 8
    .param p0, "normalColor"    # I
    .param p1, "pressedColor"    # I
    .param p2, "disableColor"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    .line 29
    :cond_0
    if-nez p1, :cond_1

    move p1, p0

    .line 30
    :cond_1
    if-nez p2, :cond_2

    move p2, p0

    .line 31
    :cond_2
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v7, [[I

    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    aput-object v2, v1, v4

    new-array v2, v5, [I

    const v3, -0x101009e

    aput v3, v2, v4

    aput-object v2, v1, v5

    new-array v2, v4, [I

    aput-object v2, v1, v6

    new-array v2, v7, [I

    aput p1, v2, v4

    aput p2, v2, v5

    aput p0, v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 39
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    goto :goto_0
.end method

.method public static getStateColor(I)Landroid/content/res/ColorStateList;
    .locals 2
    .param p0, "normalColor"    # I

    .prologue
    .line 43
    const v1, 0x66ffffff

    and-int v0, p0, v1

    .line 44
    .local v0, "pressed":I
    invoke-static {p0, v0, v0}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getColorStateList(III)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1
.end method

.method public static getStateListDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 5
    .param p0, "normal"    # Landroid/graphics/drawable/Drawable;
    .param p1, "pressed"    # Landroid/graphics/drawable/Drawable;
    .param p2, "disabled"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    if-nez p0, :cond_0

    .line 14
    const/4 v0, 0x0

    .line 22
    :goto_0
    return-object v0

    .line 16
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    .line 17
    :cond_1
    if-nez p2, :cond_2

    move-object p2, p0

    .line 18
    :cond_2
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 19
    .local v0, "sd":Landroid/graphics/drawable/StateListDrawable;
    new-array v1, v4, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 20
    new-array v1, v4, [I

    const v2, -0x101009e

    aput v2, v1, v3

    invoke-virtual {v0, v1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 21
    new-array v1, v3, [I

    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
