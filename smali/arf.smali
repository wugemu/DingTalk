.class public final Larf;
.super Larj;
.source "AllCalendarEventManager.java"


# instance fields
.field final a:Lati;

.field final b:Lati;

.field c:I

.field private h:Lcom/alibaba/android/ding/base/objects/ObjectDing$a;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Larj;-><init>(J)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Larf;->c:I

    .line 50
    new-instance v0, Larf$1;

    invoke-direct {v0, p0}, Larf$1;-><init>(Larf;)V

    iput-object v0, p0, Larf;->h:Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

    .line 59
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    iget-object v2, p0, Larf;->h:Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing$a;)V

    .line 61
    new-instance v0, Latj;

    invoke-direct {v0}, Latj;-><init>()V

    iput-object v0, p0, Larf;->a:Lati;

    .line 62
    iget-object v0, p0, Larf;->a:Lati;

    new-instance v1, Larf$2;

    invoke-direct {v1, p0}, Larf$2;-><init>(Larf;)V

    invoke-interface {v0, v1}, Lati;->a(Lati$a;)V

    .line 71
    new-instance v0, Latk;

    invoke-direct {v0, p1}, Latk;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Larf;->b:Lati;

    .line 72
    iget-object v0, p0, Larf;->b:Lati;

    new-instance v1, Larf$3;

    invoke-direct {v1, p0}, Larf$3;-><init>(Larf;)V

    invoke-interface {v0, v1}, Lati;->a(Lati$a;)V

    .line 80
    return-void
.end method


# virtual methods
.method final a(J)Ljava/util/Collection;
    .locals 13
    .param p1, "dayStartMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Collection",
            "<",
            "Lawv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Larj;->a(J)Ljava/util/Collection;

    move-result-object v1

    .line 107
    .local v1, "localEventList":Ljava/util/Collection;, "Ljava/util/Collection<Lawv;>;"
    iget-object v4, p0, Larf;->a:Lati;

    invoke-interface {v4}, Lati;->c()Lfp;

    move-result-object v4

    if-nez v4, :cond_5

    const/4 v2, 0x0

    .line 110
    .local v2, "mailEventList":Ljava/util/Collection;, "Ljava/util/Collection<Lawv;>;"
    :goto_0
    iget-object v4, p0, Larf;->b:Lati;

    invoke-interface {v4}, Lati;->c()Lfp;

    move-result-object v4

    if-nez v4, :cond_6

    const/4 v3, 0x0

    .line 113
    .local v3, "systemEventList":Ljava/util/Collection;, "Ljava/util/Collection<Lawv;>;"
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v0, "events":Ljava/util/Collection;, "Ljava/util/Collection<Lawv;>;"
    if-eqz v1, :cond_0

    .line 116
    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 119
    :cond_0
    if-eqz v2, :cond_1

    .line 120
    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 123
    :cond_1
    if-eqz v3, :cond_2

    .line 124
    invoke-interface {v0, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 127
    :cond_2
    invoke-static {p1, p2}, Lavz;->a(J)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 128
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x1

    .line 2365
    :goto_2
    const-string/jumbo v5, "p_key_last_time_record_today_has_event"

    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcpk;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 2366
    invoke-static {}, Lcms;->u()J

    move-result-wide v8

    .line 2367
    sub-long v6, v8, v6

    const-wide/32 v10, 0x36ee80

    cmp-long v5, v6, v10

    if-ltz v5, :cond_3

    .line 2370
    const-string/jumbo v5, "p_key_last_time_record_today_has_event"

    invoke-static {v5, v8, v9}, Lcpk;->b(Ljava/lang/String;J)V

    .line 2371
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2372
    const-string/jumbo v6, "type"

    if-eqz v4, :cond_8

    const-string/jumbo v4, "1"

    :goto_3
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2373
    const-string/jumbo v4, "ding_calendar_today_event"

    invoke-static {v4, v5}, Lavw;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 129
    :cond_3
    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x1

    .line 3353
    :goto_4
    const-string/jumbo v5, "p_key_last_time_record_today_has_system_event"

    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcpk;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 3354
    invoke-static {}, Lcms;->u()J

    move-result-wide v8

    .line 3355
    sub-long v6, v8, v6

    const-wide/32 v10, 0x36ee80

    cmp-long v5, v6, v10

    if-ltz v5, :cond_4

    .line 3358
    const-string/jumbo v5, "p_key_last_time_record_today_has_system_event"

    invoke-static {v5, v8, v9}, Lcpk;->b(Ljava/lang/String;J)V

    .line 3359
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 3360
    const-string/jumbo v6, "type"

    if-eqz v4, :cond_a

    const-string/jumbo v4, "1"

    :goto_5
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3361
    const-string/jumbo v4, "ding_calendar_today_mobile_event"

    invoke-static {v4, v5}, Lavw;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 135
    :cond_4
    :goto_6
    return-object v0

    .line 107
    .end local v0    # "events":Ljava/util/Collection;, "Ljava/util/Collection<Lawv;>;"
    .end local v2    # "mailEventList":Ljava/util/Collection;, "Ljava/util/Collection<Lawv;>;"
    .end local v3    # "systemEventList":Ljava/util/Collection;, "Ljava/util/Collection<Lawv;>;"
    :cond_5
    iget-object v4, p0, Larf;->a:Lati;

    .line 109
    invoke-interface {v4}, Lati;->c()Lfp;

    move-result-object v4

    .line 1096
    const/4 v5, 0x0

    invoke-virtual {v4, p1, p2, v5}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 109
    check-cast v4, Ljava/util/Collection;

    move-object v2, v4

    goto/16 :goto_0

    .line 110
    .restart local v2    # "mailEventList":Ljava/util/Collection;, "Ljava/util/Collection<Lawv;>;"
    :cond_6
    iget-object v4, p0, Larf;->b:Lati;

    .line 112
    invoke-interface {v4}, Lati;->c()Lfp;

    move-result-object v4

    .line 2096
    const/4 v5, 0x0

    invoke-virtual {v4, p1, p2, v5}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 112
    check-cast v4, Ljava/util/Collection;

    move-object v3, v4

    goto/16 :goto_1

    .line 128
    .restart local v0    # "events":Ljava/util/Collection;, "Ljava/util/Collection<Lawv;>;"
    .restart local v3    # "systemEventList":Ljava/util/Collection;, "Ljava/util/Collection<Lawv;>;"
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 2372
    :cond_8
    const-string/jumbo v4, "0"

    goto :goto_3

    .line 129
    :cond_9
    const/4 v4, 0x0

    goto :goto_4

    .line 3360
    :cond_a
    const-string/jumbo v4, "0"

    goto :goto_5

    .line 131
    :cond_b
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    const/4 v4, 0x1

    .line 3389
    :goto_7
    const-string/jumbo v5, "p_key_last_time_record_one_day_has_event"

    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcpk;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 3390
    invoke-static {}, Lcms;->u()J

    move-result-wide v8

    .line 3391
    sub-long v6, v8, v6

    const-wide/32 v10, 0x36ee80

    cmp-long v5, v6, v10

    if-ltz v5, :cond_c

    .line 3394
    const-string/jumbo v5, "p_key_last_time_record_one_day_has_event"

    invoke-static {v5, v8, v9}, Lcpk;->b(Ljava/lang/String;J)V

    .line 3395
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 3396
    const-string/jumbo v6, "type"

    if-eqz v4, :cond_e

    const-string/jumbo v4, "1"

    :goto_8
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3397
    const-string/jumbo v4, "ding_calendar_oneday_event"

    invoke-static {v4, v5}, Lavw;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 132
    :cond_c
    if-eqz v3, :cond_f

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    const/4 v4, 0x1

    .line 4377
    :goto_9
    const-string/jumbo v5, "p_key_last_time_record_one_day_has_system_event"

    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcpk;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 4378
    invoke-static {}, Lcms;->u()J

    move-result-wide v8

    .line 4379
    sub-long v6, v8, v6

    const-wide/32 v10, 0x36ee80

    cmp-long v5, v6, v10

    if-ltz v5, :cond_4

    .line 4382
    const-string/jumbo v5, "p_key_last_time_record_one_day_has_system_event"

    invoke-static {v5, v8, v9}, Lcpk;->b(Ljava/lang/String;J)V

    .line 4383
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 4384
    const-string/jumbo v6, "type"

    if-eqz v4, :cond_10

    const-string/jumbo v4, "1"

    :goto_a
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4385
    const-string/jumbo v4, "ding_calendar_oneday_mobile_event"

    invoke-static {v4, v5}, Lavw;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_6

    .line 131
    :cond_d
    const/4 v4, 0x0

    goto :goto_7

    .line 3396
    :cond_e
    const-string/jumbo v4, "0"

    goto :goto_8

    .line 132
    :cond_f
    const/4 v4, 0x0

    goto :goto_9

    .line 4384
    :cond_10
    const-string/jumbo v4, "0"

    goto :goto_a
.end method

.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 188
    invoke-super {p0}, Larj;->a()V

    .line 189
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    iget-object v2, p0, Larf;->h:Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->b(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing$a;)V

    .line 190
    iget-object v0, p0, Larf;->a:Lati;

    invoke-interface {v0}, Lati;->a()V

    .line 191
    iget-object v0, p0, Larf;->b:Lati;

    invoke-interface {v0}, Lati;->a()V

    .line 192
    return-void
.end method

.method public final a(Lckq;)V
    .locals 0
    .param p1, "bean"    # Lckq;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Larf;->d(Lckq;)V

    .line 85
    invoke-virtual {p0, p1}, Larf;->c(Lckq;)V

    .line 86
    invoke-virtual {p0, p1}, Larf;->b(Lckq;)V

    .line 87
    invoke-virtual {p0}, Larf;->e()V

    .line 88
    return-void
.end method

.method public final b(J)Ljava/util/List;
    .locals 17
    .param p1, "curDate"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lawv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    invoke-super/range {p0 .. p2}, Larj;->a(J)Ljava/util/Collection;

    move-result-object v15

    .line 142
    .local v15, "showEventList":Ljava/util/Collection;, "Ljava/util/Collection<Lawv;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v12, "dueTodaySentEvents":Ljava/util/List;, "Ljava/util/List<Lawv;>;"
    if-eqz v15, :cond_2

    .line 144
    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lawv;

    .line 145
    .local v13, "event":Lawv;
    instance-of v2, v13, Lawx;

    if-eqz v2, :cond_0

    move-object v2, v13

    .line 146
    check-cast v2, Lawx;

    .line 5058
    iget-object v14, v2, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 147
    .local v14, "instanceShowObject":Lcom/alibaba/android/calendar/data/object/InstanceShowObject;
    if-eqz v14, :cond_0

    .line 150
    invoke-static {v14}, Lawc;->l(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    invoke-static {v14}, Lawc;->c(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6028
    if-eqz v14, :cond_1

    .line 6029
    invoke-virtual {v14}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getRole()I

    move-result v2

    sget-object v5, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;->SENDER:Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;

    invoke-virtual {v5}, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;->getValue()I

    move-result v5

    if-ne v2, v5, :cond_1

    const/4 v2, 0x1

    .line 152
    :goto_1
    if-eqz v2, :cond_0

    .line 153
    invoke-virtual {v14}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getSenderId()J

    move-result-wide v6

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-nez v2, :cond_0

    .line 154
    check-cast v13, Lawx;

    .line 7025
    .end local v13    # "event":Lawv;
    new-instance v2, Lawq;

    invoke-virtual {v13}, Lawx;->getSortedTime()J

    move-result-wide v6

    .line 7058
    iget-object v5, v13, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 7025
    invoke-direct {v2, v6, v7, v5}, Lawq;-><init>(JLcom/alibaba/android/calendar/data/object/InstanceShowObject;)V

    .line 154
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6029
    .restart local v13    # "event":Lawv;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 160
    .end local v13    # "event":Lawv;
    .end local v14    # "instanceShowObject":Lcom/alibaba/android/calendar/data/object/InstanceShowObject;
    :cond_2
    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p2}, Larf;->a(J)Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 163
    .local v11, "dayEventList":Ljava/util/List;, "Ljava/util/List<Lawv;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    .line 164
    .local v3, "size":I
    if-lez v3, :cond_5

    .line 165
    new-instance v2, Lawt;

    invoke-static/range {p1 .. p2}, Lavz;->a(J)Z

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Larf;->c:I

    move-wide/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lawt;-><init>(IJZI)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-static/range {p1 .. p2}, Lavz;->a(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 167
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 168
    .local v10, "calendar":Ljava/util/Calendar;
    move-wide/from16 v0, p1

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 169
    new-instance v2, Lawp;

    invoke-direct {v2, v10}, Lawp;-><init>(Ljava/util/Calendar;)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v10    # "calendar":Ljava/util/Calendar;
    :cond_3
    sget-object v2, Lawo;->a:Ljava/util/Comparator;

    invoke-static {v11, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 177
    :goto_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, 0x0

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 178
    new-instance v4, Lawr;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    const/4 v2, 0x0

    .line 179
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lawv;

    invoke-interface {v2}, Lawv;->getSortedTime()J

    move-result-wide v6

    invoke-direct {v4, v5, v6, v7}, Lawr;-><init>(IJ)V

    .line 178
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-interface {v11, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 183
    :cond_4
    return-object v11

    .line 173
    :cond_5
    new-instance v4, Lawt;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Lavz;->a(J)Z

    move-result v8

    move-object/from16 v0, p0

    iget v9, v0, Larf;->c:I

    move-wide/from16 v6, p1

    invoke-direct/range {v4 .. v9}, Lawt;-><init>(IJZI)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public final b(Lckq;)V
    .locals 5
    .param p1, "bean"    # Lckq;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 92
    invoke-static {p1}, Larf;->e(Lckq;)J

    move-result-wide v2

    .line 93
    .local v2, "startTime":J
    invoke-static {p1}, Larf;->f(Lckq;)J

    move-result-wide v0

    .line 94
    .local v0, "endTime":J
    iget-object v4, p0, Larf;->b:Lati;

    invoke-interface {v4, v2, v3, v0, v1}, Lati;->a(JJ)V

    .line 95
    return-void
.end method

.method public final c(Lckq;)V
    .locals 5
    .param p1, "bean"    # Lckq;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 99
    invoke-static {p1}, Larf;->e(Lckq;)J

    move-result-wide v2

    .line 100
    .local v2, "startTime":J
    invoke-static {p1}, Larf;->f(Lckq;)J

    move-result-wide v0

    .line 101
    .local v0, "endTime":J
    iget-object v4, p0, Larf;->a:Lati;

    invoke-interface {v4, v2, v3, v0, v1}, Lati;->a(JJ)V

    .line 102
    return-void
.end method
