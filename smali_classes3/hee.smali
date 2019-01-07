.class public final Lhee;
.super Ljava/lang/Object;
.source "FloatActionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhee$a;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService;

.field public b:Lheg;

.field public c:Ljava/lang/String;

.field public d:Lhef;

.field e:Landroid/content/ServiceConnection;

.field private f:Landroid/app/Activity;

.field private g:Landroid/app/Activity;

.field private h:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhee;->h:Z

    .line 54
    new-instance v0, Lhee$1;

    invoke-direct {v0, p0}, Lhee$1;-><init>(Lhee;)V

    iput-object v0, p0, Lhee;->e:Landroid/content/ServiceConnection;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lhee;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p0, :cond_1

    .line 141
    const-string/jumbo v5, "activity"

    .line 142
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 143
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/16 v5, 0x64

    .line 144
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 146
    .local v3, "runningServiceInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 148
    .local v2, "runningServiceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 149
    const/4 v4, 0x1

    .line 155
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v2    # "runningServiceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v3    # "runningServiceInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_1
    return v4
.end method


# virtual methods
.method public final a()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 122
    iget-object v2, p0, Lhee;->g:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lhee;->f:Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 123
    :cond_0
    const-string/jumbo v2, "FloatActionController"

    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "stopMonkServer"

    aput-object v4, v3, v6

    const-string/jumbo v4, "activity null"

    aput-object v4, v3, v7

    .line 5082
    const-string/jumbo v4, "mini_task"

    invoke-static {v4, v2, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :goto_0
    return-void

    .line 127
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lhee;->g:Landroid/app/Activity;

    const-class v3, Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v0, "intent":Landroid/content/Intent;
    iget-boolean v2, p0, Lhee;->h:Z

    if-eqz v2, :cond_2

    .line 129
    const-string/jumbo v2, "FloatActionController"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "stopMonkServer"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "unbindService"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lhmv;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object v2, p0, Lhee;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    iget-object v3, p0, Lhee;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/app/Application;->unbindService(Landroid/content/ServiceConnection;)V

    .line 132
    :cond_2
    iget-object v2, p0, Lhee;->g:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 134
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    const-string/jumbo v2, "FloatActionController"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "stopMonkServer"

    aput-object v4, v3, v6

    const-string/jumbo v4, "unbindService error="

    aput-object v4, v3, v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lhmv;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 10
    .param p1, "context"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 79
    if-nez p1, :cond_0

    .line 80
    const-string/jumbo v2, "FloatActionController"

    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "startMonkServer"

    aput-object v4, v3, v7

    const-string/jumbo v4, "context == null"

    aput-object v4, v3, v6

    .line 1082
    const-string/jumbo v4, "mini_task"

    invoke-static {v4, v2, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v2, p0, Lhee;->f:Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 86
    :try_start_0
    iget-object v2, p0, Lhee;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    iget-object v3, p0, Lhee;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/app/Application;->unbindService(Landroid/content/ServiceConnection;)V

    .line 87
    const/4 v2, 0x0

    iput-boolean v2, p0, Lhee;->h:Z

    .line 88
    const-string/jumbo v2, "FloatActionController"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "startMonkServer"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "unbindService before bind"

    aput-object v5, v3, v4

    .line 2082
    const-string/jumbo v4, "mini_task"

    invoke-static {v4, v2, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_1
    :goto_1
    iput-object p1, p0, Lhee;->f:Landroid/app/Activity;

    .line 96
    iget-object v2, p0, Lhee;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lhee;->c:Ljava/lang/String;

    .line 97
    const-string/jumbo v2, "FloatActionController"

    new-array v3, v9, [Ljava/lang/Object;

    const-string/jumbo v4, "startMonkServer"

    aput-object v4, v3, v7

    const-string/jumbo v4, " mActivityName= "

    aput-object v4, v3, v6

    iget-object v4, p0, Lhee;->c:Ljava/lang/String;

    aput-object v4, v3, v8

    .line 4082
    const-string/jumbo v4, "mini_task"

    invoke-static {v4, v2, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    const-class v2, Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lhee;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    iget-object v2, p0, Lhee;->a:Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService;

    if-eqz v2, :cond_2

    .line 102
    invoke-static {}, Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService;->a()V

    .line 104
    :cond_2
    iget-object v2, p0, Lhee;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    iget-object v3, p0, Lhee;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v6}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 105
    iput-boolean v6, p0, Lhee;->h:Z

    .line 106
    const-string/jumbo v2, "FloatActionController"

    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "startMonkServer"

    aput-object v4, v3, v7

    const-string/jumbo v4, "service Running bind"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lhmv;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 89
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 90
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    const-string/jumbo v2, "FloatActionController"

    new-array v3, v9, [Ljava/lang/Object;

    const-string/jumbo v4, "startMonkServer"

    aput-object v4, v3, v7

    const-string/jumbo v4, "unbindService before bind error:"

    aput-object v4, v3, v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 3082
    const-string/jumbo v4, "mini_task"

    invoke-static {v4, v2, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 110
    .end local v1    # "throwable":Ljava/lang/Throwable;
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_3
    iput-object p1, p0, Lhee;->g:Landroid/app/Activity;

    .line 111
    iget-object v2, p0, Lhee;->g:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 112
    iget-object v2, p0, Lhee;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    iget-object v3, p0, Lhee;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v6}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 113
    iput-boolean v6, p0, Lhee;->h:Z

    .line 114
    const-string/jumbo v2, "FloatActionController"

    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "startMonkServer"

    aput-object v4, v3, v7

    const-string/jumbo v4, "start service and bind"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lhmv;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public final b()Landroid/app/Activity;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 201
    invoke-static {}, Lhlq;->a()Lhlq;

    move-result-object v0

    iget-object v1, p0, Lhee;->c:Ljava/lang/String;

    .line 5325
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5329
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v0, v2}, Lhlq;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 5330
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5331
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhmu;

    .line 5332
    if-eqz v0, :cond_0

    .line 6041
    iget-object v3, v0, Lhmu;->c:Ljava/lang/String;

    .line 5333
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7033
    iget-object v0, v0, Lhmu;->b:Landroid/app/Activity;

    .line 5334
    :goto_0
    return-object v0

    .line 5340
    :cond_1
    const/4 v0, 0x0

    .line 201
    goto :goto_0
.end method
