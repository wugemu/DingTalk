.class public final Lapp;
.super Lapn;
.source "EditSchedulePresenter.java"


# instance fields
.field k:J

.field l:Lary;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:J

.field private q:J

.field private r:I

.field private s:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

.field private t:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

.field private u:Ljava/lang/String;

.field private v:Lapq$a;


# direct methods
.method public constructor <init>(Lapq$c;Landroid/content/Intent;Lapq$a;)V
    .locals 4
    .param p1, "view"    # Lapq$c;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "editView"    # Lapq$a;

    .prologue
    const-wide/16 v2, 0x0

    .line 60
    invoke-direct {p0, p1}, Lapn;-><init>(Lapq$c;)V

    .line 61
    iput-object p3, p0, Lapp;->v:Lapq$a;

    .line 63
    if-nez p2, :cond_0

    .line 64
    const-string/jumbo v0, "EditSchedulePage exception"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "intent is null"

    invoke-static {v0, v1, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-interface {p1}, Lapq$c;->e()V

    .line 77
    :goto_0
    return-void

    .line 69
    :cond_0
    const-string/jumbo v0, "calendarid"

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lapp;->k:J

    .line 70
    const-string/jumbo v0, "folderid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lapp;->m:Ljava/lang/String;

    .line 71
    iget-wide v0, p0, Lapp;->k:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 72
    const-string/jumbo v0, "EditSchedulePage exception"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "calendar <= 0"

    invoke-static {v0, v1, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-interface {p1}, Lapq$c;->e()V

    goto :goto_0

    .line 76
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[EditSchedulePresenter] calendarId="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lapp;->k:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lapp;)V
    .locals 10
    .param p0, "x0"    # Lapp;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x1

    const-wide/32 v6, 0x36ee80

    .line 36
    .line 5119
    iget-object v0, p0, Lapp;->l:Lary;

    .line 6052
    iget-object v0, v0, Lary;->c:Ljava/lang/String;

    .line 5119
    iput-object v0, p0, Lapp;->n:Ljava/lang/String;

    .line 5122
    iget-object v0, p0, Lapp;->l:Lary;

    invoke-virtual {v0}, Lary;->d()Z

    move-result v0

    iput-boolean v0, p0, Lapp;->b:Z

    .line 5123
    iget-boolean v0, p0, Lapp;->b:Z

    if-eqz v0, :cond_5

    .line 5126
    iget-object v0, p0, Lapp;->l:Lary;

    invoke-virtual {v0}, Lary;->e()J

    move-result-wide v0

    iget-object v2, p0, Lapp;->l:Lary;

    invoke-virtual {v2}, Lary;->f()J

    move-result-wide v2

    iget-object v4, p0, Lapp;->l:Lary;

    invoke-virtual {v4}, Lary;->d()Z

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lawj;->a(JJZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5127
    iget-object v0, p0, Lapp;->l:Lary;

    invoke-virtual {v0}, Lary;->e()J

    move-result-wide v0

    invoke-static {}, Lawj;->a()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lapp;->a(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lapp;->c:J

    .line 5128
    iget-wide v0, p0, Lapp;->c:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lapp;->d:J

    .line 5139
    :goto_0
    iget-wide v0, p0, Lapp;->c:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_0

    .line 5140
    invoke-static {}, Lawj;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lapp;->c:J

    .line 5143
    :cond_0
    iget-wide v0, p0, Lapp;->d:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_1

    iget-wide v0, p0, Lapp;->d:J

    iget-wide v2, p0, Lapp;->c:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 5144
    :cond_1
    iget-wide v0, p0, Lapp;->c:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lapp;->d:J

    .line 5147
    :cond_2
    iget-boolean v0, p0, Lapp;->b:Z

    iput-boolean v0, p0, Lapp;->o:Z

    .line 5148
    iget-wide v0, p0, Lapp;->c:J

    iput-wide v0, p0, Lapp;->p:J

    .line 5149
    iget-wide v0, p0, Lapp;->d:J

    iput-wide v0, p0, Lapp;->q:J

    .line 5152
    iget-object v0, p0, Lapp;->l:Lary;

    invoke-virtual {v0}, Lary;->a()Lcom/alibaba/android/calendar/data/object/AlarmObject;

    move-result-object v0

    if-nez v0, :cond_7

    .line 5153
    iget-boolean v0, p0, Lapp;->b:Z

    if-eqz v0, :cond_6

    .line 5154
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->NONE:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->convertToModeIndex(Z)I

    move-result v0

    iput v0, p0, Lapp;->f:I

    .line 5159
    :goto_1
    iget v0, p0, Lapp;->f:I

    iput v0, p0, Lapp;->r:I

    .line 5160
    iget-object v0, p0, Lapp;->g:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    iput-object v0, p0, Lapp;->s:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 5174
    :goto_2
    new-instance v1, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;

    invoke-direct {v1}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;-><init>()V

    .line 5175
    iget-object v0, p0, Lapp;->l:Lary;

    invoke-virtual {v0}, Lary;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5177
    :try_start_0
    iget-object v0, p0, Lapp;->l:Lary;

    invoke-virtual {v0}, Lary;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5182
    :cond_3
    :goto_3
    invoke-static {v1}, Lawf;->a(Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;)Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    move-result-object v0

    iput-object v0, p0, Lapp;->e:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    .line 5183
    iget-object v0, p0, Lapp;->e:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    iput-object v0, p0, Lapp;->t:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    .line 5186
    iget-object v0, p0, Lapp;->l:Lary;

    .line 7089
    iget-object v0, v0, Lary;->h:Ljava/lang/String;

    .line 5186
    iput-object v0, p0, Lapp;->u:Ljava/lang/String;

    .line 5188
    invoke-virtual {p0}, Lapp;->a()V

    .line 36
    return-void

    .line 5130
    :cond_4
    iget-object v0, p0, Lapp;->l:Lary;

    invoke-virtual {v0}, Lary;->e()J

    move-result-wide v0

    invoke-static {}, Lawj;->a()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lapp;->a(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lapp;->c:J

    .line 5131
    iget-object v0, p0, Lapp;->l:Lary;

    invoke-virtual {v0}, Lary;->f()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lapp;->c:J

    add-long/2addr v2, v6

    invoke-static {v0, v1, v2, v3}, Lapp;->a(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lapp;->d:J

    goto/16 :goto_0

    .line 5135
    :cond_5
    iget-object v0, p0, Lapp;->l:Lary;

    invoke-virtual {v0}, Lary;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lapp;->c:J

    .line 5136
    iget-object v0, p0, Lapp;->l:Lary;

    invoke-virtual {v0}, Lary;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lapp;->d:J

    goto/16 :goto_0

    .line 5156
    :cond_6
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->HAPPEN:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->convertToModeIndex(Z)I

    move-result v0

    iput v0, p0, Lapp;->f:I

    goto :goto_1

    .line 5163
    :cond_7
    iget-object v0, p0, Lapp;->l:Lary;

    invoke-virtual {v0}, Lary;->a()Lcom/alibaba/android/calendar/data/object/AlarmObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/AlarmObject;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->fromValue(J)Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    move-result-object v0

    .line 5164
    iget-boolean v1, p0, Lapp;->b:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->convertToModeIndex(Z)I

    move-result v0

    iput v0, p0, Lapp;->f:I

    .line 5166
    iget-object v0, p0, Lapp;->l:Lary;

    invoke-virtual {v0}, Lary;->a()Lcom/alibaba/android/calendar/data/object/AlarmObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/AlarmObject;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v0

    .line 7045
    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->CALL:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    if-ne v0, v1, :cond_8

    .line 7046
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->CALL:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 5167
    :goto_4
    iput-object v0, p0, Lapp;->g:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 5169
    iget v0, p0, Lapp;->f:I

    iput v0, p0, Lapp;->r:I

    .line 5170
    iget-object v0, p0, Lapp;->g:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    iput-object v0, p0, Lapp;->s:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    goto/16 :goto_2

    .line 7047
    :cond_8
    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->SMS:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    if-ne v0, v1, :cond_9

    .line 7048
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->SMS:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    goto :goto_4

    .line 7050
    :cond_9
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    goto :goto_4

    .line 5178
    :catch_0
    move-exception v0

    .line 5179
    const-string/jumbo v2, "parse recurrence failed"

    invoke-static {v2, v0}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3
.end method


# virtual methods
.method final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 195
    iget-object v0, p0, Lapp;->v:Lapq$a;

    iget-object v1, p0, Lapp;->n:Ljava/lang/String;

    invoke-interface {v0, v1}, Lapq$a;->a(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lapp;->v:Lapq$a;

    iget-boolean v1, p0, Lapp;->o:Z

    invoke-interface {v0, v1}, Lapq$a;->a(Z)V

    .line 197
    invoke-super {p0}, Lapn;->a()V

    .line 198
    iget-object v0, p0, Lapp;->v:Lapq$a;

    iget-object v1, p0, Lapp;->u:Ljava/lang/String;

    invoke-interface {v0, v1}, Lapq$a;->b(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public final bridge synthetic a(J)V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Lapn;->a(J)V

    return-void
.end method

.method public final bridge synthetic a(Z)V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0, p1}, Lapn;->a(Z)V

    return-void
.end method

.method public final bridge synthetic b(J)V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Lapn;->b(J)V

    return-void
.end method

.method public final bridge synthetic c()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Lapn;->c()V

    return-void
.end method

.method public final bridge synthetic d()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Lapn;->d()V

    return-void
.end method

.method public final bridge synthetic e()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Lapn;->e()V

    return-void
.end method

.method public final bridge synthetic f()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Lapn;->f()V

    return-void
.end method

.method public final bridge synthetic g()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Lapn;->g()V

    return-void
.end method

.method public final bridge synthetic h()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Lapn;->h()V

    return-void
.end method

.method public final bridge synthetic i()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Lapn;->i()V

    return-void
.end method

.method public final j()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 82
    iget-object v0, p0, Lapp;->j:Lapq$c;

    invoke-interface {v0}, Lapq$c;->b()V

    .line 83
    invoke-static {}, Latf;->a()Latf;

    move-result-object v1

    iget-wide v2, p0, Lapp;->k:J

    iget-object v4, p0, Lapp;->m:Ljava/lang/String;

    new-instance v0, Lapp$1;

    invoke-direct {v0, p0}, Lapp$1;-><init>(Lapp;)V

    const-class v5, Lcom/alibaba/wukong/Callback;

    iget-object v6, p0, Lapp;->j:Lapq$c;

    .line 113
    invoke-interface {v6}, Lapq$c;->a()Landroid/app/Activity;

    move-result-object v6

    .line 83
    invoke-static {v0, v5, v6}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-virtual {v1, v2, v3, v4, v0}, Latf;->a(JLjava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 114
    return-void
.end method

.method public final k()V
    .locals 20

    .prologue
    .line 205
    .line 1292
    move-object/from16 v0, p0

    iget-object v9, v0, Lapp;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lapp;->j:Lapq$c;

    invoke-interface {v12}, Lapq$c;->i()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v9, 0x1

    .line 1293
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lapp;->o:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lapp;->b:Z

    if-eq v12, v13, :cond_2

    const/4 v12, 0x1

    .line 1294
    :goto_1
    move-object/from16 v0, p0

    iget-wide v14, v0, Lapp;->c:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lapp;->p:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    .line 1295
    :goto_2
    move-object/from16 v0, p0

    iget-wide v14, v0, Lapp;->d:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lapp;->q:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    .line 1296
    :goto_3
    move-object/from16 v0, p0

    iget v15, v0, Lapp;->r:I

    move-object/from16 v0, p0

    iget v0, v0, Lapp;->f:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_5

    const/4 v15, 0x1

    .line 1297
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp;->s:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lapp;->g:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_6

    const/16 v16, 0x1

    .line 1298
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp;->e:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lapp;->t:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_7

    const/16 v17, 0x1

    .line 1299
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lapp;->u:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lapp;->j:Lapq$c;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lapq$c;->h()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_8

    const/16 v18, 0x1

    .line 1301
    :goto_7
    if-nez v9, :cond_0

    if-nez v12, :cond_0

    if-nez v13, :cond_0

    if-nez v14, :cond_0

    if-nez v15, :cond_0

    if-nez v16, :cond_0

    if-nez v17, :cond_0

    if-eqz v18, :cond_9

    :cond_0
    const/4 v9, 0x1

    .line 205
    :goto_8
    if-nez v9, :cond_a

    .line 206
    sget v9, Laow$f;->dt_ding_conference_edit_no_change:I

    invoke-static {v9}, Lcms;->a(I)V

    .line 288
    :goto_9
    return-void

    .line 1292
    :cond_1
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1293
    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1294
    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    .line 1295
    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    .line 1296
    :cond_5
    const/4 v15, 0x0

    goto :goto_4

    .line 1297
    :cond_6
    const/16 v16, 0x0

    goto :goto_5

    .line 1298
    :cond_7
    const/16 v17, 0x0

    goto :goto_6

    .line 1299
    :cond_8
    const/16 v18, 0x0

    goto :goto_7

    .line 1301
    :cond_9
    const/4 v9, 0x0

    goto :goto_8

    .line 211
    :cond_a
    move-object/from16 v0, p0

    iget-object v9, v0, Lapp;->j:Lapq$c;

    invoke-interface {v9}, Lapq$c;->i()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    move-object/from16 v0, p0

    iget-object v9, v0, Lapp;->j:Lapq$c;

    invoke-interface {v9}, Lapq$c;->i()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 212
    :cond_b
    sget v9, Laow$f;->dt_ding_schedule_event_subject_empty_tip:I

    invoke-static {v9}, Lcms;->a(I)V

    goto :goto_9

    .line 217
    :cond_c
    move-object/from16 v0, p0

    iget-object v9, v0, Lapp;->j:Lapq$c;

    invoke-interface {v9}, Lapq$c;->i()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    move-object/from16 v0, p0

    iget-object v9, v0, Lapp;->j:Lapq$c;

    invoke-interface {v9}, Lapq$c;->i()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v12, 0x1388

    if-le v9, v12, :cond_d

    .line 218
    sget v9, Laow$f;->dt_ding_schedule_event_subject_too_long_tip:I

    invoke-static {v9}, Lcms;->a(I)V

    goto :goto_9

    .line 223
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lapp;->b:Z

    if-eqz v9, :cond_e

    move-object/from16 v0, p0

    iget-wide v12, v0, Lapp;->c:J

    invoke-static {v12, v13}, Lawj;->d(J)J

    move-result-wide v10

    .line 224
    .local v10, "startTime":J
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lapp;->b:Z

    if-eqz v9, :cond_f

    move-object/from16 v0, p0

    iget-wide v12, v0, Lapp;->d:J

    const-wide/32 v14, 0x5265c00

    add-long/2addr v12, v14

    invoke-static {v12, v13}, Lawj;->d(J)J

    move-result-wide v6

    .line 225
    .local v6, "endTime":J
    :goto_b
    cmp-long v9, v10, v6

    if-lez v9, :cond_10

    .line 226
    sget v9, Laow$f;->dt_create_event_start_time_after_end_time_tip:I

    invoke-static {v9}, Lcms;->a(I)V

    goto/16 :goto_9

    .line 223
    .end local v6    # "endTime":J
    .end local v10    # "startTime":J
    :cond_e
    move-object/from16 v0, p0

    iget-wide v10, v0, Lapp;->c:J

    goto :goto_a

    .line 224
    .restart local v10    # "startTime":J
    :cond_f
    move-object/from16 v0, p0

    iget-wide v6, v0, Lapp;->d:J

    goto :goto_b

    .line 230
    .restart local v6    # "endTime":J
    :cond_10
    new-instance v4, Lasi;

    invoke-direct {v4}, Lasi;-><init>()V

    .line 231
    .local v4, "calendarUpdateObject":Lasi;
    move-object/from16 v0, p0

    iget-wide v12, v0, Lapp;->k:J

    .line 2022
    iput-wide v12, v4, Lasi;->a:J

    .line 232
    move-object/from16 v0, p0

    iget-object v9, v0, Lapp;->l:Lary;

    invoke-virtual {v9}, Lary;->b()J

    move-result-wide v12

    .line 2030
    iput-wide v12, v4, Lasi;->b:J

    .line 234
    new-instance v8, Last;

    invoke-direct {v8}, Last;-><init>()V

    .line 237
    .local v8, "scheduleObject":Last;
    move-object/from16 v0, p0

    iget-object v9, v0, Lapp;->j:Lapq$c;

    invoke-interface {v9}, Lapq$c;->i()Ljava/lang/String;

    move-result-object v9

    .line 2063
    iput-object v9, v8, Last;->c:Ljava/lang/String;

    .line 240
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lapp;->b:Z

    .line 2071
    iput-boolean v9, v8, Last;->d:Z

    .line 3039
    iput-wide v10, v8, Last;->a:J

    .line 3047
    iput-wide v6, v8, Last;->b:J

    .line 247
    move-object/from16 v0, p0

    iget-object v9, v0, Lapp;->g:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-static {v9}, Lavv;->a(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v3

    .line 248
    .local v3, "alarmTypeNotification":Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
    new-instance v2, Lcom/alibaba/android/calendar/data/object/AlarmObject;

    invoke-direct {v2}, Lcom/alibaba/android/calendar/data/object/AlarmObject;-><init>()V

    .line 249
    .local v2, "alarmObject":Lcom/alibaba/android/calendar/data/object/AlarmObject;
    move-object/from16 v0, p0

    iget v9, v0, Lapp;->f:I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lapp;->b:Z

    invoke-static {v9, v12}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->getMode(IZ)Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    move-result-object v5

    .line 250
    .local v5, "scheduleEventAllDayRemindMode":Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;
    invoke-virtual {v5}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->getMinutes()J

    move-result-wide v12

    invoke-virtual {v2, v12, v13}, Lcom/alibaba/android/calendar/data/object/AlarmObject;->setTime(J)V

    .line 251
    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->getValue()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/alibaba/android/calendar/data/object/AlarmObject;->setType(I)V

    .line 252
    const/4 v9, 0x1

    new-array v9, v9, [Lcom/alibaba/android/calendar/data/object/AlarmObject;

    const/4 v12, 0x0

    aput-object v2, v9, v12

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 3079
    iput-object v9, v8, Last;->f:Ljava/util/List;

    .line 255
    move-object/from16 v0, p0

    iget-object v9, v0, Lapp;->e:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    invoke-static {v9}, Lawf;->a(Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;)Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;

    move-result-object v9

    .line 4075
    iput-object v9, v8, Last;->e:Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;

    .line 258
    move-object/from16 v0, p0

    iget-object v9, v0, Lapp;->j:Lapq$c;

    invoke-interface {v9}, Lapq$c;->h()Ljava/lang/String;

    move-result-object v9

    .line 4087
    iput-object v9, v8, Last;->g:Ljava/lang/String;

    .line 5034
    iput-object v8, v4, Lasi;->c:Last;

    .line 261
    move-object/from16 v0, p0

    iget-object v9, v0, Lapp;->j:Lapq$c;

    const/4 v12, 0x0

    invoke-interface {v9, v12}, Lapq$c;->a(Z)V

    .line 262
    move-object/from16 v0, p0

    iget-object v9, v0, Lapp;->j:Lapq$c;

    invoke-interface {v9}, Lapq$c;->f()V

    .line 263
    invoke-static {}, Latf;->a()Latf;

    move-result-object v12

    new-instance v9, Lapp$2;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lapp$2;-><init>(Lapp;)V

    const-class v13, Lcom/alibaba/wukong/Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lapp;->j:Lapq$c;

    .line 287
    invoke-interface {v14}, Lapq$c;->a()Landroid/app/Activity;

    move-result-object v14

    .line 263
    invoke-static {v9, v13, v14}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/wukong/Callback;

    invoke-virtual {v12, v4, v9}, Latf;->a(Lasi;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_9
.end method
