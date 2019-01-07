.class public Lcom/alibaba/alimei/calendar/alerts/AlertReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlertReceiver.java"


# static fields
.field static final a:Ljava/lang/Object;

.field static b:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/calendar/alerts/AlertReceiver;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Service;I)V
    .locals 2
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "startId"    # I

    .prologue
    .line 77
    sget-object v1, Lcom/alibaba/alimei/calendar/alerts/AlertReceiver;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_0
    sget-object v0, Lcom/alibaba/alimei/calendar/alerts/AlertReceiver;->b:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/alibaba/alimei/calendar/alerts/AlertReceiver;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 83
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 47
    const-string/jumbo v1, "alibaba.alimei.action.event.reminder"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 49
    .local v0, "newIntent":Landroid/content/Intent;
    const-class v1, Lcom/alibaba/alimei/calendar/alerts/AlertService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 50
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 51
    const-string/jumbo v1, "action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1061
    sget-object v2, Lcom/alibaba/alimei/calendar/alerts/AlertReceiver;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 1062
    :try_start_0
    sget-object v1, Lcom/alibaba/alimei/calendar/alerts/AlertReceiver;->b:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 1063
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1064
    const/4 v3, 0x1

    const-string/jumbo v4, "StartingAlertService"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 1065
    sput-object v1, Lcom/alibaba/alimei/calendar/alerts/AlertReceiver;->b:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1067
    :cond_0
    sget-object v1, Lcom/alibaba/alimei/calendar/alerts/AlertReceiver;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1068
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1069
    monitor-exit v2

    .end local v0    # "newIntent":Landroid/content/Intent;
    :cond_1
    return-void

    .restart local v0    # "newIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
