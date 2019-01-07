.class public Lcom/alibaba/alimei/framework/AlimeiService;
.super Landroid/app/Service;
.source "AlimeiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/framework/AlimeiService$a;,
        Lcom/alibaba/alimei/framework/AlimeiService$b;
    }
.end annotation


# static fields
.field static a:Lcom/alibaba/alimei/framework/AlimeiService;

.field private static b:J

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lxw;",
            ">;",
            "Lcom/alibaba/alimei/framework/AlimeiService$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lxw;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lxw;",
            ">;",
            "Lxw;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lyq;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lxw;

.field private i:Landroid/app/PendingIntent;

.field private j:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/alibaba/alimei/framework/AlimeiService;->b:J

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/framework/AlimeiService;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 90
    iput-object v1, p0, Lcom/alibaba/alimei/framework/AlimeiService;->d:Ljava/util/HashMap;

    .line 382
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/framework/AlimeiService;->f:Ljava/util/HashMap;

    .line 383
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/framework/AlimeiService;->g:Ljava/util/HashMap;

    .line 402
    new-instance v0, Lcom/alibaba/alimei/framework/AlimeiService$4;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/framework/AlimeiService$4;-><init>(Lcom/alibaba/alimei/framework/AlimeiService;)V

    iput-object v0, p0, Lcom/alibaba/alimei/framework/AlimeiService;->h:Lxw;

    .line 518
    iput-object v1, p0, Lcom/alibaba/alimei/framework/AlimeiService;->i:Landroid/app/PendingIntent;

    .line 568
    new-instance v0, Lcom/alibaba/alimei/framework/AlimeiService$5;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/framework/AlimeiService$5;-><init>(Lcom/alibaba/alimei/framework/AlimeiService;)V

    iput-object v0, p0, Lcom/alibaba/alimei/framework/AlimeiService;->j:Landroid/content/BroadcastReceiver;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/framework/AlimeiService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/framework/AlimeiService;
    .param p1, "x1"    # J

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/framework/AlimeiService;->updateCheckoutWatchAlarm(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/alimei/framework/AlimeiService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/framework/AlimeiService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/AlimeiService;->hasTaskInExecuting(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/alibaba/alimei/framework/AlimeiService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/framework/AlimeiService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/alimei/framework/AlimeiService;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/alimei/framework/AlimeiService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/framework/AlimeiService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/alimei/framework/AlimeiService;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/alimei/framework/AlimeiService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/framework/AlimeiService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/AlimeiService;->removeExecuteTaskByCommandKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/alimei/framework/AlimeiService;ILjava/lang/String;Lyr;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/framework/AlimeiService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lyr;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/framework/AlimeiService;->handleAutoTryTask(ILjava/lang/String;Lyr;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/alimei/framework/AlimeiService;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/framework/AlimeiService;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/AlimeiService;->startExecuteAutoTryTask()V

    return-void
.end method

.method private cancelCheckoutWatchAlarm()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 545
    iget-object v1, p0, Lcom/alibaba/alimei/framework/AlimeiService;->i:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 546
    const-string/jumbo v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/framework/AlimeiService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 547
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/alibaba/alimei/framework/AlimeiService;->i:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 549
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    :cond_0
    return-void
.end method

.method public static cancelCommandByBizUUID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bizUUID"    # Ljava/lang/String;

    .prologue
    .line 148
    if-nez p0, :cond_0

    .line 150
    const-string/jumbo v1, "AlimeiService cannot cancel a command by a null context"

    invoke-static {v1}, Lyx;->a(Ljava/lang/String;)I

    .line 164
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    const-string/jumbo v1, "AlimeiService cannot cancel a command by an empty command bizUUID"

    invoke-static {v1}, Lyx;->a(Ljava/lang/String;)I

    goto :goto_0

    .line 159
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/alimei/framework/AlimeiService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/alibaba/alimei/framework/AlimeiService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 161
    const-string/jumbo v1, "com.alibaba.alimei.ACTION_CANCEL_TASK_COMMAND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string/jumbo v1, "key_taskcmmd_uuid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private getServiceThread()Laie;
    .locals 1

    .prologue
    .line 321
    sget-object v0, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->NORMAL:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    invoke-static {v0}, Laif;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Laie;

    move-result-object v0

    return-object v0
.end method

.method private handleAutoTryTask(ILjava/lang/String;Lyr;)V
    .locals 1
    .param p1, "stage"    # I
    .param p2, "cmmdKey"    # Ljava/lang/String;
    .param p3, "autoTryTask"    # Lyr;

    .prologue
    .line 556
    packed-switch p1, :pswitch_data_0

    .line 566
    :goto_0
    return-void

    .line 558
    :pswitch_0
    const/4 v0, 0x1

    invoke-static {v0, p2, p3}, Lcom/alibaba/alimei/framework/db/AutoTryTaskDatasource;->handleAutoTryTaskStatus(ZLjava/lang/String;Lyr;)V

    goto :goto_0

    .line 562
    :pswitch_1
    const/4 v0, 0x0

    invoke-static {v0, p2, p3}, Lcom/alibaba/alimei/framework/db/AutoTryTaskDatasource;->handleAutoTryTaskStatus(ZLjava/lang/String;Lyr;)V

    goto :goto_0

    .line 556
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private hasTaskInExecuting(Ljava/lang/String;)Z
    .locals 2
    .param p1, "cmmdKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 391
    iget-object v1, p0, Lcom/alibaba/alimei/framework/AlimeiService;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    :cond_0
    :goto_0
    return v0

    .line 394
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/framework/AlimeiService;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 397
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs declared-synchronized initActionsHandler(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 8
    .param p2, "actions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lxw;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "handlerClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lxw;>;"
    const/4 v6, 0x0

    .line 167
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/alibaba/alimei/framework/AlimeiService;->e:Ljava/util/HashMap;

    if-nez v5, :cond_0

    .line 168
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/alibaba/alimei/framework/AlimeiService;->e:Ljava/util/HashMap;

    .line 170
    :cond_0
    iget-object v5, p0, Lcom/alibaba/alimei/framework/AlimeiService;->e:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .local v3, "instance":Lxw;
    if-nez v3, :cond_1

    .line 174
    const/4 v5, 0x0

    :try_start_1
    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {p1, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 175
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lxw;>;"
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 176
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lxw;

    move-object v3, v0

    .line 177
    iget-object v5, p0, Lcom/alibaba/alimei/framework/AlimeiService;->e:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lxw;>;"
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 183
    :try_start_2
    array-length v7, p2

    move v5, v6

    :goto_1
    if-ge v5, v7, :cond_2

    aget-object v1, p2, v5

    .line 184
    .local v1, "action":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/alimei/framework/AlimeiService;->d:Ljava/util/HashMap;

    invoke-virtual {v6, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 178
    .end local v1    # "action":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 179
    .local v4, "tr":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "AlimeiService init action "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    aget-object v7, p2, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " handler error--->>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 167
    .end local v3    # "instance":Lxw;
    .end local v4    # "tr":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 187
    .restart local v3    # "instance":Lxw;
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public static registerServiceIntentHandler(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 4
    .param p0, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lxw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "handlerClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lxw;>;"
    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    sget-object v1, Lcom/alibaba/alimei/framework/AlimeiService;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/AlimeiService$b;

    .line 109
    .local v0, "pair":Lcom/alibaba/alimei/framework/AlimeiService$b;
    if-nez v0, :cond_3

    .line 110
    new-instance v1, Lcom/alibaba/alimei/framework/AlimeiService$b;

    invoke-direct {v1, p1, p0}, Lcom/alibaba/alimei/framework/AlimeiService$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 114
    :cond_2
    :goto_1
    sget-object v1, Lcom/alibaba/alimei/framework/AlimeiService;->a:Lcom/alibaba/alimei/framework/AlimeiService;

    if-eqz v1, :cond_0

    .line 115
    sget-object v1, Lcom/alibaba/alimei/framework/AlimeiService;->a:Lcom/alibaba/alimei/framework/AlimeiService;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-direct {v1, p1, v2}, Lcom/alibaba/alimei/framework/AlimeiService;->initActionsHandler(Ljava/lang/Class;[Ljava/lang/String;)V

    goto :goto_0

    .line 1068
    :cond_3
    iget-object v1, v0, Lcom/alibaba/alimei/framework/AlimeiService$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1071
    iget-object v1, v0, Lcom/alibaba/alimei/framework/AlimeiService$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private removeExecuteTaskByCommandKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "commandKey"    # Ljava/lang/String;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/alibaba/alimei/framework/AlimeiService;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v0, p0, Lcom/alibaba/alimei/framework/AlimeiService;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    return-void
.end method

.method private declared-synchronized runCheckoutAccountAccessToken()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 237
    .local v2, "currentTime":J
    sget-wide v4, Lcom/alibaba/alimei/framework/AlimeiService;->b:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0x36ee80

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 238
    sput-wide v2, Lcom/alibaba/alimei/framework/AlimeiService;->b:J

    .line 239
    invoke-static {}, Lxn;->h()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 240
    .local v0, "accountApi":Lcom/alibaba/alimei/framework/account/AccountApi;
    if-eqz v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/AlimeiService;->cancelCheckoutWatchAlarm()V

    .line 242
    const-wide/32 v4, 0x124f80

    new-instance v6, Lcom/alibaba/alimei/framework/AlimeiService$1;

    invoke-direct {v6, p0}, Lcom/alibaba/alimei/framework/AlimeiService$1;-><init>(Lcom/alibaba/alimei/framework/AlimeiService;)V

    invoke-interface {v0, v4, v5, v6}, Lcom/alibaba/alimei/framework/account/AccountApi;->refreshAllAccountToken(JLxv;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .end local v0    # "accountApi":Lcom/alibaba/alimei/framework/account/AccountApi;
    .end local v2    # "currentTime":J
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 255
    :catch_0
    move-exception v1

    .line 256
    .local v1, "tr":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v4, "runCheckoutAccountAccessToken error-->"

    invoke-static {v4, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 236
    .end local v1    # "tr":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public static sendTaskCommand(Landroid/content/Context;Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "command"    # Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;

    .prologue
    .line 125
    if-nez p0, :cond_0

    .line 126
    const-string/jumbo v2, "AlimeiService cannot send task command by a null context"

    invoke-static {v2}, Lyx;->a(Ljava/lang/String;)I

    .line 139
    :goto_0
    return-void

    .line 130
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/alimei/framework/AlimeiService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    const-class v2, Lcom/alibaba/alimei/framework/AlimeiService;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 132
    const-string/jumbo v2, "com.alibaba.alimei.ACTION_EXECUTE_TASK_COMMAND"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string/jumbo v2, "key_taskcmmd"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 136
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 137
    const-string/jumbo v2, "AlimeiService sendTaskCommand fail"

    invoke-static {v2, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setCheckWatchAlarm(J)V
    .locals 9
    .param p1, "timeInterval"    # J

    .prologue
    const/4 v8, 0x0

    .line 524
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long v2, v6, p1

    .line 525
    .local v2, "nextTime":J
    iget-object v5, p0, Lcom/alibaba/alimei/framework/AlimeiService;->i:Landroid/app/PendingIntent;

    if-nez v5, :cond_0

    .line 526
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 527
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "_com.alibaba.alimei.accesstoken.watch.ACTION"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    const/high16 v5, 0x8000000

    invoke-static {p0, v8, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/alimei/framework/AlimeiService;->i:Landroid/app/PendingIntent;

    .line 530
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v5, p0, Lcom/alibaba/alimei/framework/AlimeiService;->i:Landroid/app/PendingIntent;

    if-eqz v5, :cond_1

    .line 532
    :try_start_0
    const-string/jumbo v5, "alarm"

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/framework/AlimeiService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 534
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alibaba/alimei/framework/AlimeiService;->i:Landroid/app/PendingIntent;

    invoke-static {v0, v5, v2, v3, v6}, Lyv;->a(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    :cond_1
    :goto_0
    return-void

    .line 535
    :catch_0
    move-exception v4

    .line 536
    .local v4, "tr":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized startExecuteAutoTryTask()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/framework/AlimeiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lza;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 328
    const-string/jumbo v2, "startExecuteAutoTryTask NO NetworkConnected"

    invoke-static {v2}, Lyx;->a(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    :goto_0
    monitor-exit p0

    return-void

    .line 333
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/AlimeiService;->getServiceThread()Laie;

    move-result-object v1

    .line 334
    .local v1, "thread":Laie;
    new-instance v0, Lcom/alibaba/alimei/framework/AlimeiService$3;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/framework/AlimeiService$3;-><init>(Lcom/alibaba/alimei/framework/AlimeiService;)V

    .line 379
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-interface {v1, v0}, Laie;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 326
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v1    # "thread":Laie;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private updateCheckoutWatchAlarm(J)V
    .locals 1
    .param p1, "timeInterval"    # J

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/AlimeiService;->cancelCheckoutWatchAlarm()V

    .line 515
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/framework/AlimeiService;->setCheckWatchAlarm(J)V

    .line 516
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 283
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 191
    sput-object p0, Lcom/alibaba/alimei/framework/AlimeiService;->a:Lcom/alibaba/alimei/framework/AlimeiService;

    .line 192
    iget-object v5, p0, Lcom/alibaba/alimei/framework/AlimeiService;->e:Ljava/util/HashMap;

    if-nez v5, :cond_0

    .line 193
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/alibaba/alimei/framework/AlimeiService;->e:Ljava/util/HashMap;

    .line 195
    :cond_0
    iget-object v5, p0, Lcom/alibaba/alimei/framework/AlimeiService;->d:Ljava/util/HashMap;

    if-nez v5, :cond_1

    .line 196
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/alibaba/alimei/framework/AlimeiService;->d:Ljava/util/HashMap;

    .line 197
    iget-object v5, p0, Lcom/alibaba/alimei/framework/AlimeiService;->d:Ljava/util/HashMap;

    const-string/jumbo v6, "com.alibaba.alimei.ACTION_EXECUTE_TASK_COMMAND"

    iget-object v7, p0, Lcom/alibaba/alimei/framework/AlimeiService;->h:Lxw;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v5, p0, Lcom/alibaba/alimei/framework/AlimeiService;->d:Ljava/util/HashMap;

    const-string/jumbo v6, "com.alibaba.alimei.ACTION_CANCEL_TASK_COMMAND"

    iget-object v7, p0, Lcom/alibaba/alimei/framework/AlimeiService;->h:Lxw;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_1
    const-string/jumbo v5, "AlimeiService onCreate..."

    invoke-static {v5}, Lyx;->b(Ljava/lang/String;)I

    .line 204
    sget-object v5, Lcom/alibaba/alimei/framework/AlimeiService;->c:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 205
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/framework/AlimeiService$b;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 206
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/framework/AlimeiService$b;

    .line 207
    .local v3, "p":Lcom/alibaba/alimei/framework/AlimeiService$b;
    iget-object v5, v3, Lcom/alibaba/alimei/framework/AlimeiService$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    .line 208
    .local v0, "actions":[Ljava/lang/String;
    iget-object v5, v3, Lcom/alibaba/alimei/framework/AlimeiService$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "actions":[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .line 209
    .restart local v0    # "actions":[Ljava/lang/String;
    iget-object v5, v3, Lcom/alibaba/alimei/framework/AlimeiService$b;->a:Ljava/lang/Class;

    invoke-direct {p0, v5, v0}, Lcom/alibaba/alimei/framework/AlimeiService;->initActionsHandler(Ljava/lang/Class;[Ljava/lang/String;)V

    goto :goto_0

    .line 211
    .end local v0    # "actions":[Ljava/lang/String;
    .end local v3    # "p":Lcom/alibaba/alimei/framework/AlimeiService$b;
    :cond_2
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 215
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/AlimeiService;->startExecuteAutoTryTask()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_1
    :try_start_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 226
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    iget-object v5, p0, Lcom/alibaba/alimei/framework/AlimeiService;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/alibaba/alimei/framework/AlimeiService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 232
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :goto_2
    return-void

    .line 216
    :catch_0
    move-exception v4

    .line 217
    .local v4, "tr":Ljava/lang/Throwable;
    const-string/jumbo v5, "startExecuteAutoTryTask error-->"

    invoke-static {v5, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 228
    .end local v4    # "tr":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    .line 229
    .restart local v4    # "tr":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 230
    const-string/jumbo v5, "AlimeiService register connection receiver error-->"

    invoke-static {v5, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 262
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 263
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/AlimeiService;->cancelCheckoutWatchAlarm()V

    .line 264
    const/4 v2, 0x0

    sput-object v2, Lcom/alibaba/alimei/framework/AlimeiService;->a:Lcom/alibaba/alimei/framework/AlimeiService;

    .line 266
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/alimei/framework/AlimeiService;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/framework/AlimeiService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 269
    :goto_0
    iget-object v2, p0, Lcom/alibaba/alimei/framework/AlimeiService;->e:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/alimei/framework/AlimeiService;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 270
    iget-object v2, p0, Lcom/alibaba/alimei/framework/AlimeiService;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 271
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lxw;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxw;

    .line 274
    .local v0, "h":Lxw;
    invoke-interface {v0}, Lxw;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 275
    .end local v0    # "h":Lxw;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 277
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/framework/AlimeiService;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 279
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lxw;>;"
    :cond_1
    return-void

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 288
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    .line 289
    .local v2, "result":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 290
    :cond_0
    const-string/jumbo v5, "AlimeiService onStartCommand fail for intent or action is null"

    invoke-static {v5}, Lyx;->a(Ljava/lang/String;)I

    .line 317
    .end local v2    # "result":I
    :goto_0
    return v2

    .line 293
    .restart local v2    # "result":I
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "_com.alibaba.alimei.accesstoken.watch.ACTION"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 297
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/AlimeiService;->runCheckoutAccountAccessToken()V

    move v2, v5

    .line 298
    goto :goto_0

    .line 300
    :cond_2
    iget-object v6, p0, Lcom/alibaba/alimei/framework/AlimeiService;->d:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxw;

    .line 301
    .local v1, "handler":Lxw;
    if-eqz v1, :cond_3

    .line 305
    new-instance v3, Lcom/alibaba/alimei/framework/AlimeiService$2;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/alibaba/alimei/framework/AlimeiService$2;-><init>(Lcom/alibaba/alimei/framework/AlimeiService;Lxw;Ljava/lang/String;Landroid/content/Intent;)V

    .line 311
    .local v3, "runnable":Ljava/lang/Runnable;
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/AlimeiService;->getServiceThread()Laie;

    move-result-object v4

    .line 312
    .local v4, "serviceThread":Laie;
    invoke-interface {v4, v3}, Laie;->a(Ljava/lang/Runnable;)V

    .end local v3    # "runnable":Ljava/lang/Runnable;
    .end local v4    # "serviceThread":Laie;
    :goto_1
    move v2, v5

    .line 317
    goto :goto_0

    .line 315
    :cond_3
    const-string/jumbo v6, "AlimeiService onStartCommand ServiceIntentHandler is null"

    invoke-static {v6}, Lyx;->a(Ljava/lang/String;)I

    goto :goto_1
.end method
