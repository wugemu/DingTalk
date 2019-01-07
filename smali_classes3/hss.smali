.class public final Lhss;
.super Ljava/lang/Object;
.source "RotateUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FFFFFF)D
    .locals 6
    .param p0, "ax"    # F
    .param p1, "ay"    # F
    .param p2, "bx"    # F
    .param p3, "by"    # F
    .param p4, "cx"    # F
    .param p5, "cy"    # F

    .prologue
    .line 147
    mul-float v2, p0, p3

    mul-float v3, p2, p5

    add-float/2addr v2, v3

    mul-float v3, p4, p1

    add-float/2addr v2, v3

    mul-float v3, p2, p1

    sub-float/2addr v2, v3

    mul-float v3, p4, p3

    sub-float/2addr v2, v3

    mul-float v3, p0, p5

    sub-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 150
    .local v0, "result":D
    return-wide v0
.end method
