.class abstract Lapn;
.super Ljava/lang/Object;
.source "BaseSchedulePresenter.java"

# interfaces
.implements Lapq$b;


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field c:J

.field d:J

.field e:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

.field f:I

.field g:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

.field h:Ljava/lang/String;

.field i:J

.field j:Lapq$c;

.field private k:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lapq$c;)V
    .locals 3
    .param p1, "view"    # Lapq$c;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v1, p0, Lapn;->b:Z

    .line 41
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->NO_REPEAT:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    iput-object v0, p0, Lapn;->e:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    .line 42
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->HAPPEN:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->convertToModeIndex(Z)I

    move-result v0

    iput v0, p0, Lapn;->f:I

    .line 43
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    iput-object v0, p0, Lapn;->g:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 49
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    iput-wide v0, p0, Lapn;->i:J

    .line 54
    iput-object p1, p0, Lapn;->j:Lapq$c;

    .line 55
    invoke-interface {p1, p0}, Lapq$c;->setPresenter(Lcjd;)V

    .line 1231
    new-instance v0, Lapn$1;

    invoke-direct {v0, p0}, Lapn$1;-><init>(Lapn;)V

    iput-object v0, p0, Lapn;->k:Landroid/content/BroadcastReceiver;

    .line 1257
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1258
    const-string/jumbo v1, "com.workapp.ding.choose.repeat.mode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1259
    const-string/jumbo v1, "com.workapp.ding.choose.event.remind.mode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1260
    iget-object v1, p0, Lapn;->j:Lapq$c;

    invoke-interface {v1}, Lapq$c;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lapn;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 58
    return-void
.end method

.method static a(JJ)J
    .locals 10
    .param p0, "allDayMills"    # J
    .param p2, "mills"    # J

    .prologue
    .line 202
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 203
    .local v7, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v7, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 204
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 205
    .local v8, "oldCalendar":Ljava/util/Calendar;
    invoke-virtual {v8, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 207
    invoke-static {}, Lavu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 208
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xb

    .line 209
    invoke-virtual {v8, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xd

    invoke-virtual {v8, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 208
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 210
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 212
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method private l()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 93
    iget-object v0, p0, Lapn;->j:Lapq$c;

    iget-wide v2, p0, Lapn;->c:J

    iget-boolean v1, p0, Lapn;->b:Z

    invoke-interface {v0, v2, v3, v1}, Lapq$c;->a(JZ)V

    .line 94
    return-void
.end method

.method private m()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 97
    iget-object v0, p0, Lapn;->j:Lapq$c;

    iget-wide v2, p0, Lapn;->d:J

    iget-boolean v1, p0, Lapn;->b:Z

    invoke-interface {v0, v2, v3, v1}, Lapq$c;->b(JZ)V

    .line 98
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 63
    .line 2085
    iget-object v0, p0, Lapn;->j:Lapq$c;

    iget-object v1, p0, Lapn;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lapq$c;->a(Ljava/lang/String;)V

    .line 2089
    iget-object v0, p0, Lapn;->j:Lapq$c;

    iget-boolean v1, p0, Lapn;->b:Z

    invoke-interface {v0, v1}, Lapq$c;->b(Z)V

    .line 69
    invoke-direct {p0}, Lapn;->l()V

    .line 70
    invoke-direct {p0}, Lapn;->m()V

    .line 73
    invoke-virtual {p0}, Lapn;->b()V

    .line 2111
    iget-object v0, p0, Lapn;->j:Lapq$c;

    iget-object v1, p0, Lapn;->e:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    invoke-interface {v0, v1}, Lapq$c;->a(Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;)V

    .line 2115
    iget-object v0, p0, Lapn;->j:Lapq$c;

    iget-object v1, p0, Lapn;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Lapq$c;->c(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lapn;->j:Lapq$c;

    invoke-interface {v0}, Lapq$c;->j()V

    .line 82
    return-void
.end method

.method public a(J)V
    .locals 7
    .param p1, "startTime"    # J

    .prologue
    .line 157
    invoke-static {}, Lavu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 158
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 159
    invoke-static {v0}, Lcog;->a(Ljava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    sget v1, Laow$f;->ding_invalid_date_too_later_1_year:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 173
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-boolean v1, p0, Lapn;->b:Z

    if-eqz v1, :cond_1

    .line 165
    iget-wide v2, p0, Lapn;->c:J

    invoke-static {p1, p2, v2, v3}, Lapn;->a(JJ)J

    move-result-wide p1

    .line 168
    :cond_1
    iget-wide v2, p0, Lapn;->d:J

    iget-wide v4, p0, Lapn;->c:J

    sub-long v4, p1, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lapn;->d:J

    .line 169
    iput-wide p1, p0, Lapn;->c:J

    .line 171
    invoke-direct {p0}, Lapn;->l()V

    .line 172
    invoke-direct {p0}, Lapn;->m()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .param p1, "isAllDay"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lapn;->b:Z

    .line 139
    invoke-direct {p0}, Lapn;->l()V

    .line 140
    invoke-direct {p0}, Lapn;->m()V

    .line 141
    invoke-virtual {p0}, Lapn;->b()V

    .line 142
    return-void
.end method

.method b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 102
    iget v1, p0, Lapn;->f:I

    iget-boolean v2, p0, Lapn;->b:Z

    invoke-static {v1, v2}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->getMode(IZ)Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    move-result-object v0

    .line 103
    .local v0, "eventRemindMode":Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->getDescId()I

    move-result v1

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lapn;->j:Lapq$c;

    const-string/jumbo v2, ""

    invoke-interface {v1, v2}, Lapq$c;->b(Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v1, p0, Lapn;->j:Lapq$c;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->getDescId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lapq$c;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(J)V
    .locals 9
    .param p1, "endTime"    # J

    .prologue
    .line 178
    invoke-static {}, Lavu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 179
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 180
    invoke-static {v0}, Lcog;->a(Ljava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    sget v1, Laow$f;->ding_invalid_date_too_later_1_year:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 198
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-boolean v1, p0, Lapn;->b:Z

    if-eqz v1, :cond_1

    .line 186
    iget-wide v6, p0, Lapn;->d:J

    invoke-static {p1, p2, v6, v7}, Lapn;->a(JJ)J

    move-result-wide p1

    .line 189
    :cond_1
    iget-boolean v1, p0, Lapn;->b:Z

    if-eqz v1, :cond_2

    iget-wide v6, p0, Lapn;->c:J

    invoke-static {v6, v7}, Lawj;->d(J)J

    move-result-wide v4

    .line 190
    .local v4, "tStartTime":J
    :goto_1
    iget-boolean v1, p0, Lapn;->b:Z

    if-eqz v1, :cond_3

    invoke-static {p1, p2}, Lawj;->d(J)J

    move-result-wide v2

    .line 191
    .local v2, "tEndTime":J
    :goto_2
    cmp-long v1, v4, v2

    if-lez v1, :cond_4

    .line 192
    iget-object v1, p0, Lapn;->j:Lapq$c;

    invoke-interface {v1}, Lapq$c;->a()Landroid/app/Activity;

    move-result-object v1

    sget v6, Laow$f;->dt_create_event_start_time_after_end_time_tip:I

    invoke-static {v1, v6}, Lcms;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 189
    .end local v2    # "tEndTime":J
    .end local v4    # "tStartTime":J
    :cond_2
    iget-wide v4, p0, Lapn;->c:J

    goto :goto_1

    .restart local v4    # "tStartTime":J
    :cond_3
    move-wide v2, p1

    .line 190
    goto :goto_2

    .line 196
    .restart local v2    # "tEndTime":J
    :cond_4
    iput-wide p1, p0, Lapn;->d:J

    .line 197
    invoke-direct {p0}, Lapn;->m()V

    goto :goto_0
.end method

.method public c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 146
    iget-object v2, p0, Lapn;->j:Lapq$c;

    iget-boolean v3, p0, Lapn;->b:Z

    iget-boolean v0, p0, Lapn;->b:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lapn;->c:J

    invoke-static {v0, v1}, Lawj;->d(J)J

    move-result-wide v0

    :goto_0
    invoke-interface {v2, v3, v0, v1}, Lapq$c;->a(ZJ)V

    .line 147
    return-void

    .line 146
    :cond_0
    iget-wide v0, p0, Lapn;->c:J

    goto :goto_0
.end method

.method public d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 151
    iget-object v2, p0, Lapn;->j:Lapq$c;

    iget-boolean v3, p0, Lapn;->b:Z

    iget-boolean v0, p0, Lapn;->b:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lapn;->d:J

    invoke-static {v0, v1}, Lawj;->d(J)J

    move-result-wide v0

    :goto_0
    invoke-interface {v2, v3, v0, v1}, Lapq$c;->b(ZJ)V

    .line 152
    return-void

    .line 151
    :cond_0
    iget-wide v0, p0, Lapn;->d:J

    goto :goto_0
.end method

.method public e()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 218
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v1

    iget-object v0, p0, Lapn;->j:Lapq$c;

    invoke-interface {v0}, Lapq$c;->a()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lapn;->f:I

    iget-object v0, p0, Lapn;->g:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 219
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v4

    const/4 v5, 0x0

    iget-boolean v0, p0, Lapn;->b:Z

    .line 220
    invoke-static {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->getResIdList(Z)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v0, p0, Lapn;->j:Lapq$c;

    .line 221
    invoke-interface {v0}, Lapq$c;->a()Landroid/app/Activity;

    move-result-object v0

    sget v7, Laow$f;->dt_common_remind:I

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, p0, Lapn;->i:J

    .line 218
    invoke-virtual/range {v1 .. v9}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/app/Activity;IIZLjava/util/ArrayList;Ljava/lang/String;J)V

    .line 222
    return-void
.end method

.method public f()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 226
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    iget-object v1, p0, Lapn;->j:Lapq$c;

    invoke-interface {v1}, Lapq$c;->a()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lapn;->e:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    invoke-virtual {v2}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->ordinal()I

    move-result v2

    iget-wide v4, p0, Lapn;->i:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/app/Activity;IJ)V

    .line 227
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 130
    .line 2264
    iget-object v0, p0, Lapn;->k:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2265
    iget-object v0, p0, Lapn;->j:Lapq$c;

    invoke-interface {v0}, Lapq$c;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lapn;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2266
    const/4 v0, 0x0

    iput-object v0, p0, Lapn;->k:Landroid/content/BroadcastReceiver;

    .line 131
    :cond_0
    return-void
.end method
