.class public final Lgqh;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .locals 4

    .prologue
    .line 182
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v0

    .line 183
    .local v0, "currentTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 187
    :cond_0
    return-wide v0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 4
    .param p0, "timeStamp"    # J

    .prologue
    .line 30
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const v2, 0x20015

    invoke-static {v1, p0, p1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 34
    :goto_0
    return-object v1

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, p0, p1}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 140
    sub-long v4, p3, p1

    .line 141
    .local v4, "diff":J
    new-instance v8, Ljava/util/Date;

    move-wide/from16 v0, p1

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 142
    .local v8, "startDate":Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    move-wide/from16 v0, p3

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 143
    .local v3, "endDate":Ljava/util/Date;
    const-wide/32 v12, 0x5265c00

    cmp-long v11, v4, v12

    if-gtz v11, :cond_0

    .line 144
    sget v11, Lfzs$h;->cspace_time_week:I

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1171
    :goto_0
    return-object v11

    .line 145
    :cond_0
    const-wide/32 v12, 0x240c8400

    cmp-long v11, v4, v12

    if-gtz v11, :cond_2

    .line 1165
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 1166
    invoke-virtual {v11, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1167
    const/4 v12, 0x7

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 1168
    invoke-virtual {v11, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1169
    const/4 v13, 0x7

    invoke-virtual {v11, v13}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 1170
    if-gt v12, v11, :cond_1

    .line 1171
    sget v11, Lfzs$h;->cspace_time_month:I

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 1173
    :cond_1
    sget v11, Lfzs$h;->cspace_time_week:I

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 148
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 149
    .local v2, "calendar":Ljava/util/Calendar;
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 150
    const/4 v11, 0x2

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 151
    .local v9, "startMonth":I
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 152
    .local v10, "startYear":I
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 153
    const/4 v11, 0x2

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 154
    .local v6, "endMonth":I
    if-ne v9, v6, :cond_3

    .line 155
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 156
    .local v7, "endYear":I
    if-ne v10, v7, :cond_3

    .line 157
    sget v11, Lfzs$h;->cspace_time_month:I

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 160
    .end local v7    # "endYear":I
    :cond_3
    sget v11, Lfzs$h;->cspace_time_span:I

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    add-int/lit8 v14, v9, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_0
.end method

.method public static b(J)Ljava/lang/String;
    .locals 24
    .param p0, "timeStamp"    # J

    .prologue
    .line 46
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    .line 47
    .local v7, "context":Landroid/content/Context;
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v5

    .line 48
    .local v5, "calendarBefore":Ljava/util/Calendar;
    move-wide/from16 v0, p0

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 50
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    .line 51
    .local v18, "yearBefore":I
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    add-int/lit8 v15, v20, 0x1

    .line 52
    .local v15, "monthBefore":I
    const/16 v20, 0x5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 53
    .local v8, "dayBefore":I
    const/16 v20, 0xb

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 54
    .local v11, "hourBefore":I
    const/16 v20, 0xc

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 56
    .local v13, "minuteBefore":I
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v6

    .line 57
    .local v6, "calendarNow":Ljava/util/Calendar;
    invoke-static {}, Lcms;->u()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 59
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    .line 60
    .local v19, "yearNow":I
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    add-int/lit8 v16, v20, 0x1

    .line 61
    .local v16, "monthNow":I
    const/16 v20, 0x5

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 62
    .local v9, "dayNow":I
    const/16 v20, 0xb

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 63
    .local v12, "hourNow":I
    const/16 v20, 0xc

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 67
    .local v14, "minuteNow":I
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcid;->c()Landroid/app/Application;

    move-result-object v20

    const/16 v21, 0x81

    move-object/from16 v0, v20

    move-wide/from16 v1, p0

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 72
    .local v17, "time":Ljava/lang/String;
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 73
    if-ne v8, v9, :cond_1

    .line 74
    mul-int/lit8 v20, v12, 0x3c

    add-int v20, v20, v14

    mul-int/lit8 v21, v11, 0x3c

    add-int v21, v21, v13

    sub-int v20, v20, v21

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 75
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    sget v22, Lfzs$h;->calendar_just_now:I

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v20 .. v20}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    :goto_1
    return-object v4

    .line 69
    .end local v17    # "time":Ljava/lang/String;
    :catch_0
    move-exception v20

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcid;->c()Landroid/app/Application;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, p0

    invoke-static {v0, v1, v2}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "time":Ljava/lang/String;
    goto :goto_0

    .line 77
    :cond_0
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    sget v22, Lfzs$h;->and_calendar_today:I

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v17, v20, v21

    invoke-static/range {v20 .. v20}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 84
    :cond_1
    :try_start_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcid;->c()Landroid/app/Application;

    move-result-object v20

    const v21, 0x20095

    move-object/from16 v0, v20

    move-wide/from16 v1, p0

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .local v4, "allTimeString":Ljava/lang/String;
    goto :goto_1

    .line 86
    .end local v4    # "allTimeString":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 87
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcid;->c()Landroid/app/Application;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, p0

    invoke-static {v0, v1, v2}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "allTimeString":Ljava/lang/String;
    goto :goto_1
.end method

.method public static c(J)Ljava/lang/String;
    .locals 12
    .param p0, "expiredTimeStamp"    # J

    .prologue
    const/4 v10, 0x5

    .line 98
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 99
    .local v2, "date":Ljava/util/Date;
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 100
    .local v0, "calendarExpired":Ljava/util/Calendar;
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 102
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 104
    .local v3, "dayExpired":I
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v6

    .line 106
    .local v6, "nowTime":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_0

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 110
    :cond_0
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 111
    .local v5, "now":Ljava/util/Date;
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v1

    .line 112
    .local v1, "calendarNow":Ljava/util/Calendar;
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 114
    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 116
    .local v4, "dayNow":I
    if-ne v3, v4, :cond_1

    sub-long v8, p0, v6

    const-wide/32 v10, 0x5265c00

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 117
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v10

    invoke-virtual {v10}, Lcid;->c()Landroid/app/Application;

    move-result-object v10

    sget v11, Lfzs$h;->and_calendar_today:I

    invoke-virtual {v10, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p0, p1}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 120
    :goto_0
    return-object v8

    :cond_1
    invoke-static {p0, p1}, Lcog;->g(J)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public static d(J)Ljava/lang/String;
    .locals 2
    .param p0, "targetTime"    # J

    .prologue
    .line 125
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const v1, 0x20091

    invoke-static {v0, p0, p1, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p0, p1}, Lcog;->k(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static e(J)Ljava/lang/String;
    .locals 10
    .param p0, "seconds"    # J

    .prologue
    .line 191
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 193
    .local v0, "absSeconds":J
    const-wide/16 v4, 0xe10

    cmp-long v3, v0, v4

    if-ltz v3, :cond_1

    .line 194
    const-string/jumbo v3, "%d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0xe10

    div-long v6, v0, v6

    .line 196
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0xe10

    rem-long v6, v0, v6

    const-wide/16 v8, 0x3c

    div-long/2addr v6, v8

    .line 197
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-wide/16 v6, 0x3c

    rem-long v6, v0, v6

    .line 198
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 194
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "positive":Ljava/lang/String;
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v3, p0, v4

    if-gez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "positive":Ljava/lang/String;
    :cond_0
    return-object v2

    .line 200
    :cond_1
    const-string/jumbo v3, "%02d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0xe10

    rem-long v6, v0, v6

    const-wide/16 v8, 0x3c

    div-long/2addr v6, v8

    .line 202
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x3c

    rem-long v6, v0, v6

    .line 203
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 200
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "positive":Ljava/lang/String;
    goto :goto_0
.end method
