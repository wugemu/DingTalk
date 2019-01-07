.class public Lcom/google/ical/compat/jodatime/TimeZoneConverter$1;
.super Ljava/util/TimeZone;
.source "TimeZoneConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liwm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x356f64ae8347L


# instance fields
.field final synthetic val$dtz:Lorg/joda/time/DateTimeZone;


# direct methods
.method constructor <init>(Lorg/joda/time/DateTimeZone;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/ical/compat/jodatime/TimeZoneConverter$1;->val$dtz:Lorg/joda/time/DateTimeZone;

    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "that"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 152
    instance-of v2, p1, Ljava/util/TimeZone;

    if-nez v2, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 155
    check-cast v0, Ljava/util/TimeZone;

    .line 156
    .local v0, "thatTz":Ljava/util/TimeZone;
    invoke-virtual {p0}, Lcom/google/ical/compat/jodatime/TimeZoneConverter$1;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/ical/compat/jodatime/TimeZoneConverter$1;->hasSameRules(Ljava/util/TimeZone;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getOffset(IIIIII)I
    .locals 27
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "milliseconds"    # I

    .prologue
    .line 99
    const v3, 0x36ee80

    div-int v6, p6, v3

    .line 100
    .local v6, "hour":I
    const v3, 0x36ee80

    rem-int v9, p6, v3

    .line 101
    .local v9, "millis":I
    const v3, 0xea60

    div-int v7, v9, v3

    .line 102
    .local v7, "minute":I
    const v3, 0xea60

    rem-int/2addr v9, v3

    .line 103
    div-int/lit16 v8, v9, 0x3e8

    .line 104
    .local v8, "second":I
    rem-int/lit16 v9, v9, 0x3e8

    .line 105
    if-nez p1, :cond_0

    add-int/lit8 v3, p2, -0x1

    neg-int v0, v3

    move/from16 p2, v0

    .line 111
    :cond_0
    :try_start_0
    new-instance v2, Lorg/joda/time/DateTime;

    add-int/lit8 v4, p3, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/ical/compat/jodatime/TimeZoneConverter$1;->val$dtz:Lorg/joda/time/DateTimeZone;

    move/from16 v3, p2

    move/from16 v5, p4

    invoke-direct/range {v2 .. v10}, Lorg/joda/time/DateTime;-><init>(IIIIIIILorg/joda/time/DateTimeZone;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .local v2, "dt":Lorg/joda/time/DateTime;
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/ical/compat/jodatime/TimeZoneConverter$1;->val$dtz:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/joda/time/DateTimeZone;->getStandardOffset(J)I

    move-result v26

    .line 139
    .local v26, "offset":I
    new-instance v16, Lorg/joda/time/DateTime;

    add-int/lit8 v18, p3, 0x1

    invoke-static/range {v26 .. v26}, Lorg/joda/time/DateTimeZone;->forOffsetMillis(I)Lorg/joda/time/DateTimeZone;

    move-result-object v24

    move/from16 v17, p2

    move/from16 v19, p4

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    invoke-direct/range {v16 .. v24}, Lorg/joda/time/DateTime;-><init>(IIIIIIILorg/joda/time/DateTimeZone;)V

    .line 142
    .local v16, "stdDt":Lorg/joda/time/DateTime;
    invoke-virtual/range {v16 .. v16}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/google/ical/compat/jodatime/TimeZoneConverter$1;->getOffset(J)I

    move-result v3

    return v3

    .line 119
    .end local v2    # "dt":Lorg/joda/time/DateTime;
    .end local v16    # "stdDt":Lorg/joda/time/DateTime;
    .end local v26    # "offset":I
    :catch_0
    move-exception v3

    const/16 v3, 0x17

    if-ge v6, v3, :cond_1

    .line 120
    new-instance v2, Lorg/joda/time/DateTime;

    add-int/lit8 v12, p3, 0x1

    add-int/lit8 v14, v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/ical/compat/jodatime/TimeZoneConverter$1;->val$dtz:Lorg/joda/time/DateTimeZone;

    move-object/from16 v18, v0

    move-object v10, v2

    move/from16 v11, p2

    move/from16 v13, p4

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-direct/range {v10 .. v18}, Lorg/joda/time/DateTime;-><init>(IIIIIIILorg/joda/time/DateTimeZone;)V

    .restart local v2    # "dt":Lorg/joda/time/DateTime;
    goto :goto_0

    .line 123
    .end local v2    # "dt":Lorg/joda/time/DateTime;
    :cond_1
    new-instance v10, Ljava/util/GregorianCalendar;

    invoke-direct {v10}, Ljava/util/GregorianCalendar;-><init>()V

    .line 124
    .local v10, "c":Ljava/util/Calendar;
    invoke-virtual {v10}, Ljava/util/Calendar;->clear()V

    .line 125
    const-string/jumbo v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    .line 126
    invoke-virtual/range {v10 .. v16}, Ljava/util/Calendar;->set(IIIIII)V

    .line 127
    const/16 v3, 0xb

    const/4 v4, 0x1

    invoke-virtual {v10, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 128
    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 129
    .local v12, "year2":I
    const/4 v3, 0x2

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v25

    .line 130
    .local v25, "month2":I
    const/4 v3, 0x5

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 131
    .local v14, "day2":I
    const/16 v3, 0xb

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 132
    .local v15, "hour2":I
    new-instance v2, Lorg/joda/time/DateTime;

    add-int/lit8 v13, v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/ical/compat/jodatime/TimeZoneConverter$1;->val$dtz:Lorg/joda/time/DateTimeZone;

    move-object/from16 v19, v0

    move-object v11, v2

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    invoke-direct/range {v11 .. v19}, Lorg/joda/time/DateTime;-><init>(IIIIIIILorg/joda/time/DateTimeZone;)V

    .restart local v2    # "dt":Lorg/joda/time/DateTime;
    goto/16 :goto_0
.end method

.method public getOffset(J)I
    .locals 1
    .param p1, "instant"    # J

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/ical/compat/jodatime/TimeZoneConverter$1;->val$dtz:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v0

    return v0
.end method

.method public getRawOffset()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/ical/compat/jodatime/TimeZoneConverter$1;->val$dtz:Lorg/joda/time/DateTimeZone;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeZone;->getStandardOffset(J)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/google/ical/compat/jodatime/TimeZoneConverter$1;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 4
    .param p1, "d"    # Ljava/util/Date;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 78
    .local v0, "t":J
    iget-object v2, p0, Lcom/google/ical/compat/jodatime/TimeZoneConverter$1;->val$dtz:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/DateTimeZone;->getStandardOffset(J)I

    move-result v2

    iget-object v3, p0, Lcom/google/ical/compat/jodatime/TimeZoneConverter$1;->val$dtz:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v3, v0, v1}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setRawOffset(I)V
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/ical/compat/jodatime/TimeZoneConverter$1;->val$dtz:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeZone;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useDaylightTime()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    invoke-static {}, Liwm;->a()J

    move-result-wide v0

    .line 73
    .local v0, "firstTransition":J
    iget-object v2, p0, Lcom/google/ical/compat/jodatime/TimeZoneConverter$1;->val$dtz:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/DateTimeZone;->nextTransition(J)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
