.class public final Lbkq;
.super Ljava/lang/Object;
.source "TimeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .locals 5

    .prologue
    const/16 v4, 0xc

    const/4 v3, 0x0

    .line 32
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 33
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 34
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 35
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 36
    .local v1, "minute":I
    if-nez v1, :cond_0

    .line 37
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 40
    :goto_0
    return-wide v2

    .line 39
    :cond_0
    rsub-int/lit8 v2, v1, 0x3c

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->add(II)V

    .line 40
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    goto :goto_0
.end method

.method public static a(J)J
    .locals 10
    .param p0, "localMillis"    # J

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 47
    new-instance v7, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 48
    .local v7, "time":Landroid/text/format/Time;
    invoke-virtual {v7, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 49
    invoke-virtual {v7, v8}, Landroid/text/format/Time;->toMillis(Z)J

    .line 50
    iget v6, v7, Landroid/text/format/Time;->year:I

    iget v5, v7, Landroid/text/format/Time;->month:I

    iget v4, v7, Landroid/text/format/Time;->monthDay:I

    .line 1057
    new-instance v0, Landroid/text/format/Time;

    const-string/jumbo v2, "UTC"

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move v2, v1

    move v3, v1

    .line 1058
    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 1059
    invoke-virtual {v0, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 50
    return-wide v0
.end method
