.class public Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CalendarReceiver.java"


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private b:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 39
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver;->b:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver;Z)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    .line 1084
    invoke-static {}, Lagj;->a()Lagj;

    move-result-object v0

    invoke-virtual {v0}, Lagj;->b()Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->a(ZZ)V

    .line 36
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
    const/4 v3, 0x1

    .line 44
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver;->b:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 45
    const-string/jumbo v2, "power"

    .line 46
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 47
    .local v1, "pm":Landroid/os/PowerManager;
    const-string/jumbo v2, "CalendarReceiver_Provider"

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver;->b:Landroid/os/PowerManager$WakeLock;

    .line 49
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 51
    .end local v1    # "pm":Landroid/os/PowerManager;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 59
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver$1;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver$1;-><init>(Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 71
    return-void
.end method
