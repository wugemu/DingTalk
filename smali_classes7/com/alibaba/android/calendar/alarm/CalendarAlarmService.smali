.class public Lcom/alibaba/android/calendar/alarm/CalendarAlarmService;
.super Landroid/app/IntentService;
.source "CalendarAlarmService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/alibaba/android/calendar/alarm/CalendarAlarmService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 18
    new-array v4, v9, [Ljava/lang/String;

    const-string/jumbo v5, "[CalendarAlarm] service->onHandleIntent"

    aput-object v5, v4, v8

    invoke-static {v4}, Lavy;->a([Ljava/lang/String;)V

    .line 20
    if-nez p1, :cond_0

    .line 21
    new-array v4, v9, [Ljava/lang/String;

    const-string/jumbo v5, "[CalendarAlarm] service->onHandleIntent, intent is null"

    aput-object v5, v4, v8

    invoke-static {v4}, Lavy;->a([Ljava/lang/String;)V

    .line 38
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "com.alibaba.android.calendar.intent.alarm"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 27
    new-array v4, v10, [Ljava/lang/String;

    const-string/jumbo v5, "[CalendarAlarm] service->onHandleIntent, action not match: "

    aput-object v5, v4, v8

    aput-object v0, v4, v9

    invoke-static {v4}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_1
    const-string/jumbo v4, "intent_key_alert_type"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 32
    .local v1, "alertType":I
    const-string/jumbo v4, "intent_key_biz_id"

    const-wide/16 v6, -0x1

    invoke-virtual {p1, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 34
    .local v2, "bizId":J
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "[CalendarAlarm] service->onHandleIntent, alertType:"

    aput-object v5, v4, v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const-string/jumbo v5, ", bizId:"

    aput-object v5, v4, v10

    const/4 v5, 0x3

    .line 35
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 34
    invoke-static {v4}, Lavy;->a([Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lapd;->a()Lapd;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v2, v3, v5}, Lapd;->a(IJLcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
