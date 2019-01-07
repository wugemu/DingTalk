.class final Lapi$3;
.super Landroid/content/BroadcastReceiver;
.source "CalendarActivityPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapi;


# direct methods
.method constructor <init>(Lapi;)V
    .locals 0
    .param p1, "this$0"    # Lapi;

    .prologue
    .line 343
    iput-object p1, p0, Lapi$3;->a:Lapi;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 346
    if-nez p2, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "ding create event: receiver_action:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 350
    const-string/jumbo v2, "com.workapp.calendar.reload.instances"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 351
    iget-object v2, p0, Lapi$3;->a:Lapi;

    iget-object v3, p0, Lapi$3;->a:Lapi;

    .line 1051
    iget-object v3, v3, Lapi;->b:Ljava/util/Calendar;

    .line 351
    invoke-static {v3}, Lckq;->a(Ljava/util/Calendar;)Lckq;

    move-result-object v3

    invoke-virtual {v2, v3}, Lapi;->e(Lckq;)V

    goto :goto_0

    .line 352
    :cond_2
    const-string/jumbo v2, "action_reload_mail_event"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 353
    iget-object v2, p0, Lapi$3;->a:Lapi;

    iget-object v3, p0, Lapi$3;->a:Lapi;

    .line 2051
    iget-object v3, v3, Lapi;->b:Ljava/util/Calendar;

    .line 353
    invoke-static {v3}, Lckq;->a(Ljava/util/Calendar;)Lckq;

    move-result-object v3

    .line 2284
    if-eqz v3, :cond_0

    .line 2287
    iget-object v2, v2, Lapi;->e:Larm;

    invoke-interface {v2, v3}, Larm;->c(Lckq;)V

    goto :goto_0

    .line 354
    :cond_3
    const-string/jumbo v2, "com.workapp.ding.reload.system.events"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 355
    iget-object v2, p0, Lapi$3;->a:Lapi;

    iget-object v3, p0, Lapi$3;->a:Lapi;

    .line 3051
    iget-object v3, v3, Lapi;->b:Ljava/util/Calendar;

    .line 355
    invoke-static {v3}, Lckq;->a(Ljava/util/Calendar;)Lckq;

    move-result-object v3

    invoke-virtual {v2, v3}, Lapi;->d(Lckq;)V

    goto :goto_0

    .line 356
    :cond_4
    const-string/jumbo v2, "action_calendar_change_day"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    const-string/jumbo v2, "key_alendar_change_day_millis"

    const-wide/16 v4, -0x1

    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 358
    .local v0, "millis":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 359
    iget-object v2, p0, Lapi$3;->a:Lapi;

    invoke-virtual {v2, v0, v1}, Lapi;->a(J)V

    goto/16 :goto_0
.end method
