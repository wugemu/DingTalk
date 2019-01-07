.class public Lcom/alibaba/android/calendar/service/ListenSystemCalendarService;
.super Landroid/app/Service;
.source "ListenSystemCalendarService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/calendar/service/ListenSystemCalendarService$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/calendar/service/ListenSystemCalendarService$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 85
    return-void
.end method

.method public static a()V
    .locals 5

    .prologue
    .line 46
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const-class v3, Lcom/alibaba/android/calendar/service/ListenSystemCalendarService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[ListenSystemCalendarService]start failed:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 38
    .line 1072
    iget-object v0, p0, Lcom/alibaba/android/calendar/service/ListenSystemCalendarService;->a:Lcom/alibaba/android/calendar/service/ListenSystemCalendarService$a;

    if-eqz v0, :cond_1

    .line 1073
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/service/ListenSystemCalendarService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1074
    if-eqz v0, :cond_0

    .line 1076
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/calendar/service/ListenSystemCalendarService;->a:Lcom/alibaba/android/calendar/service/ListenSystemCalendarService$a;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1081
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/calendar/service/ListenSystemCalendarService;->a:Lcom/alibaba/android/calendar/service/ListenSystemCalendarService$a;

    .line 39
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 40
    return-void

    .line 1077
    :catch_0
    move-exception v0

    .line 1078
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[ListenSystemCalendarService]unregisterPhoneObserver failed:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 32
    .line 1054
    invoke-static {}, Lawi;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/alibaba/android/calendar/service/ListenSystemCalendarService;->a:Lcom/alibaba/android/calendar/service/ListenSystemCalendarService$a;

    if-nez v0, :cond_0

    .line 1058
    new-instance v0, Lcom/alibaba/android/calendar/service/ListenSystemCalendarService$a;

    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    invoke-direct {v0, p0, v1, v5}, Lcom/alibaba/android/calendar/service/ListenSystemCalendarService$a;-><init>(Lcom/alibaba/android/calendar/service/ListenSystemCalendarService;Landroid/os/Handler;B)V

    iput-object v0, p0, Lcom/alibaba/android/calendar/service/ListenSystemCalendarService;->a:Lcom/alibaba/android/calendar/service/ListenSystemCalendarService$a;

    .line 1059
    const-string/jumbo v0, "pref_key_should_reload_system_calendar"

    invoke-static {v0, v4}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1060
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/service/ListenSystemCalendarService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1061
    if-eqz v0, :cond_0

    .line 1063
    :try_start_0
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/android/calendar/service/ListenSystemCalendarService;->a:Lcom/alibaba/android/calendar/service/ListenSystemCalendarService$a;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :cond_0
    :goto_0
    const/4 v0, 0x3

    return v0

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "[ListenSystemCalendarService]registerPhoneObserver failed:"

    aput-object v2, v1, v5

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0
.end method
