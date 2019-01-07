.class public final Lais;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 2
    .param p0, "size"    # J

    .prologue
    .line 91
    const-wide/32 v0, 0x19000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 92
    const-string/jumbo v0, "0~100KB"

    .line 107
    :goto_0
    return-object v0

    .line 93
    :cond_0
    const-wide/32 v0, 0x7d000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_1

    .line 94
    const-string/jumbo v0, "100~500KB"

    goto :goto_0

    .line 95
    :cond_1
    const-wide/32 v0, 0x100000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_2

    .line 96
    const-string/jumbo v0, "500KB~1MB"

    goto :goto_0

    .line 97
    :cond_2
    const-wide/32 v0, 0x200000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_3

    .line 98
    const-string/jumbo v0, "1MB~2MB"

    goto :goto_0

    .line 99
    :cond_3
    const-wide/32 v0, 0x300000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_4

    .line 100
    const-string/jumbo v0, "2MB~3MB"

    goto :goto_0

    .line 101
    :cond_4
    const-wide/32 v0, 0x400000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_5

    .line 102
    const-string/jumbo v0, "3MB~4MB"

    goto :goto_0

    .line 103
    :cond_5
    const-wide/32 v0, 0x500000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_6

    .line 104
    const-string/jumbo v0, "4MB~5MB"

    goto :goto_0

    .line 107
    :cond_6
    const-string/jumbo v0, "5MB~"

    goto :goto_0
.end method
