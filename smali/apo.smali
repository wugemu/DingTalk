.class public final Lapo;
.super Lapn;
.source "CreateSchedulePresenter.java"


# direct methods
.method public constructor <init>(Lapq$c;Landroid/content/Intent;)V
    .locals 4
    .param p1, "view"    # Lapq$c;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lapn;-><init>(Lapq$c;)V

    .line 1043
    if-eqz p2, :cond_7

    .line 1044
    const-string/jumbo v0, "intent_key_schedule_create_model"

    invoke-static {p2, v0}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;

    .line 1045
    if-eqz v0, :cond_7

    .line 1046
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getScheduleContent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1047
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getScheduleContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lapo;->a:Ljava/lang/String;

    .line 1049
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getAllDay()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1050
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getAllDay()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lapo;->b:Z

    .line 1052
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getStart()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1053
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getStart()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lapo;->c:J

    .line 1055
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getEnd()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1056
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getEnd()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lapo;->d:J

    .line 1058
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getRemindMinutes()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1059
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getRemindMinutes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->fromValue(J)Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    move-result-object v1

    iget-boolean v2, p0, Lapo;->b:Z

    invoke-virtual {v1, v2}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->convertToModeIndex(Z)I

    move-result v1

    iput v1, p0, Lapo;->f:I

    .line 1061
    :cond_4
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getRemindType()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1062
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getRemindType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->fromValue(I)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v1

    iput-object v1, p0, Lapo;->g:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 1064
    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getRepeat()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1065
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getRepeat()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->fromValue(I)Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    move-result-object v1

    iput-object v1, p0, Lapo;->e:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    .line 1067
    :cond_6
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getComment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1068
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getComment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lapo;->h:Ljava/lang/String;

    .line 40
    :cond_7
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(J)V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lapn;->a(J)V

    return-void
.end method

.method public final bridge synthetic a(Z)V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0, p1}, Lapn;->a(Z)V

    return-void
.end method

.method public final bridge synthetic b(J)V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lapn;->b(J)V

    return-void
.end method

.method public final bridge synthetic c()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lapn;->c()V

    return-void
.end method

.method public final bridge synthetic d()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lapn;->d()V

    return-void
.end method

.method public final bridge synthetic e()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lapn;->e()V

    return-void
.end method

.method public final bridge synthetic f()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lapn;->f()V

    return-void
.end method

.method public final bridge synthetic g()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lapn;->g()V

    return-void
.end method

.method public final bridge synthetic h()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lapn;->h()V

    return-void
.end method

.method public final bridge synthetic i()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lapn;->i()V

    return-void
.end method

.method public final j()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 77
    iget-wide v0, p0, Lapo;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lapo;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lapo;->d:J

    iget-wide v2, p0, Lapo;->c:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 81
    :cond_0
    invoke-static {}, Lawj;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lapo;->c:J

    .line 82
    iget-wide v0, p0, Lapo;->c:J

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lapo;->d:J

    .line 86
    :cond_1
    invoke-virtual {p0}, Lapo;->a()V

    .line 87
    return-void
.end method

.method public final k()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v14, 0x0

    .line 93
    iget-object v7, p0, Lapo;->j:Lapq$c;

    invoke-interface {v7}, Lapq$c;->i()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lapo;->j:Lapq$c;

    .line 94
    invoke-interface {v7}, Lapq$c;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 95
    :cond_0
    sget v7, Laow$f;->dt_ding_schedule_event_subject_empty_tip:I

    invoke-static {v7}, Lcms;->a(I)V

    .line 173
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v7, p0, Lapo;->j:Lapq$c;

    invoke-interface {v7}, Lapq$c;->i()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lapo;->j:Lapq$c;

    invoke-interface {v7}, Lapq$c;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v10, 0x1388

    if-le v7, v10, :cond_2

    .line 101
    sget v7, Laow$f;->dt_ding_schedule_event_subject_too_long_tip:I

    invoke-static {v7}, Lcms;->a(I)V

    goto :goto_0

    .line 106
    :cond_2
    iget-boolean v7, p0, Lapo;->b:Z

    if-eqz v7, :cond_3

    iget-wide v10, p0, Lapo;->c:J

    invoke-static {v10, v11}, Lawj;->d(J)J

    move-result-wide v8

    .line 107
    .local v8, "startTime":J
    :goto_1
    iget-boolean v7, p0, Lapo;->b:Z

    if-eqz v7, :cond_4

    iget-wide v10, p0, Lapo;->d:J

    const-wide/32 v12, 0x5265c00

    add-long/2addr v10, v12

    invoke-static {v10, v11}, Lawj;->d(J)J

    move-result-wide v4

    .line 108
    .local v4, "endTime":J
    :goto_2
    cmp-long v7, v8, v4

    if-lez v7, :cond_5

    .line 109
    sget v7, Laow$f;->dt_create_event_start_time_after_end_time_tip:I

    invoke-static {v7}, Lcms;->a(I)V

    goto :goto_0

    .line 106
    .end local v4    # "endTime":J
    .end local v8    # "startTime":J
    :cond_3
    iget-wide v8, p0, Lapo;->c:J

    goto :goto_1

    .line 107
    .restart local v8    # "startTime":J
    :cond_4
    iget-wide v4, p0, Lapo;->d:J

    goto :goto_2

    .line 113
    .restart local v4    # "endTime":J
    :cond_5
    new-instance v2, Lars;

    invoke-direct {v2}, Lars;-><init>()V

    .line 114
    .local v2, "calendarCreateObject":Lars;
    new-instance v6, Last;

    invoke-direct {v6}, Last;-><init>()V

    .line 117
    .local v6, "scheduleObject":Last;
    iget-object v7, p0, Lapo;->j:Lapq$c;

    invoke-interface {v7}, Lapq$c;->i()Ljava/lang/String;

    move-result-object v7

    .line 2063
    iput-object v7, v6, Last;->c:Ljava/lang/String;

    .line 120
    iget-boolean v7, p0, Lapo;->b:Z

    .line 2071
    iput-boolean v7, v6, Last;->d:Z

    .line 3039
    iput-wide v8, v6, Last;->a:J

    .line 3047
    iput-wide v4, v6, Last;->b:J

    .line 127
    iget-object v7, p0, Lapo;->g:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-static {v7}, Lavv;->a(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v1

    .line 128
    .local v1, "alarmTypeNotification":Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
    new-instance v0, Lcom/alibaba/android/calendar/data/object/AlarmObject;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/data/object/AlarmObject;-><init>()V

    .line 130
    .local v0, "alarmObject":Lcom/alibaba/android/calendar/data/object/AlarmObject;
    iget v7, p0, Lapo;->f:I

    iget-boolean v10, p0, Lapo;->b:Z

    invoke-static {v7, v10}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->getMode(IZ)Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    move-result-object v3

    .line 131
    .local v3, "scheduleEventDayRemindMode":Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;
    invoke-virtual {v3}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->getMinutes()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/alibaba/android/calendar/data/object/AlarmObject;->setTime(J)V

    .line 132
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->getValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/alibaba/android/calendar/data/object/AlarmObject;->setType(I)V

    .line 133
    const/4 v7, 0x1

    new-array v7, v7, [Lcom/alibaba/android/calendar/data/object/AlarmObject;

    aput-object v0, v7, v14

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 3079
    iput-object v7, v6, Last;->f:Ljava/util/List;

    .line 136
    iget-object v7, p0, Lapo;->e:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    invoke-static {v7}, Lawf;->a(Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;)Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;

    move-result-object v7

    .line 4075
    iput-object v7, v6, Last;->e:Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;

    .line 139
    iget-object v7, p0, Lapo;->j:Lapq$c;

    invoke-interface {v7}, Lapq$c;->h()Ljava/lang/String;

    move-result-object v7

    .line 4087
    iput-object v7, v6, Last;->g:Ljava/lang/String;

    .line 5023
    iput-object v6, v2, Lars;->a:Last;

    .line 142
    sget-object v7, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->SCHEDULE:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    invoke-virtual {v7}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->getValue()I

    move-result v7

    .line 5031
    iput v7, v2, Lars;->c:I

    .line 143
    sget-object v7, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;->NOTIFICATION:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;

    invoke-virtual {v7}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;->getValue()I

    move-result v7

    .line 6027
    iput v7, v2, Lars;->b:I

    .line 145
    iget-object v7, p0, Lapo;->j:Lapq$c;

    invoke-interface {v7, v14}, Lapq$c;->a(Z)V

    .line 146
    iget-object v7, p0, Lapo;->j:Lapq$c;

    invoke-interface {v7}, Lapq$c;->f()V

    .line 147
    invoke-static {}, Latf;->a()Latf;

    move-result-object v10

    new-instance v7, Lapo$1;

    invoke-direct {v7, p0}, Lapo$1;-><init>(Lapo;)V

    const-class v11, Lcom/alibaba/wukong/Callback;

    iget-object v12, p0, Lapo;->j:Lapq$c;

    .line 171
    invoke-interface {v12}, Lapq$c;->a()Landroid/app/Activity;

    move-result-object v12

    .line 147
    invoke-static {v7, v11, v12}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/Callback;

    invoke-virtual {v10, v2, v7}, Latf;->a(Lars;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0
.end method
