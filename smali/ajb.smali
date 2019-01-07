.class public final Lajb;
.super Ljava/lang/Object;
.source "StaticUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 2
    .param p0, "count"    # J

    .prologue
    .line 35
    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 36
    const-string/jumbo v0, "0~1000"

    .line 83
    :goto_0
    return-object v0

    .line 39
    :cond_0
    const-wide/16 v0, 0x7d0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 40
    const-string/jumbo v0, "1000~2000"

    goto :goto_0

    .line 43
    :cond_1
    const-wide/16 v0, 0xbb8

    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    .line 44
    const-string/jumbo v0, "2000~3000"

    goto :goto_0

    .line 47
    :cond_2
    const-wide/16 v0, 0xfa0

    cmp-long v0, p0, v0

    if-gez v0, :cond_3

    .line 48
    const-string/jumbo v0, "3000~4000"

    goto :goto_0

    .line 51
    :cond_3
    const-wide/16 v0, 0x1770

    cmp-long v0, p0, v0

    if-gez v0, :cond_4

    .line 52
    const-string/jumbo v0, "4000~6000"

    goto :goto_0

    .line 55
    :cond_4
    const-wide/16 v0, 0x1f40

    cmp-long v0, p0, v0

    if-gez v0, :cond_5

    .line 56
    const-string/jumbo v0, "6000~8000"

    goto :goto_0

    .line 59
    :cond_5
    const-wide/16 v0, 0x2710

    cmp-long v0, p0, v0

    if-gez v0, :cond_6

    .line 60
    const-string/jumbo v0, "8000~10000"

    goto :goto_0

    .line 63
    :cond_6
    const-wide/16 v0, 0x2ee0

    cmp-long v0, p0, v0

    if-gez v0, :cond_7

    .line 64
    const-string/jumbo v0, "10000~12000"

    goto :goto_0

    .line 67
    :cond_7
    const-wide/16 v0, 0x36b0

    cmp-long v0, p0, v0

    if-gez v0, :cond_8

    .line 68
    const-string/jumbo v0, "12000~14000"

    goto :goto_0

    .line 71
    :cond_8
    const-wide/16 v0, 0x3e80

    cmp-long v0, p0, v0

    if-gez v0, :cond_9

    .line 72
    const-string/jumbo v0, "14000~16000"

    goto :goto_0

    .line 75
    :cond_9
    const-wide/16 v0, 0x4650

    cmp-long v0, p0, v0

    if-gez v0, :cond_a

    .line 76
    const-string/jumbo v0, "16000~18000"

    goto :goto_0

    .line 79
    :cond_a
    const-wide/16 v0, 0x4e20

    cmp-long v0, p0, v0

    if-gez v0, :cond_b

    .line 80
    const-string/jumbo v0, "18000~20000"

    goto/16 :goto_0

    .line 83
    :cond_b
    const-string/jumbo v0, "20000~"

    goto/16 :goto_0
.end method
