.class public final Lgrk;
.super Ljava/lang/Object;
.source "DocCameraParamsConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgrk$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method

.method public static a(Ljava/util/List;F)Landroid/hardware/Camera$Size;
    .locals 8
    .param p1, "ratio"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;F)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "array":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez p0, :cond_1

    .line 53
    const/4 v4, 0x0

    .line 68
    :cond_0
    return-object v4

    .line 55
    :cond_1
    const/4 v4, 0x0

    .line 56
    .local v4, "size":Landroid/hardware/Camera$Size;
    const/high16 v3, 0x42c80000    # 100.0f

    .line 57
    .local v3, "minis":F
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 58
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 59
    .local v1, "item":Landroid/hardware/Camera$Size;
    if-eqz v1, :cond_2

    .line 62
    const v5, 0x3fe38e39

    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v6, v6

    iget v7, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 63
    .local v0, "curMinus":F
    cmpg-float v5, v0, v3

    if-gez v5, :cond_2

    .line 64
    move v3, v0

    .line 65
    move-object v4, v1

    .line 57
    .end local v0    # "curMinus":F
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/util/List;IZ)Ljava/util/List;
    .locals 6
    .param p1, "width"    # I
    .param p2, "moreThanTheWidth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez p0, :cond_1

    .line 73
    const/4 v0, 0x0

    .line 99
    :cond_0
    return-object v0

    .line 76
    :cond_1
    new-instance v1, Lgrk$a;

    invoke-direct {v1}, Lgrk$a;-><init>()V

    .line 77
    .local v1, "cameraAscendSizeComparator":Lgrk$a;
    invoke-static {p0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 78
    if-eqz p2, :cond_2

    .line 79
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 82
    :cond_2
    const/4 v0, 0x0

    .line 83
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v2, -0x1

    .line 84
    .local v2, "selectedWidth":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 85
    .local v3, "size":Landroid/hardware/Camera$Size;
    if-eqz v3, :cond_3

    .line 89
    const/4 v5, -0x1

    if-ne v2, v5, :cond_4

    if-eqz p2, :cond_6

    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    if-lt v5, p1, :cond_4

    .line 90
    :goto_1
    iget v2, v3, Landroid/hardware/Camera$Size;->width:I

    .line 92
    :cond_4
    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    if-ne v2, v5, :cond_3

    .line 93
    if-nez v0, :cond_5

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "array":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .restart local v0    # "array":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_6
    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    if-gt v5, p1, :cond_4

    goto :goto_1
.end method
