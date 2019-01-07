.class public final Lbkb;
.super Ljava/lang/Object;
.source "DingTimeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 12
    .param p0, "fromCalendar"    # Ljava/util/Calendar;
    .param p1, "toCalendar"    # Ljava/util/Calendar;

    .prologue
    const/16 v11, 0xe

    const/16 v10, 0xd

    const/16 v9, 0xc

    const/16 v8, 0xb

    const/4 v1, 0x0

    .line 23
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v1

    .line 26
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 27
    .local v0, "tempCalendar":Ljava/util/Calendar;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 28
    invoke-virtual {v0, v8, v1}, Ljava/util/Calendar;->set(II)V

    .line 29
    invoke-virtual {v0, v9, v1}, Ljava/util/Calendar;->set(II)V

    .line 30
    invoke-virtual {v0, v10, v1}, Ljava/util/Calendar;->set(II)V

    .line 31
    invoke-virtual {v0, v11, v1}, Ljava/util/Calendar;->set(II)V

    .line 32
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 33
    .local v2, "timeMillis1":J
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 34
    invoke-virtual {v0, v8, v1}, Ljava/util/Calendar;->set(II)V

    .line 35
    invoke-virtual {v0, v9, v1}, Ljava/util/Calendar;->set(II)V

    .line 36
    invoke-virtual {v0, v10, v1}, Ljava/util/Calendar;->set(II)V

    .line 37
    invoke-virtual {v0, v11, v1}, Ljava/util/Calendar;->set(II)V

    .line 38
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 39
    .local v4, "timeMillis2":J
    sub-long v6, v4, v2

    const-wide/32 v8, 0x5265c00

    div-long/2addr v6, v8

    long-to-int v1, v6

    goto :goto_0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 10
    .param p0, "targetDate"    # J

    .prologue
    const/4 v8, 0x1

    .line 44
    const-wide/16 v6, 0x0

    cmp-long v6, p0, v6

    if-gez v6, :cond_0

    .line 45
    const-string/jumbo v6, ""

    .line 67
    :goto_0
    return-object v6

    .line 48
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 49
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v1

    .line 51
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 52
    .local v2, "currentTime":J
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 53
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 55
    .local v4, "currentYear":I
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 56
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 58
    .local v5, "targetYear":I
    if-eq v4, v5, :cond_1

    .line 59
    invoke-static {p0, p1}, Lcog;->g(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 64
    :goto_1
    const-string/jumbo v6, " "

    invoke-virtual {v0, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 65
    invoke-static {p0, p1}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 67
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {p0, p1}, Lcog;->f(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1
.end method
