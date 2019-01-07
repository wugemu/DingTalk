.class public final Lamt;
.super Ljava/lang/Object;
.source "IntUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)[B
    .locals 4
    .param p0, "i"    # I

    .prologue
    .line 6
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 7
    .local v0, "bInt":[B
    move v1, p0

    .line 8
    .local v1, "value":I
    const/4 v2, 0x3

    rem-int/lit16 v3, v1, 0x100

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 9
    shr-int/lit8 v1, v1, 0x8

    .line 10
    const/4 v2, 0x2

    rem-int/lit16 v3, v1, 0x100

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 11
    shr-int/lit8 v1, v1, 0x8

    .line 12
    const/4 v2, 0x1

    rem-int/lit16 v3, v1, 0x100

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 13
    shr-int/lit8 v1, v1, 0x8

    .line 14
    const/4 v2, 0x0

    rem-int/lit16 v3, v1, 0x100

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 15
    return-object v0
.end method
