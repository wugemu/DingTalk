.class public Lcom/laiwang/protocol/android/f;
.super Ljava/lang/Object;
.source "DefaultHeartBeatInterval.java"


# direct methods
.method public static a()I
    .locals 1

    .prologue
    .line 28
    const v0, 0x2bf20

    return v0
.end method

.method public static a(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 36
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 37
    const v0, 0x493e0

    .line 39
    :goto_0
    return v0

    :cond_0
    const v0, 0x2bf20

    goto :goto_0
.end method

.method public static b(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 48
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 49
    const v0, 0xdbba0

    .line 51
    :goto_0
    return v0

    :cond_0
    const v0, 0x927c0

    goto :goto_0
.end method
