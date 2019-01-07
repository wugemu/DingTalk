.class public final Lhws;
.super Ljava/lang/Object;


# direct methods
.method public static a(FF)D
    .locals 6

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-float v0, p1, p1

    mul-float v1, p0, p0

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    float-to-double v2, p0

    div-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    sub-double v0, v4, v0

    :cond_0
    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, v2

    div-double/2addr v0, v4

    return-wide v0
.end method
