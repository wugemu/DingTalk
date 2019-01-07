.class public Lcom/alivc/component/capture/JNIUtils;
.super Ljava/lang/Object;
.source "JNIUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AudioChannelFromNative(I)I
    .locals 1
    .param p0, "channel"    # I

    .prologue
    .line 23
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 24
    const/16 v0, 0xc

    .line 26
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public static AudioChannelToNative(I)I
    .locals 1
    .param p0, "channel"    # I

    .prologue
    .line 41
    const/16 v0, 0xc

    if-ne p0, v0, :cond_0

    .line 42
    const/4 v0, 0x2

    .line 44
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static AudioFormatFromNative(I)I
    .locals 2
    .param p0, "format"    # I

    .prologue
    const/4 v0, 0x2

    .line 12
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 19
    :cond_0
    :goto_0
    return v0

    .line 14
    :cond_1
    if-nez p0, :cond_2

    .line 15
    const/4 v0, 0x3

    goto :goto_0

    .line 16
    :cond_2
    const/4 v1, 0x7

    if-ne p0, v1, :cond_0

    .line 17
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static AudioFormatToNative(I)I
    .locals 2
    .param p0, "format"    # I

    .prologue
    const/4 v0, 0x1

    .line 30
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v0

    .line 32
    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    .line 33
    const/4 v0, 0x0

    goto :goto_0

    .line 34
    :cond_2
    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    .line 35
    const/4 v0, 0x7

    goto :goto_0
.end method

.method static VideoFormatFromNative(I)I
    .locals 2
    .param p0, "format"    # I

    .prologue
    const/16 v0, 0x11

    .line 48
    const/4 v1, 0x7

    if-ne p0, v1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    const/4 v1, 0x5

    if-ne p0, v1, :cond_2

    .line 51
    const/16 v0, 0x23

    goto :goto_0

    .line 52
    :cond_2
    const/16 v1, 0xc

    if-ne p0, v1, :cond_0

    .line 53
    const/16 v0, 0x28

    goto :goto_0
.end method

.method public static VideoFormatToNative(I)I
    .locals 2
    .param p0, "format"    # I

    .prologue
    const/4 v0, 0x7

    .line 59
    const/16 v1, 0x11

    if-ne p0, v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    const/16 v1, 0x23

    if-ne p0, v1, :cond_2

    .line 62
    const/4 v0, 0x5

    goto :goto_0

    .line 63
    :cond_2
    const/16 v1, 0x28

    if-ne p0, v1, :cond_0

    .line 64
    const/16 v0, 0xc

    goto :goto_0
.end method
