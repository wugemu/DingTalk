.class public Lcom/alibaba/android/teleconf/service/ListenPhoneService;
.super Landroid/app/Service;
.source "ListenPhoneService.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Landroid/os/Handler;

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 68
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->b:Ljava/lang/String;

    .line 69
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->c:Z

    .line 70
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->d:Z

    .line 72
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->e:Landroid/os/Handler;

    .line 78
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/service/ListenPhoneService;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/service/ListenPhoneService;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 60
    .line 6255
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 6256
    invoke-static {v0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6257
    :cond_0
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "Network is not connected : "

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6299
    :goto_0
    return-void

    .line 7150
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "conf_info_card"

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 6261
    if-eqz v0, :cond_3

    .line 6262
    const-class v0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/BaseFloatView;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6263
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->a:Ljava/lang/String;

    const-string/jumbo v2, "User card is showing"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6266
    :cond_2
    sget-object v0, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->a:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 6267
    new-instance v1, Lcom/alibaba/android/teleconf/service/ListenPhoneService$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/teleconf/service/ListenPhoneService$2;-><init>(Lcom/alibaba/android/teleconf/service/ListenPhoneService;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6300
    :cond_3
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->a:Ljava/lang/String;

    const-string/jumbo v2, "Sys card is not valid"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/service/ListenPhoneService;Ljava/lang/String;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/service/ListenPhoneService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 60
    .line 2442
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2445
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v1

    .line 2927
    iget-object v2, v1, Lewl;->j:Leym;

    .line 2446
    if-eqz v2, :cond_5

    .line 2447
    const/4 v1, 0x0

    .line 2448
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v0

    .line 2452
    :cond_0
    if-nez v1, :cond_1

    .line 2453
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc

    if-le v3, v4, :cond_1

    move v1, v0

    .line 2457
    :cond_1
    if-nez v1, :cond_6

    .line 2458
    iget-object v3, v2, Leym;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v2, Leym;->e:Ljava/lang/String;

    .line 2459
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2464
    :goto_0
    iget-object v1, v2, Leym;->e:Ljava/lang/String;

    .line 2465
    iget-object v2, v2, Leym;->f:Ljava/lang/String;

    .line 2467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2468
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2469
    const-string/jumbo v6, "invalid"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2470
    const-string/jumbo v0, "time"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2472
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2473
    const-string/jumbo v0, "incomingNumber"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2476
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2477
    const-string/jumbo v0, "expectedNum"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2480
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2481
    const-string/jumbo v0, "uuid"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2485
    :cond_4
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "meeting_incall_ring_number"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 60
    :cond_5
    return-void

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/service/ListenPhoneService;Z)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/service/ListenPhoneService;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    .line 1431
    if-eqz p1, :cond_0

    .line 1432
    const/4 v0, 0x1

    .line 1436
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.teleonf.hangup"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1437
    const-string/jumbo v2, "calling_operation"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1438
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 60
    return-void

    .line 1434
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/service/ListenPhoneService;ZLjava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/service/ListenPhoneService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 60
    .line 1490
    sget-object v0, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->a:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 1491
    new-instance v1, Lcom/alibaba/android/teleconf/service/ListenPhoneService$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/android/teleconf/service/ListenPhoneService$4;-><init>(Lcom/alibaba/android/teleconf/service/ListenPhoneService;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/service/ListenPhoneService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/service/ListenPhoneService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/service/ListenPhoneService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/service/ListenPhoneService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->b:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 149
    const-string/jumbo v3, "tele_conf"

    sget-object v4, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->a:Ljava/lang/String;

    const-string/jumbo v5, "initPhoneListener"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->f:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_0

    .line 152
    new-instance v3, Lcom/alibaba/android/teleconf/service/ListenPhoneService$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/service/ListenPhoneService$1;-><init>(Lcom/alibaba/android/teleconf/service/ListenPhoneService;)V

    iput-object v3, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->f:Landroid/content/BroadcastReceiver;

    .line 225
    :cond_0
    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->d:Z

    if-nez v3, :cond_1

    .line 226
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 227
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 228
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->d:Z

    .line 230
    const-string/jumbo v3, "tele_conf"

    sget-object v4, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->a:Ljava/lang/String;

    const-string/jumbo v5, "register phone listener"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    .line 238
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 235
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 236
    .local v1, "error":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/service/ListenPhoneService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/service/ListenPhoneService;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->c:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/service/ListenPhoneService;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    .prologue
    .line 1527
    const-class v0, Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/BaseFloatView;->a(Ljava/lang/Class;)V

    .line 1528
    const-class v0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/BaseFloatView;->a(Ljava/lang/Class;)V

    .line 60
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/service/ListenPhoneService;Ljava/lang/String;)Z
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/service/ListenPhoneService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 60
    .line 7355
    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    .line 7356
    invoke-virtual {v1}, Levi;->o()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7357
    invoke-virtual {v1}, Levi;->h()J

    move-result-wide v2

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 7358
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lewl;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7369
    :cond_0
    :goto_0
    return v0

    .line 7363
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcms;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7367
    invoke-static {}, Levi;->p()Levi;

    move-result-object v2

    .line 7368
    invoke-virtual {v1}, Levi;->o()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2}, Levi;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7372
    :cond_2
    const/4 v0, 0x1

    .line 60
    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/service/ListenPhoneService;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    .prologue
    .line 60
    .line 3425
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.teleonf.phonecall.ringing"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3426
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 60
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/service/ListenPhoneService;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    .prologue
    .line 60
    .line 4306
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    .line 5063
    iget-boolean v1, v0, Levi;->t:Z

    .line 4307
    if-nez v1, :cond_0

    .line 4308
    invoke-virtual {v0}, Levi;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4309
    :cond_0
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lewl;->e(Ljava/lang/String;)V

    .line 4310
    const/4 v1, 0x0

    .line 6059
    iput-boolean v1, v0, Levi;->t:Z

    .line 4310
    :goto_0
    return-void

    .line 4312
    :cond_1
    sget-object v0, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->a:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 4313
    new-instance v1, Lcom/alibaba/android/teleconf/service/ListenPhoneService$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/service/ListenPhoneService$3;-><init>(Lcom/alibaba/android/teleconf/service/ListenPhoneService;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/service/ListenPhoneService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 107
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->b()V

    .line 109
    return-void
.end method

.method public onDestroy()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 122
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->a:Ljava/lang/String;

    const-string/jumbo v3, "Destroy ListenPhoneService..."

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    :try_start_0
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->a:Ljava/lang/String;

    const-string/jumbo v3, "releasePhoneListener"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1243
    :try_start_1
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->f:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 1244
    iget-object v1, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1246
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->a:Ljava/lang/String;

    const-string/jumbo v3, "unregister phone listener"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->d:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1382
    :goto_0
    if-nez p0, :cond_1

    .line 128
    :goto_1
    :try_start_2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 132
    :goto_2
    return-void

    .line 1249
    :catch_0
    move-exception v1

    .line 1250
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 129
    :catch_1
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "CoreService destroy error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1385
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :try_start_3
    const-string/jumbo v1, "alarm"

    .line 1386
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 1387
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1388
    const/16 v3, 0xd

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 1389
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 1393
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1394
    const/4 v6, 0x0

    const/high16 v7, 0x10000000

    invoke-static {p0, v6, v2, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1389
    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->b()V

    .line 117
    :cond_0
    const/4 v0, 0x3

    return v0
.end method
