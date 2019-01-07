.class public final Lapi;
.super Ljava/lang/Object;
.source "CalendarActivityPresenter.java"

# interfaces
.implements Laph$a;


# instance fields
.field a:Laph$b;

.field b:Ljava/util/Calendar;

.field c:Z

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lawv;",
            ">;"
        }
    .end annotation
.end field

.field e:Larm;

.field f:Laox;

.field g:Laox;

.field h:Lawn;

.field i:Larc;

.field private j:J

.field private k:I

.field private l:I

.field private m:Ljava/lang/Runnable;

.field private n:Ljava/lang/Runnable;

.field private o:Laoy$a;

.field private p:Laox$a;

.field private q:Lard;

.field private r:Landroid/content/BroadcastReceiver;

.field private s:Ljava/lang/Runnable;

.field private t:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;

.field private u:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$c;


# direct methods
.method public constructor <init>(Laph$b;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Laph$b;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lapi;->d:Ljava/util/List;

    .line 72
    new-instance v0, Lapi$1;

    invoke-direct {v0, p0}, Lapi$1;-><init>(Lapi;)V

    iput-object v0, p0, Lapi;->m:Ljava/lang/Runnable;

    .line 88
    new-instance v0, Lapi$4;

    invoke-direct {v0, p0}, Lapi$4;-><init>(Lapi;)V

    iput-object v0, p0, Lapi;->n:Ljava/lang/Runnable;

    .line 102
    new-instance v0, Lapi$5;

    invoke-direct {v0, p0}, Lapi$5;-><init>(Lapi;)V

    iput-object v0, p0, Lapi;->o:Laoy$a;

    .line 109
    new-instance v0, Lapi$6;

    invoke-direct {v0, p0}, Lapi$6;-><init>(Lapi;)V

    iput-object v0, p0, Lapi;->p:Laox$a;

    .line 116
    new-instance v0, Lapi$7;

    invoke-direct {v0, p0}, Lapi$7;-><init>(Lapi;)V

    iput-object v0, p0, Lapi;->i:Larc;

    .line 131
    new-instance v0, Lapi$8;

    invoke-direct {v0, p0}, Lapi$8;-><init>(Lapi;)V

    iput-object v0, p0, Lapi;->q:Lard;

    .line 146
    new-instance v0, Lapi$9;

    invoke-direct {v0, p0}, Lapi$9;-><init>(Lapi;)V

    iput-object v0, p0, Lapi;->s:Ljava/lang/Runnable;

    .line 154
    new-instance v0, Lapi$10;

    invoke-direct {v0, p0}, Lapi$10;-><init>(Lapi;)V

    iput-object v0, p0, Lapi;->t:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;

    .line 174
    new-instance v0, Lapi$11;

    invoke-direct {v0, p0}, Lapi$11;-><init>(Lapi;)V

    iput-object v0, p0, Lapi;->u:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$c;

    .line 185
    iput-object p1, p0, Lapi;->a:Laph$b;

    .line 187
    if-eqz p2, :cond_0

    .line 188
    const-string/jumbo v0, "user_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lapi;->j:J

    .line 191
    :cond_0
    iget-wide v0, p0, Lapi;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Larj;

    iget-wide v2, p0, Lapi;->j:J

    invoke-direct {v0, v2, v3}, Larj;-><init>(J)V

    .line 193
    :goto_0
    iput-object v0, p0, Lapi;->e:Larm;

    .line 194
    iget-object v0, p0, Lapi;->e:Larm;

    iget-object v1, p0, Lapi;->i:Larc;

    invoke-interface {v0, v1}, Larm;->a(Larc;)V

    .line 195
    iget-object v0, p0, Lapi;->e:Larm;

    iget-object v1, p0, Lapi;->q:Lard;

    invoke-interface {v0, v1}, Larm;->a(Lard;)V

    .line 196
    return-void

    .line 191
    :cond_1
    new-instance v0, Larf;

    .line 193
    invoke-interface {p1}, Laph$b;->a()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-direct {v0, v1}, Larf;-><init>(Landroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method

.method private b(J)V
    .locals 3
    .param p1, "timeMillis"    # J

    .prologue
    const/4 v2, 0x0

    .line 519
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lapi;->b:Ljava/util/Calendar;

    .line 520
    iget-object v0, p0, Lapi;->b:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 521
    iget-object v0, p0, Lapi;->b:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 522
    iget-object v0, p0, Lapi;->b:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 523
    iget-object v0, p0, Lapi;->b:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 524
    iget-object v0, p0, Lapi;->b:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 525
    return-void
.end method

.method private f(Lckq;)V
    .locals 3
    .param p1, "bean"    # Lckq;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 528
    invoke-virtual {p1}, Lckq;->a()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lapi;->b:Ljava/util/Calendar;

    .line 529
    iget-object v0, p0, Lapi;->b:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 530
    iget-object v0, p0, Lapi;->b:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 531
    iget-object v0, p0, Lapi;->b:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 532
    iget-object v0, p0, Lapi;->b:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 533
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lapi;->a:Laph$b;

    invoke-interface {v0}, Laph$b;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lapi;->a:Laph$b;

    invoke-interface {v0}, Laph$b;->g()V

    .line 538
    iget-object v0, p0, Lapi;->a:Laph$b;

    invoke-interface {v0}, Laph$b;->i()V

    .line 546
    :goto_0
    return-void

    .line 540
    :cond_0
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    invoke-virtual {p0}, Lapi;->h()V

    goto :goto_0

    .line 543
    :cond_1
    iget-object v0, p0, Lapi;->e:Larm;

    invoke-interface {v0}, Larm;->e()V

    goto :goto_0
.end method


# virtual methods
.method public final a(ZZJ)Ljava/util/List;
    .locals 1
    .param p1, "includeAllDay"    # Z
    .param p2, "includeNotAllDay"    # Z
    .param p3, "dayStartTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZJ)",
            "Ljava/util/List",
            "<",
            "Laxn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lapi;->e:Larm;

    invoke-interface {v0, p1, p2, p3, p4}, Larm;->a(ZZJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 200
    .line 1304
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    .line 2224
    iget-object v1, v0, Latf;->a:Latf$b;

    new-instance v2, Latf$37;

    invoke-direct {v2, v0}, Latf$37;-><init>(Latf;)V

    invoke-virtual {v1, v2}, Latf$b;->execute(Ljava/lang/Runnable;)V

    .line 1306
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapi;->b(J)V

    .line 1307
    iget-object v0, p0, Lapi;->a:Laph$b;

    iget-object v1, p0, Lapi;->b:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Laph$b;->a(J)V

    .line 1309
    new-instance v0, Laox;

    iget-object v1, p0, Lapi;->a:Laph$b;

    invoke-interface {v1}, Laph$b;->b()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lapi;->o:Laoy$a;

    iget-object v3, p0, Lapi;->p:Laox$a;

    invoke-direct {v0, v1, v4, v2, v3}, Laox;-><init>(Landroid/content/Context;ZLaoy$a;Laox$a;)V

    iput-object v0, p0, Lapi;->f:Laox;

    .line 1313
    new-instance v0, Laox;

    iget-object v1, p0, Lapi;->a:Laph$b;

    invoke-interface {v1}, Laph$b;->b()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lapi;->o:Laoy$a;

    iget-object v3, p0, Lapi;->p:Laox$a;

    invoke-direct {v0, v1, v5, v2, v3}, Laox;-><init>(Landroid/content/Context;ZLaoy$a;Laox$a;)V

    iput-object v0, p0, Lapi;->g:Laox;

    .line 1318
    iget-object v0, p0, Lapi;->a:Laph$b;

    invoke-interface {v0}, Laph$b;->d()V

    .line 1319
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    new-instance v1, Lapi$2;

    invoke-direct {v1, p0}, Lapi$2;-><init>(Lapi;)V

    invoke-virtual {v0, v1}, Lcaa;->post(Ljava/lang/Runnable;)Z

    .line 1337
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1338
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    iget-object v1, p0, Lapi;->n:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcaa;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3343
    :cond_0
    new-instance v0, Lapi$3;

    invoke-direct {v0, p0}, Lapi$3;-><init>(Lapi;)V

    iput-object v0, p0, Lapi;->r:Landroid/content/BroadcastReceiver;

    .line 3365
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3366
    const-string/jumbo v1, "com.workapp.calendar.reload.instances"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3367
    const-string/jumbo v1, "action_reload_mail_event"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3368
    const-string/jumbo v1, "com.workapp.ding.reload.system.events"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3369
    const-string/jumbo v1, "action_calendar_change_day"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3370
    iget-object v1, p0, Lapi;->a:Laph$b;

    invoke-interface {v1}, Laph$b;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lapi;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 3207
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v0

    iget-object v1, p0, Lapi;->t:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->a(Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;)V

    .line 3208
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v0

    iget-object v1, p0, Lapi;->u:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$c;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->a(Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$c;)V

    .line 4226
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "[CalendarActivityPresenter] loadAliMailFoldersFromRemote "

    aput-object v1, v0, v4

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 4227
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Latf;->a(Lcom/alibaba/wukong/Callback;)V

    .line 203
    return-void
.end method

.method public final a(I)V
    .locals 6
    .param p1, "firstVisibleItem"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 493
    iget-object v1, p0, Lapi;->h:Lawn;

    if-nez v1, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-object v1, p0, Lapi;->h:Lawn;

    invoke-virtual {v1, p1}, Lawn;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawv;

    .line 498
    .local v0, "firstEvent":Lawv;
    if-eqz v0, :cond_0

    .line 502
    invoke-interface {v0}, Lawv;->getEventStartTime()J

    move-result-wide v2

    .line 503
    .local v2, "startTime":J
    iget-object v1, p0, Lapi;->b:Ljava/util/Calendar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lapi;->b:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Lcog;->a(JJ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 507
    :cond_2
    invoke-direct {p0, v2, v3}, Lapi;->b(J)V

    .line 508
    iget-object v1, p0, Lapi;->a:Laph$b;

    invoke-interface {v1, v2, v3}, Laph$b;->a(J)V

    .line 509
    iget-object v1, p0, Lapi;->a:Laph$b;

    invoke-interface {v1}, Laph$b;->f()V

    goto :goto_0
.end method

.method public final a(II)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 468
    iput p1, p0, Lapi;->k:I

    .line 469
    iput p2, p0, Lapi;->l:I

    .line 470
    return-void
.end method

.method public final a(J)V
    .locals 3
    .param p1, "selectedDayMills"    # J

    .prologue
    .line 238
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 239
    invoke-static {}, Lcms;->u()J

    move-result-wide p1

    .line 241
    :cond_0
    invoke-direct {p0, p1, p2}, Lapi;->b(J)V

    .line 242
    iget-object v0, p0, Lapi;->a:Laph$b;

    invoke-interface {v0}, Laph$b;->f()V

    .line 243
    invoke-direct {p0}, Lapi;->i()V

    .line 244
    return-void
.end method

.method public final a(JJ)V
    .locals 9
    .param p1, "startTimeMillis"    # J
    .param p3, "endTimeMillis"    # J

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 474
    iget-object v1, p0, Lapi;->a:Laph$b;

    invoke-interface {v1}, Laph$b;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 489
    :goto_0
    return-void

    .line 478
    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "[CalendarActivityPresenter]requestCreateCalendar startTimeMillis="

    aput-object v2, v1, v6

    .line 479
    invoke-static {p1, p2}, Lcog;->j(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string/jumbo v2, ", endTimeMillis="

    aput-object v2, v1, v4

    const/4 v2, 0x3

    invoke-static {p3, p4}, Lcog;->j(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 478
    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 481
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;-><init>()V

    .line 482
    .local v0, "builder":Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    invoke-virtual {v0, v4}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 483
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(J)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 484
    invoke-virtual {v0, p3, p4}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->b(J)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 485
    iget-wide v2, p0, Lapi;->j:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 486
    new-array v1, v7, [Ljava/lang/Long;

    iget-wide v2, p0, Lapi;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->c(Ljava/util/List;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 488
    :cond_1
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v1

    iget-object v2, p0, Lapi;->a:Laph$b;

    invoke-interface {v2}, Laph$b;->b()Landroid/app/Activity;

    move-result-object v2

    .line 6922
    iget-object v3, v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 488
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->b(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)V

    goto :goto_0
.end method

.method public final a(Lckq;)V
    .locals 1
    .param p1, "bean"    # Lckq;

    .prologue
    const/4 v0, 0x0

    .line 248
    if-nez p1, :cond_0

    .line 254
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-virtual {p0, v0, v0}, Lapi;->a(II)V

    .line 252
    invoke-direct {p0, p1}, Lapi;->f(Lckq;)V

    .line 253
    invoke-direct {p0}, Lapi;->i()V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 213
    iget-object v0, p0, Lapi;->r:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lapi;->a:Laph$b;

    invoke-interface {v0}, Laph$b;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lapi;->a:Laph$b;

    invoke-interface {v0}, Laph$b;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lapi;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 216
    :cond_0
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    iget-object v1, p0, Lapi;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcaa;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lapi;->m:Ljava/lang/Runnable;

    .line 218
    iget-object v0, p0, Lapi;->e:Larm;

    invoke-interface {v0}, Larm;->a()V

    .line 220
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v0

    iget-object v1, p0, Lapi;->t:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->b(Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;)V

    .line 221
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v0

    iget-object v1, p0, Lapi;->u:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$c;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->b(Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$c;)V

    .line 222
    return-void
.end method

.method public final b(Lckq;)V
    .locals 1
    .param p1, "bean"    # Lckq;

    .prologue
    const/4 v0, 0x0

    .line 258
    if-nez p1, :cond_0

    .line 264
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-virtual {p0, v0, v0}, Lapi;->a(II)V

    .line 262
    invoke-direct {p0, p1}, Lapi;->f(Lckq;)V

    .line 263
    invoke-direct {p0}, Lapi;->i()V

    goto :goto_0
.end method

.method public final c()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lapi;->b:Ljava/util/Calendar;

    return-object v0
.end method

.method public final c(Lckq;)V
    .locals 1
    .param p1, "bean"    # Lckq;

    .prologue
    .line 268
    if-nez p1, :cond_0

    .line 272
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lapi;->e:Larm;

    invoke-interface {v0, p1}, Larm;->a(Lckq;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 375
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[CalendarActivity]syncMailEvents start"

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 376
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    .line 4584
    iget-object v1, v0, Latf;->a:Latf$b;

    new-instance v2, Latf$30;

    invoke-direct {v2, v0}, Latf$30;-><init>(Latf;)V

    invoke-virtual {v1, v2}, Latf$b;->execute(Ljava/lang/Runnable;)V

    .line 377
    return-void
.end method

.method public final d(Lckq;)V
    .locals 1
    .param p1, "bean"    # Lckq;

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 280
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lapi;->e:Larm;

    invoke-interface {v0, p1}, Larm;->b(Lckq;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 381
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[CalendarActivity]syncMailFolders start"

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 382
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    invoke-virtual {v0}, Latf;->d()V

    .line 383
    return-void
.end method

.method public final e(Lckq;)V
    .locals 1
    .param p1, "bean"    # Lckq;

    .prologue
    .line 292
    if-nez p1, :cond_0

    .line 296
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lapi;->e:Larm;

    invoke-interface {v0, p1}, Larm;->d(Lckq;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 391
    iget-object v0, p0, Lapi;->m:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    iget-object v1, p0, Lapi;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcaa;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 395
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    iget-object v1, p0, Lapi;->m:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcaa;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final g()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 514
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    iget-object v1, p0, Lapi;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcaa;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 515
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    iget-object v1, p0, Lapi;->s:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcaa;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 516
    return-void
.end method

.method h()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 428
    iget v1, p0, Lapi;->k:I

    if-lez v1, :cond_2

    .line 429
    iget v0, p0, Lapi;->k:I

    .line 437
    .local v0, "position":I
    :cond_0
    :goto_0
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v3, "[CalendarActivityPresenter] listViewScrollPosition pos="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 438
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", offset="

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lapi;->l:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 437
    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 440
    if-lez v0, :cond_1

    .line 441
    iget-object v1, p0, Lapi;->a:Laph$b;

    iget v2, p0, Lapi;->l:I

    invoke-interface {v1, v0, v2}, Laph$b;->a(II)V

    .line 443
    :cond_1
    return-void

    .line 431
    .end local v0    # "position":I
    :cond_2
    iget-object v3, p0, Lapi;->b:Ljava/util/Calendar;

    .line 5446
    if-eqz v3, :cond_4

    .line 5450
    iget-object v1, p0, Lapi;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    move v0, v2

    .line 5451
    :goto_1
    if-ge v0, v4, :cond_4

    .line 5452
    iget-object v1, p0, Lapi;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lawv;

    .line 5453
    instance-of v5, v1, Lawu;

    if-eqz v5, :cond_3

    .line 5457
    check-cast v1, Lawu;

    .line 6019
    iget-wide v6, v1, Lawu;->a:J

    .line 5458
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-nez v1, :cond_3

    .line 432
    .restart local v0    # "position":I
    :goto_2
    add-int/lit8 v1, v0, 0x1

    iget-object v3, p0, Lapi;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v1, v3, :cond_0

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5451
    .end local v0    # "position":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5463
    :cond_4
    const/4 v0, -0x1

    goto :goto_2
.end method
