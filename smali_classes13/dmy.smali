.class public final Ldmy;
.super Ljava/lang/Object;
.source "LucyTimeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .locals 4

    .prologue
    .line 11
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v0

    .line 12
    .local v0, "curTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 15
    :cond_0
    return-wide v0
.end method
