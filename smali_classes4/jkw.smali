.class public final Ljkw;
.super Ljava/lang/Object;
.source "CameraHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Landroid/hardware/Camera;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 41
    :try_start_0
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs a(Ljava/util/List;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "candidate_list"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 343
    .local v0, "item":Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    .end local v0    # "item":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 342
    .restart local v0    # "item":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    .end local v0    # "item":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;)V
    .locals 4
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .param p1, "rect"    # Landroid/graphics/Rect;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 401
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    new-instance v0, Landroid/hardware/Camera$Area;

    const/16 v2, 0x12c

    invoke-direct {v0, p1, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    .line 407
    .local v0, "focus_area":Landroid/hardware/Camera$Area;
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v1

    .line 408
    .local v1, "focus_area_count_max":I
    if-lez v1, :cond_0

    .line 412
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/hardware/Camera$Area;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    goto :goto_0
.end method
