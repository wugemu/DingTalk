.class public Laps;
.super Ljava/lang/Object;
.source "ScheduleDetailPresenterImpl.java"

# interfaces
.implements Lapr$a;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# instance fields
.field private c:J

.field private d:J

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Lasc;

.field private h:Lary;

.field private i:Landroid/app/Activity;

.field private j:Lapr$b;

.field private k:Landroid/content/BroadcastReceiver;

.field private l:I

.field private m:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Laps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laps;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lapr$b;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lapr$b;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->HAPPEN:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->convertToModeIndex(Z)I

    move-result v0

    iput v0, p0, Laps;->l:I

    .line 68
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    iput-object v0, p0, Laps;->m:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 298
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    iput-wide v0, p0, Laps;->n:J

    .line 71
    if-nez p1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "attached activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    if-nez p2, :cond_1

    .line 75
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "view activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    iput-object p1, p0, Laps;->i:Landroid/app/Activity;

    .line 78
    iput-object p2, p0, Laps;->j:Lapr$b;

    .line 1302
    new-instance v0, Laps$4;

    invoke-direct {v0, p0}, Laps$4;-><init>(Laps;)V

    iput-object v0, p0, Laps;->k:Landroid/content/BroadcastReceiver;

    .line 1325
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1326
    const-string/jumbo v1, "com.workapp.ding.choose.event.remind.mode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1327
    const-string/jumbo v1, "com.workapp.calendar.reload.instances"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1328
    iget-object v1, p0, Laps;->i:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Laps;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 80
    return-void
.end method

.method static synthetic a(Laps;I)I
    .locals 0
    .param p0, "x0"    # Laps;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Laps;->l:I

    return p1
.end method

.method static synthetic a(Laps;J)J
    .locals 1
    .param p0, "x0"    # Laps;
    .param p1, "x1"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Laps;->d:J

    return-wide p1
.end method

.method static synthetic a(Laps;)Lapr$b;
    .locals 1
    .param p0, "x0"    # Laps;

    .prologue
    .line 48
    iget-object v0, p0, Laps;->j:Lapr$b;

    return-object v0
.end method

.method static synthetic a(Laps;Lary;)Lary;
    .locals 0
    .param p0, "x0"    # Laps;
    .param p1, "x1"    # Lary;

    .prologue
    .line 48
    iput-object p1, p0, Laps;->h:Lary;

    return-object p1
.end method

.method static synthetic a(Laps;Lasc;)Lasc;
    .locals 0
    .param p0, "x0"    # Laps;
    .param p1, "x1"    # Lasc;

    .prologue
    .line 48
    iput-object p1, p0, Laps;->g:Lasc;

    return-object p1
.end method

.method static synthetic a(Laps;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;
    .locals 0
    .param p0, "x0"    # Laps;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .prologue
    .line 48
    iput-object p1, p0, Laps;->m:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    return-object p1
.end method

.method static synthetic a(Laps;ILcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)V
    .locals 9
    .param p0, "x0"    # Laps;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .prologue
    const/4 v3, 0x1

    .line 48
    .line 3383
    iget v0, p0, Laps;->l:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Laps;->m:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    if-ne v0, p2, :cond_0

    .line 3384
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[ScheduleDetailPresenterImpl] updateScheduleEventAlarmList remindModeIndex="

    aput-object v2, v0, v1

    .line 3385
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, ", remindType="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p2}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3384
    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 3386
    :goto_0
    return-void

    .line 3389
    :cond_0
    iget-object v0, p0, Laps;->h:Lary;

    invoke-virtual {v0}, Lary;->d()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->getMode(IZ)Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    move-result-object v0

    .line 3390
    invoke-static {p2}, Lavv;->a(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v1

    .line 3391
    new-instance v2, Lcom/alibaba/android/calendar/data/object/AlarmObject;

    invoke-direct {v2}, Lcom/alibaba/android/calendar/data/object/AlarmObject;-><init>()V

    .line 3392
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->getMinutes()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/android/calendar/data/object/AlarmObject;->setTime(J)V

    .line 3393
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->getValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/alibaba/android/calendar/data/object/AlarmObject;->setType(I)V

    .line 3395
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3396
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3398
    invoke-static {}, Latf;->a()Latf;

    move-result-object v1

    iget-wide v2, p0, Laps;->c:J

    iget-wide v4, p0, Laps;->d:J

    new-instance v7, Laps$6;

    invoke-direct {v7, p0, p1, p2, v0}, Laps$6;-><init>(Laps;ILcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;)V

    const-class v0, Lcom/alibaba/wukong/Callback;

    iget-object v8, p0, Laps;->i:Landroid/app/Activity;

    invoke-static {v7, v0, v8}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/Callback;

    .line 4380
    iget-object v8, v1, Latf;->a:Latf$b;

    new-instance v0, Latf$8;

    invoke-direct/range {v0 .. v7}, Latf$8;-><init>(Latf;JJLjava/util/List;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v8, v0}, Latf$b;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic b(Laps;)J
    .locals 2
    .param p0, "x0"    # Laps;

    .prologue
    .line 48
    iget-wide v0, p0, Laps;->c:J

    return-wide v0
.end method

.method static synthetic c(Laps;)Lary;
    .locals 1
    .param p0, "x0"    # Laps;

    .prologue
    .line 48
    iget-object v0, p0, Laps;->h:Lary;

    return-object v0
.end method

.method static synthetic d(Laps;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Laps;

    .prologue
    .line 48
    iget-object v0, p0, Laps;->i:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Laps;)J
    .locals 2
    .param p0, "x0"    # Laps;

    .prologue
    .line 48
    iget-wide v0, p0, Laps;->n:J

    return-wide v0
.end method

.method static synthetic f(Laps;)V
    .locals 7
    .param p0, "x0"    # Laps;

    .prologue
    .line 48
    .line 5333
    invoke-static {}, Latf;->a()Latf;

    move-result-object v1

    iget-wide v2, p0, Laps;->c:J

    iget-object v4, p0, Laps;->f:Ljava/lang/String;

    new-instance v0, Laps$5;

    invoke-direct {v0, p0}, Laps$5;-><init>(Laps;)V

    const-class v5, Lcom/alibaba/wukong/Callback;

    iget-object v6, p0, Laps;->i:Landroid/app/Activity;

    .line 5334
    invoke-static {v0, v5, v6}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 5333
    invoke-virtual {v1, v2, v3, v4, v0}, Latf;->a(JLjava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 48
    return-void
.end method

.method static synthetic g(Laps;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;
    .locals 1
    .param p0, "x0"    # Laps;

    .prologue
    .line 48
    iget-object v0, p0, Laps;->m:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    return-object v0
.end method

.method static synthetic h(Laps;)J
    .locals 2
    .param p0, "x0"    # Laps;

    .prologue
    .line 48
    iget-wide v0, p0, Laps;->d:J

    return-wide v0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Laps;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Laps;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    sput-object v0, Laps;->b:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 86
    if-nez p1, :cond_0

    .line 87
    const-string/jumbo v1, "ScheduleDetailPage exception"

    const-string/jumbo v2, "-1"

    const-string/jumbo v3, "intent is null"

    invoke-static {v1, v2, v3}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Laps;->j:Lapr$b;

    invoke-interface {v1}, Lapr$b;->a()V

    .line 167
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string/jumbo v1, "calendarid"

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Laps;->c:J

    .line 93
    const-string/jumbo v1, "folderid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Laps;->f:Ljava/lang/String;

    .line 94
    const-string/jumbo v1, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Laps;->e:J

    .line 95
    iget-wide v2, p0, Laps;->c:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 96
    const-string/jumbo v1, "ScheduleDetailPage exception"

    const-string/jumbo v2, "-1"

    const-string/jumbo v3, "calendarId <= 0"

    invoke-static {v1, v2, v3}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Laps;->j:Lapr$b;

    invoke-interface {v1}, Lapr$b;->a()V

    goto :goto_0

    .line 100
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[ScheduleDetailPresenterImpl] calendarId="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Laps;->c:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Laps;->j:Lapr$b;

    invoke-interface {v1}, Lapr$b;->b()V

    .line 105
    new-instance v0, Laps$1;

    invoke-direct {v0, p0}, Laps$1;-><init>(Laps;)V

    .line 165
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lasc;>;"
    invoke-static {}, Latf;->a()Latf;

    move-result-object v2

    iget-wide v4, p0, Laps;->c:J

    iget-object v3, p0, Laps;->f:Ljava/lang/String;

    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v6, p0, Laps;->i:Landroid/app/Activity;

    .line 166
    invoke-static {v0, v1, v6}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    .line 165
    invoke-virtual {v2, v4, v5, v3, v1}, Latf;->a(JLjava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 176
    iget-wide v0, p0, Laps;->c:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laps;->b:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public final c()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 186
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v1

    iget-object v2, p0, Laps;->i:Landroid/app/Activity;

    iget v3, p0, Laps;->l:I

    iget-object v0, p0, Laps;->m:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 187
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v4

    const/4 v5, 0x0

    iget-object v0, p0, Laps;->h:Lary;

    .line 188
    invoke-virtual {v0}, Lary;->d()Z

    move-result v0

    invoke-static {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->getResIdList(Z)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v0, p0, Laps;->i:Landroid/app/Activity;

    sget v7, Laow$f;->dt_common_remind:I

    .line 189
    invoke-virtual {v0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, p0, Laps;->n:J

    .line 186
    invoke-virtual/range {v1 .. v9}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/app/Activity;IIZLjava/util/ArrayList;Ljava/lang/String;J)V

    .line 190
    return-void
.end method

.method public final d()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 194
    iget-object v0, p0, Laps;->i:Landroid/app/Activity;

    iget-wide v2, p0, Laps;->c:J

    iget-object v1, p0, Laps;->f:Ljava/lang/String;

    .line 2130
    if-eqz v0, :cond_0

    .line 2134
    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v4, "https://qr.dingtalk.com/calendar/edit_schedule"

    new-instance v5, Lavr$6;

    invoke-direct {v5, v2, v3, v1}, Lavr$6;-><init>(JLjava/lang/String;)V

    invoke-interface {v0, v4, v5}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 195
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Laps;->h:Lary;

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Laps;->h:Lary;

    invoke-virtual {v0}, Lary;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {p0}, Laps;->j()V

    goto :goto_0

    .line 207
    :cond_1
    iget-object v0, p0, Laps;->j:Lapr$b;

    invoke-interface {v0}, Lapr$b;->e()V

    goto :goto_0
.end method

.method public final f()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 214
    iget-object v1, p0, Laps;->j:Lapr$b;

    invoke-interface {v1}, Lapr$b;->b()V

    .line 215
    new-instance v0, Laps$2;

    invoke-direct {v0, p0}, Laps$2;-><init>(Laps;)V

    .line 234
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {}, Latf;->a()Latf;

    move-result-object v1

    iget-wide v2, p0, Laps;->c:J

    iget-wide v4, p0, Laps;->d:J

    iget-wide v6, p0, Laps;->e:J

    const-class v8, Lcom/alibaba/wukong/Callback;

    iget-object v9, p0, Laps;->i:Landroid/app/Activity;

    .line 235
    invoke-static {v0, v8, v9}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/wukong/Callback;

    .line 234
    invoke-virtual/range {v1 .. v8}, Latf;->a(JJJLcom/alibaba/wukong/Callback;)V

    .line 236
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 295
    .line 2375
    iget-object v0, p0, Laps;->k:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2376
    iget-object v0, p0, Laps;->i:Landroid/app/Activity;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Laps;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2377
    const/4 v0, 0x0

    iput-object v0, p0, Laps;->k:Landroid/content/BroadcastReceiver;

    .line 296
    :cond_0
    return-void
.end method

.method public final j()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 241
    iget-object v1, p0, Laps;->j:Lapr$b;

    invoke-interface {v1}, Lapr$b;->b()V

    .line 242
    new-instance v0, Laps$3;

    invoke-direct {v0, p0}, Laps$3;-><init>(Laps;)V

    .line 279
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {}, Latf;->a()Latf;

    move-result-object v2

    iget-wide v4, p0, Laps;->c:J

    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v3, p0, Laps;->i:Landroid/app/Activity;

    .line 280
    invoke-static {v0, v1, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    .line 279
    invoke-virtual {v2, v4, v5, v1}, Latf;->a(JLcom/alibaba/wukong/Callback;)V

    .line 281
    return-void
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Laps;->g:Lasc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laps;->g:Lasc;

    .line 3155
    iget-boolean v0, v0, Lasc;->l:Z

    .line 426
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
