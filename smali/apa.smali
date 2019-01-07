.class public Lapa;
.super Ljava/lang/Object;
.source "CalendarAlarmManager.java"


# static fields
.field private static volatile a:Lapa;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static a()Lapa;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lapa;->a:Lapa;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lapa;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lapa;->a:Lapa;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lapa;

    invoke-direct {v0}, Lapa;-><init>()V

    sput-object v0, Lapa;->a:Lapa;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lapa;->a:Lapa;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Intent;)V
    .locals 6
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 82
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "[CalendarAlarm] cancel"

    aput-object v4, v3, v5

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 85
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x20000000

    .line 84
    invoke-static {v3, v4, p0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 89
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 90
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    const-string/jumbo v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 91
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v2

    .line 96
    .local v2, "tr":Ljava/lang/Throwable;
    const-string/jumbo v3, "cancel alarm failed"

    invoke-static {v3, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.alibaba.android.calendar.intent.alarm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    return-object v0
.end method


# virtual methods
.method public final a(JIJ)V
    .locals 9
    .param p1, "delayTime"    # J
    .param p3, "alertType"    # I
    .param p4, "bizId"    # J

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 38
    invoke-static {}, Lapa;->b()Landroid/content/Intent;

    move-result-object v0

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0}, Lapa;->a(Landroid/content/Intent;)V

    .line 40
    const-string/jumbo v1, "intent_key_alert_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    const-string/jumbo v1, "intent_key_biz_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1065
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 1064
    invoke-static {v1, v6, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1069
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, p1

    .line 1070
    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v3, "[CalendarAlarm] set, triggerAtTime:"

    aput-object v3, v1, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 1072
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v3, "alarm"

    invoke-virtual {v1, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 1073
    if-eqz v1, :cond_0

    .line 1074
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_0
    :goto_0
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "[CalendarAlarm] startSchedule, delayTime:"

    aput-object v2, v1, v6

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string/jumbo v2, ", alertType:"

    aput-object v2, v1, v7

    const/4 v2, 0x3

    .line 44
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ", bizId:"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 45
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 43
    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 46
    return-void

    .line 1076
    :catch_0
    move-exception v1

    .line 1077
    const-string/jumbo v2, "set alarm failed"

    invoke-static {v2, v1}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
