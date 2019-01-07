.class public Lcom/alibaba/android/calendar/impl/CalendarInterfaceImpl;
.super Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;
.source "CalendarInterfaceImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 3
    .param p1, "minutes"    # J

    .prologue
    .line 223
    invoke-static {p1, p2}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->fromValue(J)Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->NONE:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;

    if-ne v0, v1, :cond_0

    .line 224
    const/4 v0, 0x0

    .line 226
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->fromValue(J)Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->getDescId()I

    move-result v0

    goto :goto_0
.end method

.method public final a(JJLcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;Lcom/alibaba/wukong/Callback;)V
    .locals 3
    .param p1, "calendarId"    # J
    .param p3, "eventId"    # J
    .param p5, "scheduleCreateModel"    # Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p6, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {}, Latf;->a()Latf;

    move-result-object v1

    .line 12051
    if-nez p5, :cond_0

    .line 12052
    const/4 v0, 0x0

    .line 295
    :goto_0
    invoke-virtual {v1, v0, p6}, Latf;->a(Lasi;Lcom/alibaba/wukong/Callback;)V

    .line 296
    return-void

    .line 12055
    :cond_0
    new-instance v0, Lasi;

    invoke-direct {v0}, Lasi;-><init>()V

    .line 13022
    iput-wide p1, v0, Lasi;->a:J

    .line 13030
    iput-wide p3, v0, Lasi;->b:J

    .line 12058
    invoke-static {p5}, Last;->a(Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;)Last;

    move-result-object v2

    .line 13034
    iput-object v2, v0, Lasi;->c:Last;

    goto :goto_0
.end method

.method public final a(JLcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "calendarId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Latf;->a(JLcom/alibaba/wukong/Callback;)V

    .line 311
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 247
    invoke-static {p1}, Lavr;->a(Landroid/app/Activity;)V

    .line 248
    return-void
.end method

.method public final a(Landroid/app/Activity;J)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # J

    .prologue
    .line 285
    .line 10106
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 10113
    :cond_0
    :goto_0
    return-void

    .line 10110
    :cond_1
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10111
    sget v0, Laow$f;->dt_ding_calendar_share_not_support:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 10112
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[ShareScheduleActivity] isDingNewTab is close."

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 10116
    :cond_2
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/action/sharedcalendar_internal"

    new-instance v2, Lavr$5;

    invoke-direct {v2, p2, p3}, Lavr$5;-><init>(J)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;JJ)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "calendarId"    # J
    .param p4, "date"    # J

    .prologue
    .line 300
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-wide v1, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lavr;->a(Landroid/content/Context;JLjava/lang/String;J)V

    .line 301
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "scheduleCreateModel"    # Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;

    .prologue
    .line 280
    invoke-static {p1, p2}, Lavr;->a(Landroid/app/Activity;Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;)V

    .line 281
    return-void
.end method

.method public final a(Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;Lcom/alibaba/wukong/Callback;)V
    .locals 3
    .param p1, "scheduleCreateModel"    # Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 290
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Long;>;"
    invoke-static {}, Latf;->a()Latf;

    move-result-object v1

    .line 11055
    if-nez p1, :cond_0

    .line 11056
    const/4 v0, 0x0

    .line 290
    :goto_0
    invoke-virtual {v1, v0, p2}, Latf;->a(Lars;Lcom/alibaba/wukong/Callback;)V

    .line 291
    return-void

    .line 11059
    :cond_0
    new-instance v0, Lars;

    invoke-direct {v0}, Lars;-><init>()V

    .line 11060
    invoke-static {p1}, Last;->a(Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;)Last;

    move-result-object v2

    .line 12023
    iput-object v2, v0, Lars;->a:Last;

    .line 11061
    invoke-virtual {p1}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getType()I

    move-result v2

    .line 12027
    iput v2, v0, Lars;->b:I

    .line 11062
    invoke-virtual {p1}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getSource()I

    move-result v2

    .line 12031
    iput v2, v0, Lars;->c:I

    .line 11063
    invoke-virtual {p1}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getExtension()Ljava/util/HashMap;

    move-result-object v2

    .line 12035
    iput-object v2, v0, Lars;->d:Ljava/util/Map;

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 335
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Boolean;>;"
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    .line 14565
    iget-object v1, v0, Latf;->b:Latf$a;

    new-instance v2, Latf$28;

    invoke-direct {v2, v0, p1}, Latf$28;-><init>(Latf;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v1, v2}, Latf$a;->execute(Ljava/lang/Runnable;)V

    .line 336
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 93
    invoke-static {}, Lavd;->a()Lavd;

    invoke-static {}, Lavd;->b()V

    .line 94
    return-void
.end method

.method public final b(JLcom/alibaba/wukong/Callback;)V
    .locals 3
    .param p1, "userId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Boolean;>;"
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    .line 13488
    iget-object v1, v0, Latf;->b:Latf$a;

    new-instance v2, Latf$20;

    invoke-direct {v2, v0, p1, p2, p3}, Latf$20;-><init>(Latf;JLcom/alibaba/wukong/Callback;)V

    invoke-virtual {v1, v2}, Latf$a;->execute(Ljava/lang/Runnable;)V

    .line 316
    return-void
.end method

.method public final c()Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;
    .locals 1

    .prologue
    .line 238
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;-><init>()V

    .line 241
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;-><init>()V

    goto :goto_0
.end method

.method public final d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 252
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[CalendarImpl] onEnterForeground"

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 253
    invoke-static {}, Laul;->a()Laul;

    move-result-object v0

    .line 9045
    iput-boolean v3, v0, Laul;->a:Z

    .line 254
    invoke-static {}, Lcom/alibaba/android/calendar/service/ListenSystemCalendarService;->a()V

    .line 255
    return-void
.end method

.method public final e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 259
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[CalendarImpl] onEnterBackground"

    aput-object v1, v0, v2

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 260
    invoke-static {}, Laul;->a()Laul;

    move-result-object v0

    .line 10045
    iput-boolean v2, v0, Laul;->a:Z

    .line 261
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 265
    invoke-static {}, Lapd;->a()Lapd;

    move-result-object v0

    invoke-virtual {v0}, Lapd;->b()V

    .line 266
    return-void
.end method

.method public final g()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 270
    invoke-static {}, Lapa;->a()Lapa;

    .line 10051
    invoke-static {}, Lapa;->b()Landroid/content/Intent;

    move-result-object v0

    .line 10052
    invoke-static {v0}, Lapa;->a(Landroid/content/Intent;)V

    .line 10053
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[CalendarAlarm] stopSchedule"

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public final h()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 320
    invoke-super {p0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->h()V

    .line 322
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "[CalendarInterface]onUserLogout............."

    aput-object v1, v0, v3

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 323
    invoke-static {}, Larl;->a()Larl;

    move-result-object v0

    .line 13623
    invoke-static {}, Latf;->a()Latf;

    move-result-object v1

    new-instance v2, Larl$9;

    invoke-direct {v2, v0}, Larl$9;-><init>(Larl;)V

    invoke-virtual {v1, v2}, Latf;->b(Ljava/lang/Runnable;)V

    .line 324
    invoke-static {}, Lark;->a()Lark;

    move-result-object v0

    .line 14217
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "[FolderExtraManager]clearCache"

    aput-object v2, v1, v3

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 14218
    iget-object v0, v0, Lark;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 325
    invoke-static {}, Lapy;->a()Lapy;

    move-result-object v0

    invoke-virtual {v0}, Lapy;->b()V

    .line 326
    return-void
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 330
    invoke-static {}, Lavi;->a()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 89
    return-void
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 340
    invoke-static {}, Lavq;->p()Z

    move-result v0

    return v0
.end method

.method public onApplicationCreate()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 65
    invoke-super {p0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->onApplicationCreate()V

    .line 1048
    sget-object v2, Lcjk$a;->a:Lcjk;

    .line 66
    const-string/jumbo v3, "DataSourceCalendarV2"

    const-class v4, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    invoke-virtual {v2, v3, v4}, Lcjk;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 2048
    sget-object v2, Lcjk$a;->a:Lcjk;

    .line 67
    const-string/jumbo v3, "DataSourceHolidayArrangement"

    const-class v4, Laug;

    invoke-virtual {v2, v3, v4}, Lcjk;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 3048
    sget-object v2, Lcjk$a;->a:Lcjk;

    .line 68
    const-string/jumbo v3, "DataSourceVerification"

    const-class v4, Laui;

    invoke-virtual {v2, v3, v4}, Lcjk;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 4048
    sget-object v2, Lcjk$a;->a:Lcjk;

    .line 69
    const-string/jumbo v3, "DataSourceFolder"

    const-class v4, Lauc;

    invoke-virtual {v2, v3, v4}, Lcjk;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 5048
    sget-object v2, Lcjk$a;->a:Lcjk;

    .line 70
    const-string/jumbo v3, "DataSourceFolderExtra"

    const-class v4, Latx;

    invoke-virtual {v2, v3, v4}, Lcjk;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 6048
    sget-object v2, Lcjk$a;->a:Lcjk;

    .line 71
    const-string/jumbo v3, "DataSourceFolderSelectExtra"

    const-class v4, Laue;

    invoke-virtual {v2, v3, v4}, Lcjk;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 7048
    sget-object v2, Lcjk$a;->a:Lcjk;

    .line 72
    const-string/jumbo v3, "DataSourceFolderGroup"

    const-class v4, Laub;

    invoke-virtual {v2, v3, v4}, Lcjk;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 8048
    sget-object v2, Lcjk$a;->a:Lcjk;

    .line 73
    const-string/jumbo v3, "DataSourceFolderGroupExtra"

    const-class v4, Laua;

    invoke-virtual {v2, v3, v4}, Lcjk;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 75
    invoke-static {}, Latf;->a()Latf;

    move-result-object v4

    .line 8082
    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v3, "[CalendarDataProvider]init"

    aput-object v3, v2, v0

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 8083
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/auth/AuthService;->isLogin()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8084
    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "[CalendarDataProvider]init isLogin=false"

    aput-object v2, v1, v0

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 76
    :goto_0
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    .line 8547
    iget-object v1, v0, Latf;->a:Latf$b;

    new-instance v2, Latf$26;

    invoke-direct {v2, v0}, Latf$26;-><init>(Latf;)V

    invoke-virtual {v1, v2}, Latf$b;->execute(Ljava/lang/Runnable;)V

    .line 79
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/calendar/impl/CalendarInterfaceImpl$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/impl/CalendarInterfaceImpl$1;-><init>(Lcom/alibaba/android/calendar/impl/CalendarInterfaceImpl;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    return-void

    .line 8129
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {}, Latf;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    .line 8210
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    const-string/jumbo v3, "calendar_function"

    const-string/jumbo v6, "ding_calendar_clear_calendar_db_version_android"

    invoke-virtual {v2, v3, v6}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8213
    invoke-static {v2, v0}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v2

    .line 8214
    const-string/jumbo v3, "pref_key_current_db_version"

    invoke-static {v3, v0}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v6

    .line 8215
    if-le v2, v6, :cond_6

    move v3, v1

    .line 8216
    :goto_1
    if-eqz v3, :cond_1

    .line 8217
    const-string/jumbo v7, "pref_key_current_db_version"

    invoke-static {v7, v2}, Lcpk;->b(Ljava/lang/String;I)V

    .line 8218
    new-array v7, v12, [Ljava/lang/String;

    const-string/jumbo v8, "[CalendarCloudSettingUtil]isClearCalendarDB version="

    aput-object v8, v7, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    const-string/jumbo v2, ", oldVersion="

    aput-object v2, v7, v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v11

    invoke-static {v7}, Lavy;->a([Ljava/lang/String;)V

    .line 8131
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {}, Latf;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    .line 8132
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->j()Z

    move-result v7

    .line 8133
    if-eq v6, v7, :cond_7

    move v2, v1

    .line 8134
    :goto_2
    if-eqz v2, :cond_2

    .line 8135
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    invoke-static {}, Latf;->c()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 8138
    :cond_2
    const/16 v8, 0xa

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "[CalendarDataProvider]shouldClearCalendarDB isClearCalendarDB="

    aput-object v9, v8, v0

    .line 8139
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    const-string/jumbo v9, ", isCloudSettingClearCalendarDB="

    aput-object v9, v8, v10

    .line 8140
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    const-string/jumbo v9, ", (isDingTabSwitchOpen="

    aput-object v9, v8, v12

    const/4 v9, 0x5

    .line 8141
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    const/4 v6, 0x6

    const-string/jumbo v9, ",isCurrentDingTabSwitchOpen="

    aput-object v9, v8, v6

    const/4 v6, 0x7

    .line 8142
    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v6

    const/16 v6, 0x8

    const-string/jumbo v7, ")isDingTabSwitchChanged="

    aput-object v7, v8, v6

    const/16 v6, 0x9

    .line 8143
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v6

    .line 8138
    invoke-static {v8}, Lavy;->a([Ljava/lang/String;)V

    .line 8144
    if-nez v5, :cond_3

    if-nez v3, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    .line 8089
    :cond_4
    if-eqz v0, :cond_5

    .line 8090
    iget-object v0, v4, Latf;->a:Latf$b;

    new-instance v1, Latf$1;

    invoke-direct {v1, v4}, Latf$1;-><init>(Latf;)V

    invoke-virtual {v0, v1}, Latf$b;->execute(Ljava/lang/Runnable;)V

    .line 8452
    :cond_5
    iget-object v0, v4, Latf;->b:Latf$a;

    new-instance v1, Latf$16;

    invoke-direct {v1, v4}, Latf$16;-><init>(Latf;)V

    invoke-virtual {v0, v1}, Latf$a;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_6
    move v3, v0

    .line 8215
    goto/16 :goto_1

    :cond_7
    move v2, v0

    .line 8133
    goto :goto_2
.end method
