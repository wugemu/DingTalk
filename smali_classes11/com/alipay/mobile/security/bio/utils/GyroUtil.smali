.class public Lcom/alipay/mobile/security/bio/utils/GyroUtil;
.super Ljava/lang/Object;
.source "GyroUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceAngle(FF)D
    .locals 12
    .param p0, "y"    # F
    .param p1, "z"    # F

    .prologue
    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    .line 14
    mul-float v8, p1, p1

    mul-float v9, p0, p0

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 15
    .local v2, "g":D
    float-to-double v8, p0

    div-double v0, v8, v2

    .line 16
    .local v0, "cos":D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v0, v8

    if-lez v8, :cond_2

    .line 17
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 21
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    .line 22
    .local v4, "rad":D
    const/4 v8, 0x0

    cmpg-float v8, p1, v8

    if-gez v8, :cond_1

    .line 23
    sub-double v4, v10, v4

    .line 25
    :cond_1
    const-wide v8, 0x4076800000000000L    # 360.0

    mul-double/2addr v8, v4

    div-double v6, v8, v10

    .line 26
    .local v6, "zAngle":D
    return-wide v6

    .line 18
    .end local v4    # "rad":D
    .end local v6    # "zAngle":D
    :cond_2
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpg-double v8, v0, v8

    if-gez v8, :cond_0

    .line 19
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method
