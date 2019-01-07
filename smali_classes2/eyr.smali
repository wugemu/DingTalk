.class public final Leyr;
.super Ljava/lang/Object;
.source "ConfDateUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 9
    .param p0, "time"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 262
    new-instance v2, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const-string/jumbo v4, ""

    invoke-direct {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .local v2, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/16 v4, 0x3c

    if-ge p0, v4, :cond_0

    .line 264
    const-string/jumbo v4, "00:"

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 265
    const-string/jumbo v4, "%02d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 283
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 267
    :cond_0
    const/16 v4, 0xe10

    if-gt p0, v4, :cond_1

    .line 268
    div-int/lit8 v1, p0, 0x3c

    .line 269
    .local v1, "minute":I
    mul-int/lit8 v4, v1, 0x3c

    sub-int v3, p0, v4

    .line 270
    .local v3, "second":I
    const-string/jumbo v4, "%02d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 271
    const-string/jumbo v4, "%02d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 273
    .end local v1    # "minute":I
    .end local v3    # "second":I
    :cond_1
    div-int/lit8 v1, p0, 0x3c

    .line 274
    .restart local v1    # "minute":I
    mul-int/lit8 v4, v1, 0x3c

    sub-int v3, p0, v4

    .line 275
    .restart local v3    # "second":I
    div-int/lit8 v0, v1, 0x3c

    .line 276
    .local v0, "hours":I
    mul-int/lit8 v4, v0, 0x3c

    sub-int/2addr v1, v4

    .line 278
    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 279
    const-string/jumbo v4, "%02d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 280
    const-string/jumbo v4, "%02d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 12
    .param p0, "targetDate"    # J

    .prologue
    .line 24
    const-wide/16 v10, 0x0

    cmp-long v9, p0, v10

    if-gez v9, :cond_0

    .line 25
    const-string/jumbo v9, "Invalid"

    .line 48
    :goto_0
    return-object v9

    .line 27
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 28
    .local v4, "now":J
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 29
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 31
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 32
    .local v3, "currentYear":I
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit8 v2, v9, 0x1

    .line 33
    .local v2, "currentMonth":I
    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 35
    .local v1, "currentDay":I
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 36
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 37
    .local v8, "targetYear":I
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit8 v7, v9, 0x1

    .line 38
    .local v7, "targetMonth":I
    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 40
    .local v6, "targetDay":I
    if-ne v3, v8, :cond_2

    if-ne v7, v2, :cond_2

    .line 41
    if-ne v6, v1, :cond_1

    .line 42
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v9

    invoke-virtual {v9}, Lcid;->c()Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Leuj$l;->calendar_today:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 43
    :cond_1
    sub-int v9, v1, v6

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 44
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v9

    invoke-virtual {v9}, Lcid;->c()Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Leuj$l;->calendar_yesterday:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 48
    :cond_2
    invoke-static {p0, p1}, Lcog;->f(J)Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method public static a(JJZ)Ljava/lang/String;
    .locals 10
    .param p0, "start"    # J
    .param p2, "end"    # J
    .param p4, "withDate"    # Z

    .prologue
    const-wide/32 v8, 0xea60

    const-wide/16 v6, 0x0

    .line 323
    cmp-long v4, p0, v6

    if-ltz v4, :cond_0

    cmp-long v4, p2, v6

    if-ltz v4, :cond_0

    cmp-long v4, p0, p2

    if-lez v4, :cond_1

    .line 324
    :cond_0
    const/4 v4, 0x0

    .line 349
    :goto_0
    return-object v4

    .line 326
    :cond_1
    invoke-static {p0, p1}, Leyr;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "startDate":Ljava/lang/String;
    invoke-static {p0, p1}, Leyr;->b(J)Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, "startTime":Ljava/lang/String;
    const/4 v0, 0x0

    .line 330
    .local v0, "endTime":Ljava/lang/String;
    cmp-long v4, p2, p0

    if-lez v4, :cond_3

    .line 332
    sub-long v4, p2, p0

    cmp-long v4, v4, v8

    if-gez v4, :cond_2

    .line 333
    add-long p2, p0, v8

    .line 335
    :cond_2
    invoke-static {p2, p3}, Leyr;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 338
    :cond_3
    new-instance v1, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const-string/jumbo v4, ""

    invoke-direct {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    .local v1, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    if-eqz p4, :cond_4

    .line 340
    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 341
    const-string/jumbo v4, " "

    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 343
    :cond_4
    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 344
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 345
    const-string/jumbo v4, "-"

    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 346
    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 349
    :cond_5
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static b(J)Ljava/lang/String;
    .locals 2
    .param p0, "targetTime"    # J

    .prologue
    .line 109
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 110
    const-string/jumbo v0, "Invalid"

    .line 113
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcog;->c(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(J)Ljava/lang/String;
    .locals 10
    .param p0, "targetTime"    # J

    .prologue
    const/16 v9, 0xa

    .line 119
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 120
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 122
    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 123
    .local v1, "h":I
    if-lt v1, v9, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "hour":Ljava/lang/String;
    :goto_0
    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 125
    .local v3, "min":I
    if-lt v3, v9, :cond_1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "minute":Ljava/lang/String;
    :goto_1
    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 127
    .local v5, "sec":I
    if-lt v5, v9, :cond_2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, "second":Ljava/lang/String;
    :goto_2
    const-string/jumbo v7, "%s:%s:%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    const/4 v9, 0x2

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 123
    .end local v2    # "hour":Ljava/lang/String;
    .end local v3    # "min":I
    .end local v4    # "minute":Ljava/lang/String;
    .end local v5    # "sec":I
    .end local v6    # "second":Ljava/lang/String;
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "0"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 125
    .restart local v2    # "hour":Ljava/lang/String;
    .restart local v3    # "min":I
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "0"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 127
    .restart local v4    # "minute":Ljava/lang/String;
    .restart local v5    # "sec":I
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "0"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2
.end method

.method public static d(J)Ljava/lang/String;
    .locals 10
    .param p0, "targetDate"    # J

    .prologue
    const/4 v8, 0x1

    .line 178
    const-wide/16 v6, 0x0

    cmp-long v6, p0, v6

    if-gez v6, :cond_0

    .line 179
    const-string/jumbo v6, "Invalid"

    .line 202
    :goto_0
    return-object v6

    .line 183
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 184
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v1

    .line 186
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 187
    .local v2, "currentTime":J
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 188
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 190
    .local v4, "currentYear":I
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 191
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 193
    .local v5, "targetYear":I
    if-eq v4, v5, :cond_1

    .line 194
    invoke-static {p0, p1}, Lcog;->g(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 199
    :goto_1
    const-string/jumbo v6, " "

    invoke-virtual {v0, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 200
    invoke-static {p0, p1}, Lcog;->c(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 202
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 196
    :cond_1
    invoke-static {p0, p1}, Lcog;->f(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1
.end method

.method public static e(J)Ljava/lang/String;
    .locals 14
    .param p0, "duration"    # J

    .prologue
    .line 292
    new-instance v8, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const-string/jumbo v10, ""

    invoke-direct {v8, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    .local v8, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v10

    invoke-virtual {v10}, Lcid;->c()Landroid/app/Application;

    move-result-object v10

    sget v11, Leuj$l;->duration_hour:I

    invoke-virtual {v10, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "hours":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v10

    invoke-virtual {v10}, Lcid;->c()Landroid/app/Application;

    move-result-object v10

    sget v11, Leuj$l;->duration_minute:I

    invoke-virtual {v10, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "minutes":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v10

    invoke-virtual {v10}, Lcid;->c()Landroid/app/Application;

    move-result-object v10

    sget v11, Leuj$l;->duration_second:I

    invoke-virtual {v10, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 298
    .local v9, "seconds":Ljava/lang/String;
    const-wide/16 v10, 0x0

    cmp-long v10, p0, v10

    if-gtz v10, :cond_1

    .line 299
    const-string/jumbo v10, "0"

    invoke-virtual {v8, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 316
    :cond_0
    :goto_0
    invoke-virtual {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 300
    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v10, p0, v10

    if-lez v10, :cond_2

    const-wide/16 v10, 0x3c

    cmp-long v10, p0, v10

    if-gez v10, :cond_2

    .line 301
    invoke-virtual {v8, p0, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 302
    :cond_2
    const-wide/16 v10, 0x3c

    cmp-long v10, p0, v10

    if-ltz v10, :cond_3

    const-wide/16 v10, 0xe10

    cmp-long v10, p0, v10

    if-gez v10, :cond_3

    .line 303
    const-wide/16 v10, 0x3c

    div-long v4, p0, v10

    .line 304
    .local v4, "m":J
    const-wide/16 v10, 0x3c

    rem-long v6, p0, v10

    .line 305
    .local v6, "s":J
    invoke-virtual {v8, v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 306
    const-string/jumbo v10, "%02d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 307
    .end local v4    # "m":J
    .end local v6    # "s":J
    :cond_3
    const-wide/16 v10, 0xe10

    cmp-long v10, p0, v10

    if-ltz v10, :cond_0

    .line 308
    const-wide/16 v10, 0xe10

    div-long v0, p0, v10

    .line 309
    .local v0, "h":J
    const-wide/16 v10, 0xe10

    rem-long v10, p0, v10

    const-wide/16 v12, 0x3c

    div-long v4, v10, v12

    .line 310
    .restart local v4    # "m":J
    const-wide/16 v10, 0x3c

    rem-long v6, p0, v10

    .line 311
    .restart local v6    # "s":J
    invoke-virtual {v8, v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 312
    const-string/jumbo v10, "%02d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 313
    const-string/jumbo v10, "%02d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_0
.end method
