.class public final Lasz;
.super Ljava/lang/Object;
.source "CalendarExpandUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lasw;JJ)Ljava/util/List;
    .locals 13
    .param p0, "baseCalendar"    # Lasw;
    .param p1, "begin"    # J
    .param p3, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lasw;",
            "JJ)",
            "Ljava/util/List",
            "<",
            "Lasy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    if-nez p0, :cond_1

    .line 35
    const/4 v11, 0x0

    .line 69
    :cond_0
    :goto_0
    return-object v11

    .line 38
    :cond_1
    invoke-virtual {p0}, Lasw;->c()Ljava/util/List;

    move-result-object v6

    .line 40
    .local v6, "baseEvents":Ljava/util/List;, "Ljava/util/List<Lasx;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 44
    :cond_3
    new-instance v10, Lfp;

    invoke-direct {v10}, Lfp;-><init>()V

    .line 45
    .local v10, "instanceSparseArray":Lfp;, "Lfp<Lasy;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasx;

    .line 46
    .local v1, "baseEvent":Lasx;
    if-eqz v1, :cond_4

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    .line 49
    invoke-static/range {v0 .. v5}, Lasz;->a(Lasw;Lasx;JJ)Ljava/util/List;

    move-result-object v8

    .line 50
    .local v8, "baseInstances":Ljava/util/List;, "Ljava/util/List<Lasy;>;"
    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 53
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lasy;

    .line 54
    .local v7, "baseInstance":Lasy;
    if-eqz v7, :cond_5

    .line 57
    invoke-virtual {v1}, Lasx;->n()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 58
    invoke-virtual {v7}, Lasy;->e()J

    move-result-wide v2

    invoke-virtual {v10, v2, v3, v7}, Lfp;->b(JLjava/lang/Object;)V

    goto :goto_1

    .line 60
    :cond_6
    invoke-virtual {v7}, Lasy;->e()J

    move-result-wide v2

    .line 1132
    invoke-virtual {v10, v2, v3}, Lfp;->b(J)V

    goto :goto_1

    .line 65
    .end local v1    # "baseEvent":Lasx;
    .end local v7    # "baseInstance":Lasy;
    .end local v8    # "baseInstances":Ljava/util/List;, "Ljava/util/List<Lasy;>;"
    :cond_7
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v11, "ret":Ljava/util/List;, "Ljava/util/List<Lasy;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    invoke-virtual {v10}, Lfp;->a()I

    move-result v0

    if-ge v9, v0, :cond_0

    .line 67
    invoke-virtual {v10, v9}, Lfp;->b(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v9, v9, 0x1

    goto :goto_2
.end method

.method private static a(Lasw;Lasx;JJ)Ljava/util/List;
    .locals 24
    .param p0, "baseCalendar"    # Lasw;
    .param p1, "baseEvent"    # Lasx;
    .param p2, "begin"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lasw;",
            "Lasx;",
            "JJ)",
            "Ljava/util/List",
            "<",
            "Lasy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    move-object/from16 v0, p0

    instance-of v2, v0, Lasc;

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    instance-of v2, v0, Lary;

    if-nez v2, :cond_2

    .line 83
    :cond_0
    const/16 v19, 0x0

    .line 173
    :cond_1
    :goto_0
    return-object v19

    .line 88
    :cond_2
    :try_start_0
    new-instance v5, Latd;

    invoke-virtual/range {p1 .. p1}, Lasx;->i()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual/range {p1 .. p1}, Lasx;->j()Ljava/lang/String;

    move-result-object v6

    .line 90
    invoke-virtual/range {p1 .. p1}, Lasx;->k()Ljava/lang/String;

    move-result-object v7

    .line 91
    invoke-virtual/range {p1 .. p1}, Lasx;->l()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v2, v6, v7, v10}, Latd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2085
    .local v5, "recurrenceSet":Latd;
    iget-object v2, v5, Latd;->a:[Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;

    if-nez v2, :cond_3

    iget-object v2, v5, Latd;->b:[J

    if-eqz v2, :cond_5

    :cond_3
    const/4 v2, 0x1

    .line 101
    :goto_1
    if-nez v2, :cond_7

    .line 102
    invoke-virtual/range {p1 .. p1}, Lasx;->e()J

    move-result-wide v6

    cmp-long v2, v6, p2

    if-ltz v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lasx;->e()J

    move-result-wide v6

    cmp-long v2, v6, p4

    if-ltz v2, :cond_6

    .line 103
    :cond_4
    const/16 v19, 0x0

    goto :goto_0

    .line 92
    .end local v5    # "recurrenceSet":Latd;
    :catch_0
    move-exception v18

    .line 93
    .local v18, "e":Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$InvalidFormatException;
    const-string/jumbo v2, "expandEvent failed"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    const/16 v19, 0x0

    goto :goto_0

    .line 95
    .end local v18    # "e":Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$InvalidFormatException;
    :catch_1
    move-exception v18

    .line 96
    .local v18, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "expandEvent failed"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    const/16 v19, 0x0

    goto :goto_0

    .line 2085
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v5    # "recurrenceSet":Latd;
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    move-object/from16 v2, p0

    .line 105
    check-cast v2, Lasc;

    move-object/from16 v3, p1

    check-cast v3, Lary;

    .line 107
    invoke-virtual/range {p1 .. p1}, Lasx;->e()J

    move-result-wide v4

    .line 108
    invoke-virtual/range {p1 .. p1}, Lasx;->f()J

    move-result-wide v6

    .line 105
    invoke-static/range {v2 .. v7}, Larz;->a(Lasc;Lary;JJ)Larz;

    move-result-object v12

    .line 109
    .local v12, "baseInstance":Lasy;
    const/4 v2, 0x1

    new-array v2, v2, [Lasy;

    const/4 v6, 0x0

    aput-object v12, v2, v6

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    goto :goto_0

    .line 113
    .end local v12    # "baseInstance":Lasy;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lasx;->g()Ljava/lang/String;

    move-result-object v20

    .line 114
    .local v20, "startTimezone":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lasx;->d()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 115
    :cond_8
    const-string/jumbo v20, "UTC"

    .line 118
    :cond_9
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 119
    .local v4, "eventTime":Landroid/text/format/Time;
    move-object/from16 v0, v20

    iput-object v0, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 120
    invoke-virtual/range {p1 .. p1}, Lasx;->e()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 121
    invoke-virtual/range {p1 .. p1}, Lasx;->d()Z

    move-result v2

    iput-boolean v2, v4, Landroid/text/format/Time;->allDay:Z

    .line 123
    new-instance v14, Latb;

    invoke-direct {v14}, Latb;-><init>()V

    .line 124
    .local v14, "duration":Latb;
    invoke-virtual/range {p1 .. p1}, Lasx;->h()Ljava/lang/String;

    move-result-object v15

    .line 125
    .local v15, "durationStr":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 127
    :try_start_1
    invoke-virtual {v14, v15}, Latb;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alibaba/android/calendar/data/protocol/DateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 5143
    :goto_2
    const v2, 0x93a80

    iget v6, v14, Latb;->b:I

    mul-int/2addr v2, v6

    const v6, 0x15180

    iget v7, v14, Latb;->c:I

    mul-int/2addr v6, v7

    add-int/2addr v2, v6

    iget v6, v14, Latb;->d:I

    mul-int/lit16 v6, v6, 0xe10

    add-int/2addr v2, v6

    iget v6, v14, Latb;->e:I

    mul-int/lit8 v6, v6, 0x3c

    add-int/2addr v2, v6

    iget v6, v14, Latb;->f:I

    add-int/2addr v2, v6

    int-to-long v6, v2

    .line 5148
    iget v2, v14, Latb;->a:I

    int-to-long v10, v2

    mul-long/2addr v6, v10

    const-wide/16 v10, 0x3e8

    mul-long v16, v6, v10

    .line 157
    .local v16, "durationMillis":J
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v19, "ret":Ljava/util/List;, "Ljava/util/List<Lasy;>;"
    new-instance v3, Latc;

    invoke-direct {v3}, Latc;-><init>()V

    .local v3, "recurrenceProcessor":Latc;
    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    .line 160
    :try_start_2
    invoke-virtual/range {v3 .. v9}, Latc;->a(Landroid/text/format/Time;Latd;JJ)[J

    move-result-object v13

    .line 161
    .local v13, "dates":[J
    array-length v0, v13

    move/from16 v21, v0

    const/4 v2, 0x0

    :goto_3
    move/from16 v0, v21

    if-ge v2, v0, :cond_1

    aget-wide v8, v13, v2

    .line 162
    .local v8, "date":J
    move-object/from16 v0, p0

    check-cast v0, Lasc;

    move-object v6, v0

    move-object/from16 v0, p1

    check-cast v0, Lary;

    move-object v7, v0

    add-long v10, v8, v16

    invoke-static/range {v6 .. v11}, Larz;->a(Lasc;Lary;JJ)Larz;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 129
    .end local v3    # "recurrenceProcessor":Latc;
    .end local v8    # "date":J
    .end local v13    # "dates":[J
    .end local v16    # "durationMillis":J
    .end local v19    # "ret":Ljava/util/List;, "Ljava/util/List<Lasy;>;"
    :catch_2
    move-exception v2

    .line 3041
    const/4 v2, 0x1

    iput v2, v14, Latb;->a:I

    .line 3045
    const/4 v2, 0x0

    iput v2, v14, Latb;->b:I

    .line 131
    const/4 v2, 0x0

    .line 3049
    iput v2, v14, Latb;->c:I

    .line 3053
    const/4 v2, 0x0

    iput v2, v14, Latb;->d:I

    .line 3057
    const/4 v2, 0x0

    iput v2, v14, Latb;->e:I

    .line 134
    const/4 v2, 0x0

    .line 3061
    iput v2, v14, Latb;->f:I

    goto :goto_2

    .line 137
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lasx;->d()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4041
    const/4 v2, 0x1

    iput v2, v14, Latb;->a:I

    .line 4045
    const/4 v2, 0x0

    iput v2, v14, Latb;->b:I

    .line 141
    const/4 v2, 0x1

    .line 4049
    iput v2, v14, Latb;->c:I

    .line 4053
    const/4 v2, 0x0

    iput v2, v14, Latb;->d:I

    .line 4057
    const/4 v2, 0x0

    iput v2, v14, Latb;->e:I

    .line 144
    const/4 v2, 0x0

    .line 4061
    iput v2, v14, Latb;->f:I

    goto/16 :goto_2

    .line 5041
    :cond_b
    const/4 v2, 0x1

    iput v2, v14, Latb;->a:I

    .line 5045
    const/4 v2, 0x0

    iput v2, v14, Latb;->b:I

    .line 149
    const/4 v2, 0x0

    .line 5049
    iput v2, v14, Latb;->c:I

    .line 5053
    const/4 v2, 0x0

    iput v2, v14, Latb;->d:I

    .line 5057
    const/4 v2, 0x0

    iput v2, v14, Latb;->e:I

    .line 152
    invoke-virtual/range {p1 .. p1}, Lasx;->f()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lasx;->e()J

    move-result-wide v10

    sub-long/2addr v6, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v6, v10

    long-to-int v2, v6

    .line 5061
    iput v2, v14, Latb;->f:I

    goto/16 :goto_2

    .line 167
    .restart local v3    # "recurrenceProcessor":Latc;
    .restart local v16    # "durationMillis":J
    .restart local v19    # "ret":Ljava/util/List;, "Ljava/util/List<Lasy;>;"
    :catch_3
    move-exception v18

    .line 168
    .restart local v18    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "[CalendarExpandUtil]expand failed"

    const-string/jumbo v6, "-1"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v10, 0x0

    .line 170
    invoke-static/range {v18 .. v18}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const-string/jumbo v11, ", calendarId:"

    aput-object v11, v7, v10

    const/4 v10, 0x2

    .line 171
    invoke-virtual/range {p1 .. p1}, Lasx;->c()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    .line 170
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 168
    invoke-static {v2, v6, v7}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
