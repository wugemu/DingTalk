.class final Lagj$1;
.super Landroid/content/BroadcastReceiver;
.source "CalendarDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lagj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lagj;


# direct methods
.method constructor <init>(Lagj;)V
    .locals 0
    .param p1, "this$0"    # Lagj;

    .prologue
    .line 150
    iput-object p1, p0, Lagj$1;->a:Lagj;

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
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lagj;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CalendarDhhelperonReceive() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lzb;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lagj$1;->a:Lagj;

    iget-object v1, v1, Lagj;->f:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;

    .line 160
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->a(ZZ)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lagj$1;->a:Lagj;

    iget-object v1, v1, Lagj;->f:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;

    .line 163
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->a(ZZ)V

    goto :goto_0
.end method
