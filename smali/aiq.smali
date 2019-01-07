.class public final Laiq;
.super Ljava/lang/Object;
.source "DayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)J
    .locals 4
    .param p0, "millis"    # J

    .prologue
    .line 24
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(JJ)Z
    .locals 6
    .param p0, "ms1"    # J
    .param p2, "ms2"    # J

    .prologue
    .line 17
    sub-long v0, p0, p2

    .line 18
    .local v0, "interval":J
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/32 v2, -0x5265c00

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 20
    invoke-static {p0, p1}, Laiq;->a(J)J

    move-result-wide v2

    invoke-static {p2, p3}, Laiq;->a(J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
