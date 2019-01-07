.class public Lcom/alibaba/alimei/sdk/calendar/helper/CalendarIntentService;
.super Landroid/app/IntentService;
.source "CalendarIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "CalendarProviderIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/sdk/calendar/helper/CalendarIntentService;ZLjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/calendar/helper/CalendarIntentService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarIntentService;->a(ZLjava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method

.method private a(ZLjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 6
    .param p1, "removeAlarms"    # Z
    .param p2, "maxCount"    # Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 56
    const-string/jumbo v0, "alarm"

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "[CalendarIntentService]scheduleUtilInitialized, maxCount:"

    aput-object v2, v1, v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    if-gtz v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-static {}, Lxn;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1073
    invoke-static {}, Lagj;->a()Lagj;

    move-result-object v0

    invoke-virtual {v0}, Lagj;->b()Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;

    move-result-object v0

    .line 1074
    if-eqz v0, :cond_0

    .line 1078
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->c()V

    .line 1080
    const-string/jumbo v1, "alarm"

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "[CalendarIntentService]schedule, removeAlarms:"

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->b(Z)V

    .line 1083
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->d()V

    goto :goto_0

    .line 64
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarIntentService$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarIntentService$1;-><init>(Lcom/alibaba/alimei/sdk/calendar/helper/CalendarIntentService;ZLjava/util/concurrent/atomic/AtomicInteger;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 39
    const-string/jumbo v2, "alarm"

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "[CalendarIntentService]Received Intent: "

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    if-nez p1, :cond_0

    .line 53
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "com.alibaba.alimei.calendar.intent.alarm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 47
    const-string/jumbo v2, "alarm"

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "[CalendarIntentService]Invalid Intent action: "

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v3}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_1
    const-string/jumbo v2, "removeAlarms"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 52
    .local v1, "removeAlarms":Z
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-direct {p0, v1, v2}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarIntentService;->a(ZLjava/util/concurrent/atomic/AtomicInteger;)V

    goto :goto_0
.end method
