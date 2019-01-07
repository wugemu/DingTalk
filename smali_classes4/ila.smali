.class public final Lila;
.super Ljava/lang/Object;
.source "DeviceHWRenderHelper.java"


# direct methods
.method public static a()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 22
    invoke-static {}, Lijt;->b()I

    move-result v1

    .line 23
    if-eq v1, v0, :cond_0

    if-gtz v1, :cond_1

    .line 26
    :cond_0
    :goto_0
    return v0

    :cond_1
    div-int/lit16 v0, v1, 0x3e8

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)J
    .locals 6

    .prologue
    const-wide/16 v0, -0x1

    .line 31
    invoke-static {p0}, Lijt;->a(Landroid/content/Context;)J

    move-result-wide v2

    .line 32
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    const-wide/32 v0, 0x100000

    div-long v0, v2, v0

    goto :goto_0
.end method
