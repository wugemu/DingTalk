.class public final Lfxp;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "colorRes"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 90
    sget v1, Lezg$l;->icon_roundclose_fill:I

    sget v2, Lezg$f;->ui_common_headline3_text_size:I

    sget v3, Lezg$f;->ui_common_headline3_text_size:I

    invoke-static {v1, p0, v2, v3}, Lfxp;->a(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 95
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public static a(II)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "iconFontResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p1, "colorResId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 33
    if-lez p0, :cond_0

    if-gtz p1, :cond_1

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 37
    :cond_1
    new-instance v0, Lecw;

    .line 38
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 41
    .local v0, "icon":Lecw;
    sget v1, Lecj$c;->dp24:I

    invoke-static {v1}, Leda;->d(I)I

    move-result v1

    .line 1070
    iput v1, v0, Lecw;->a:I

    .line 42
    sget v1, Lecj$c;->dp24:I

    invoke-static {v1}, Leda;->d(I)I

    move-result v1

    .line 1079
    iput v1, v0, Lecw;->b:I

    goto :goto_0
.end method

.method public static a(IIII)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "iconFontResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p1, "colorResId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p2, "widthResId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p3, "heightResId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 52
    if-gtz p0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    .line 56
    :cond_0
    new-instance v0, Lecw;

    .line 57
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 60
    .local v0, "icon":Lecw;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 2070
    iput v1, v0, Lecw;->a:I

    .line 61
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 2079
    iput v1, v0, Lecw;->b:I

    goto :goto_0
.end method

.method public static a(Landroid/view/View;I)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "visibility"    # I

    .prologue
    const/4 v4, 0x0

    .line 102
    if-nez p0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 112
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "setViewVisible exception : "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 152
    if-nez p0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(IIII)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "iconFontResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p1, "colorResId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 71
    if-gtz p0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    .line 75
    :cond_0
    new-instance v0, Lecw;

    .line 76
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 3070
    .local v0, "icon":Lecw;
    iput p2, v0, Lecw;->a:I

    .line 3079
    iput p3, v0, Lecw;->b:I

    goto :goto_0
.end method
