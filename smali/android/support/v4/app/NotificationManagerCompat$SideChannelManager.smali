.class Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SideChannelManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/HandlerThread;

.field private final c:Landroid/os/Handler;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->d:Ljava/util/Map;

    .line 314
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->e:Ljava/util/Set;

    .line 317
    iput-object p1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->a:Landroid/content/Context;

    .line 318
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "NotificationManagerCompat"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->b:Landroid/os/HandlerThread;

    .line 319
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 320
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->c:Landroid/os/Handler;

    .line 321
    return-void
.end method

.method private a(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;)V
    .locals 1
    .param p1, "record"    # Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;

    .prologue
    .line 475
    iget-boolean v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->b:Z

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 477
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->b:Z

    .line 479
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->c:Lcu;

    .line 480
    return-void
.end method

.method private b(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;)V
    .locals 6
    .param p1, "record"    # Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;

    .prologue
    const/4 v4, 0x3

    .line 488
    iget-object v2, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->c:Landroid/os/Handler;

    iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->a:Landroid/content/ComponentName;

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    :goto_0
    return-void

    .line 491
    :cond_0
    iget v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->e:I

    .line 492
    iget v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->e:I

    const/4 v3, 0x6

    if-le v2, v3, :cond_1

    .line 493
    const-string/jumbo v2, "NotifManCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Giving up on delivering "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->d:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " tasks to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->a:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " retries"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->d:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    goto :goto_0

    .line 498
    :cond_1
    const/4 v2, 0x1

    iget v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->e:I

    add-int/lit8 v3, v3, -0x1

    shl-int/2addr v2, v3

    mul-int/lit16 v0, v2, 0x3e8

    .line 499
    .local v0, "delayMs":I
    const-string/jumbo v2, "NotifManCompat"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Scheduling retry for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->c:Landroid/os/Handler;

    iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->a:Landroid/content/ComponentName;

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 503
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->c:Landroid/os/Handler;

    int-to-long v4, v0

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method private c(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;)V
    .locals 6
    .param p1, "record"    # Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;

    .prologue
    const/4 v5, 0x3

    .line 511
    const-string/jumbo v2, "NotifManCompat"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Processing component "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->a:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->d:Ljava/util/LinkedList;

    .line 513
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " queued tasks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    :cond_0
    iget-object v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->d:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 549
    :cond_1
    :goto_0
    return-void

    .line 2456
    :cond_2
    iget-boolean v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->b:Z

    if-eqz v2, :cond_4

    .line 2457
    const/4 v2, 0x1

    .line 518
    :goto_1
    if-eqz v2, :cond_3

    iget-object v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->c:Lcu;

    if-nez v2, :cond_6

    .line 520
    :cond_3
    invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->b(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;)V

    goto :goto_0

    .line 2459
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->a:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 2460
    iget-object v3, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->a:Landroid/content/Context;

    const/16 v4, 0x21

    invoke-virtual {v3, v2, p0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->b:Z

    .line 2462
    iget-boolean v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->b:Z

    if-eqz v2, :cond_5

    .line 2463
    const/4 v2, 0x0

    iput v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->e:I

    .line 2468
    :goto_2
    iget-boolean v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->b:Z

    goto :goto_1

    .line 2465
    :cond_5
    const-string/jumbo v2, "NotifManCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to bind to listener "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->a:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    iget-object v2, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->a:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_2

    .line 525
    :cond_6
    :goto_3
    iget-object v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->d:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/NotificationManagerCompat$b;

    .line 526
    .local v1, "task":Landroid/support/v4/app/NotificationManagerCompat$b;
    if-eqz v1, :cond_8

    .line 530
    :try_start_0
    const-string/jumbo v2, "NotifManCompat"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Sending task "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 534
    :cond_7
    iget-object v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->d:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 536
    :catch_0
    move-exception v2

    const-string/jumbo v2, "NotifManCompat"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Remote service has died: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->a:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 545
    :cond_8
    :goto_4
    iget-object v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->d:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 547
    invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->b(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;)V

    goto/16 :goto_0

    .line 540
    :catch_1
    move-exception v0

    .line 541
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NotifManCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "RemoteException communicating with "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->a:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 333
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    move v1, v2

    .line 348
    :goto_0
    return v1

    .line 335
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/NotificationManagerCompat$b;

    .line 1405
    iget-object v4, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->a:Landroid/content/Context;

    invoke-static {v4}, Landroid/support/v4/app/NotificationManagerCompat;->b(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v4

    .line 1406
    iget-object v5, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->e:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1410
    iput-object v4, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->e:Ljava/util/Set;

    .line 1411
    iget-object v5, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

    .line 1412
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 1411
    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1413
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1414
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1415
    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1418
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1421
    const-string/jumbo v2, "NotifManCompat"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Permission present on component "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", not adding listener record."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1425
    :cond_1
    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1428
    :cond_2
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1429
    iget-object v6, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->d:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1430
    const-string/jumbo v6, "NotifManCompat"

    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1431
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Adding listener record for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1433
    :cond_4
    iget-object v6, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->d:Ljava/util/Map;

    new-instance v7, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;

    invoke-direct {v7, v2}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1437
    :cond_5
    iget-object v2, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->d:Ljava/util/Map;

    .line 1438
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1439
    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1440
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1441
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1442
    const-string/jumbo v6, "NotifManCompat"

    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1443
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Removing listener record for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1445
    :cond_7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;

    invoke-direct {p0, v2}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->a(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;)V

    .line 1446
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 1353
    :cond_8
    iget-object v2, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;

    .line 1354
    iget-object v5, v2, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->d:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1355
    invoke-direct {p0, v2}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->c(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;)V

    goto :goto_4

    :cond_9
    move v1, v3

    .line 336
    goto/16 :goto_0

    .line 338
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/NotificationManagerCompat$a;

    .line 339
    .local v0, "event":Landroid/support/v4/app/NotificationManagerCompat$a;
    iget-object v1, v0, Landroid/support/v4/app/NotificationManagerCompat$a;->a:Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/support/v4/app/NotificationManagerCompat$a;->b:Landroid/os/IBinder;

    .line 2360
    iget-object v5, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->d:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;

    .line 2361
    if-eqz v1, :cond_a

    .line 2362
    invoke-static {v4}, Lcu$a;->a(Landroid/os/IBinder;)Lcu;

    move-result-object v4

    iput-object v4, v1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->c:Lcu;

    .line 2363
    iput v2, v1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->e:I

    .line 2364
    invoke-direct {p0, v1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->c(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;)V

    :cond_a
    move v1, v3

    .line 340
    goto/16 :goto_0

    .line 342
    .end local v0    # "event":Landroid/support/v4/app/NotificationManagerCompat$a;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    .line 2369
    iget-object v2, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;

    .line 2370
    if-eqz v1, :cond_b

    .line 2371
    invoke-direct {p0, v1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->a(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;)V

    :cond_b
    move v1, v3

    .line 343
    goto/16 :goto_0

    .line 345
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    .line 2376
    iget-object v2, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;

    .line 2377
    if-eqz v1, :cond_c

    .line 2378
    invoke-direct {p0, v1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->c(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;)V

    :cond_c
    move v1, v3

    .line 346
    goto/16 :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 384
    const-string/jumbo v0, "NotifManCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Connected to service "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 387
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    new-instance v2, Landroid/support/v4/app/NotificationManagerCompat$a;

    invoke-direct {v2, p1, p2}, Landroid/support/v4/app/NotificationManagerCompat$a;-><init>(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 390
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 394
    const-string/jumbo v0, "NotifManCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Disconnected from service "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 397
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 398
    return-void
.end method
