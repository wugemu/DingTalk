.class public Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService;
.super Landroid/app/Service;
.source "DDBabysitterService.java"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 76
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "dingtalkbase"

    const-string/jumbo v2, ""

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "startEudemonService failed:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 79
    invoke-static {v0}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService;->a(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService;->a:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    const-string/jumbo v3, "resume_service_command"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 42
    .local v0, "cmd":I
    if-ne v5, v0, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService;->stopSelf()V

    .line 71
    .end local v0    # "cmd":I
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    :goto_0
    return v2

    .line 44
    .restart local v0    # "cmd":I
    :cond_1
    const/4 v3, 0x2

    if-ne v3, v0, :cond_2

    .line 46
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService;->a:Landroid/os/Handler;

    new-instance v4, Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService$1;-><init>(Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 59
    :cond_2
    if-ne v2, v0, :cond_0

    .line 60
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v1, "killIntent":Landroid/content/Intent;
    const-string/jumbo v3, "resume_service_command"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method
