.class final Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver$1;
.super Ljava/lang/Object;
.source "CalendarReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver$1;->b:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver$1;->a:Ljava/lang/String;

    const-string/jumbo v1, "alibaba.alimei.action.event.reminder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver$1;->b:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver;->a(Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver;Z)V

    .line 68
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver$1;->b:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver;

    invoke-static {v0}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver;->a(Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 69
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver$1;->a:Ljava/lang/String;

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver$1;->b:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver;->a(Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver;Z)V

    goto :goto_0
.end method
