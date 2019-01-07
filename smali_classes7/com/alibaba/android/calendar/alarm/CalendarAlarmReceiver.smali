.class public Lcom/alibaba/android/calendar/alarm/CalendarAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CalendarAlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "[CalendarAlarm] receiver->onReceived"

    aput-object v2, v1, v3

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 18
    if-nez p1, :cond_0

    .line 19
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "[CalendarAlarm] receiver->onReceived, context is null"

    aput-object v2, v1, v3

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 42
    :goto_0
    return-void

    .line 23
    :cond_0
    if-nez p2, :cond_1

    .line 24
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "[CalendarAlarm] receiver->onReceived, intent is null"

    aput-object v2, v1, v3

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_1
    const-string/jumbo v1, "com.alibaba.android.calendar.intent.alarm"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 29
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "[CalendarAlarm] receiver->onReceived, action not matched:"

    aput-object v2, v1, v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, v3}, Lcom/alibaba/android/calendar/alarm/CalendarAlarmReceiver;->setResultCode(I)V

    goto :goto_0

    .line 34
    :cond_2
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/calendar/alarm/CalendarAlarmReceiver;->setResultCode(I)V

    .line 36
    const-class v1, Lcom/alibaba/android/calendar/alarm/CalendarAlarmService;

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 38
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Throwable;
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "[CalendarAlarm] receiver->onReceived, startService failed, error="

    aput-object v2, v1, v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0
.end method
