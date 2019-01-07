.class public final Lesc;
.super Ljava/lang/Object;
.source "IntimacyUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JJDJD)D
    .locals 4
    .param p0, "baseTime"    # J
    .param p2, "decayTime"    # J
    .param p4, "weak"    # D
    .param p6, "granularity"    # J
    .param p8, "oldScore"    # D

    .prologue
    const-wide/16 v0, 0x0

    .line 23
    .line 1037
    cmpl-double v2, p4, v0

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-nez v2, :cond_1

    .line 23
    :cond_0
    :goto_0
    mul-double/2addr v0, p8

    return-wide v0

    .line 1041
    :cond_1
    sub-long v0, p0, p2

    div-long/2addr v0, p6

    .line 1042
    neg-long v2, v0

    mul-long/2addr v0, v2

    long-to-double v0, v0

    div-double/2addr v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    goto :goto_0
.end method
