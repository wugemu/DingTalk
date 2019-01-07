.class public Lcom/ut/mini/exposure/ExposureUtils;
.super Ljava/lang/Object;
.source "ExposureUtils.java"


# static fields
.field protected static final UT_EXPROSURE_ARGS:Ljava/lang/String; = "UT_EXPROSURE_ARGS"

.field protected static final UT_EXPROSURE_BLOCK:Ljava/lang/String; = "UT_EXPROSURE_BLOCK"

.field protected static final UT_EXPROSURE_VIEWID:Ljava/lang/String; = "UT_EXPROSURE_VIEWID"

.field public static final ut_exprosure_common_info_tag:I = -0x426b

.field public static final ut_exprosure_ignore_tag:I = -0x426c

.field public static final ut_exprosure_tag:I = -0x4269

.field public static final ut_exprosure_tag_for_weex:I = -0x426a


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static clearExposureForWeex(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 59
    if-nez p0, :cond_0

    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "error,view is null"

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    const/16 v0, -0x426a

    invoke-virtual {p0, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static clearIgnoreTagForExposureView(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 104
    if-eqz p0, :cond_0

    .line 105
    const/16 v0, -0x426c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 107
    :cond_0
    return-void
.end method

.method public static isExposureView(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 82
    if-nez p0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, -0x4269

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isExposureViewForWeex(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 74
    if-nez p0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, -0x426a

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isIngoneExposureView(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 90
    if-nez p0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, -0x426c

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setExposure(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "block"    # Ljava/lang/String;
    .param p2, "viewId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 36
    if-nez p0, :cond_0

    .line 37
    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "error,view is null"

    aput-object v2, v1, v3

    invoke-static {v4, v1}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "error,block is empty"

    aput-object v2, v1, v3

    invoke-static {v4, v1}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "error,viewId is empty"

    aput-object v2, v1, v3

    invoke-static {v4, v1}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 48
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v0, "exprosureData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "UT_EXPROSURE_BLOCK"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string/jumbo v1, "UT_EXPROSURE_VIEWID"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    if-eqz p3, :cond_3

    .line 52
    const-string/jumbo v1, "UT_EXPROSURE_ARGS"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_3
    const/16 v1, -0x4269

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static setExposureForWeex(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "error,view is null"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    const/16 v0, -0x426a

    const-string/jumbo v1, "auto"

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static setIgnoreTagForExposureView(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 98
    if-eqz p0, :cond_0

    .line 99
    const/16 v0, -0x426c

    const-string/jumbo v1, "user"

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 101
    :cond_0
    return-void
.end method
