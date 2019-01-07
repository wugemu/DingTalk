.class public final Lkhc;
.super Ljava/lang/Object;
.source "progressionUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0002\u001a \u0010\u0000\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a \u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u0001H\u0000\u001a \u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H\u0000\u001a\u0018\u0010\n\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0002\u001a\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0005H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "differenceModulo",
        "",
        "a",
        "b",
        "c",
        "",
        "getProgressionLastElement",
        "start",
        "end",
        "step",
        "mod",
        "kotlin-runtime"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# direct methods
.method private static final a(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 21
    rem-int v0, p0, p1

    .line 22
    .local v0, "mod":I
    if-ltz v0, :cond_0

    .end local v0    # "mod":I
    :goto_0
    return v0

    .restart local v0    # "mod":I
    :cond_0
    add-int/2addr v0, p1

    goto :goto_0
.end method

.method public static final a(III)I
    .locals 2
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "step"    # I

    .prologue
    .line 53
    if-lez p2, :cond_0

    .line 54
    invoke-static {p1, p0, p2}, Lkhc;->b(III)I

    move-result v0

    sub-int v0, p1, v0

    .line 57
    :goto_0
    return v0

    .line 56
    :cond_0
    if-gez p2, :cond_1

    .line 57
    neg-int v0, p2

    invoke-static {p0, p1, v0}, Lkhc;->b(III)I

    move-result v0

    add-int/2addr v0, p1

    goto :goto_0

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Step is zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private static final a(JJ)J
    .locals 4
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 26
    rem-long v0, p0, p2

    .line 27
    .local v0, "mod":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .end local v0    # "mod":J
    :goto_0
    return-wide v0

    .restart local v0    # "mod":J
    :cond_0
    add-long/2addr v0, p2

    goto :goto_0
.end method

.method public static final a(JJJ)J
    .locals 4
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .prologue
    .line 36
    invoke-static {p0, p1, p4, p5}, Lkhc;->a(JJ)J

    move-result-wide v0

    invoke-static {p2, p3, p4, p5}, Lkhc;->a(JJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p4, p5}, Lkhc;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final b(III)I
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 32
    invoke-static {p0, p2}, Lkhc;->a(II)I

    move-result v0

    invoke-static {p1, p2}, Lkhc;->a(II)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Lkhc;->a(II)I

    move-result v0

    return v0
.end method
