.class public Lcom/alibaba/alimei/sdk/calendar/helper/CalendarBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CalendarBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 30
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 31
    :cond_0
    const-string/jumbo v0, "alarm"

    const-string/jumbo v1, "[CalendarBroadcastReceiver]onReceive, context or intent is null"

    invoke-static {v0, v1}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarBroadcastReceiver;->setResultCode(I)V

    .line 47
    :goto_0
    return-void

    .line 36
    :cond_1
    const-string/jumbo v0, "com.alibaba.alimei.calendar.intent.alarm"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 37
    const-string/jumbo v0, "alarm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[CalendarBroadcastReceiver]onReceive, action:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarBroadcastReceiver;->setResultCode(I)V

    goto :goto_0

    .line 42
    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarBroadcastReceiver;->setResultCode(I)V

    .line 44
    const-class v0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarIntentService;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 46
    const-string/jumbo v0, "alarm"

    const-string/jumbo v1, "[CalendarBroadcastReceiver]onReceive, start service"

    invoke-static {v0, v1}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
