.class public Lewr;
.super Ljava/lang/Object;
.source "TeleConfVoipHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lewr$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Z

.field private static volatile g:Lewr;


# instance fields
.field public a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

.field private d:Lewz;

.field private e:Liel$a;

.field private f:Landroid/os/CountDownTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-class v0, Lewr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lewr;->b:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lewr;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lewz;

    invoke-direct {v0}, Lewz;-><init>()V

    iput-object v0, p0, Lewr;->d:Lewz;

    .line 113
    new-instance v0, Lewr$1;

    invoke-direct {v0, p0}, Lewr$1;-><init>(Lewr;)V

    iput-object v0, p0, Lewr;->e:Liel$a;

    .line 121
    invoke-static {}, Liel;->a()Liel;

    move-result-object v0

    iget-object v1, p0, Lewr;->e:Liel$a;

    .line 1061
    iput-object v1, v0, Liel;->a:Liel$a;

    .line 122
    return-void
.end method

.method static synthetic a(Lewr;)Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    .locals 2
    .param p0, "x0"    # Lewr;

    .prologue
    .line 2175
    const/4 v1, 0x0

    .line 2176
    const-class v0, Lier;

    invoke-static {v0}, Liec;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liee;

    .line 2177
    if-eqz v0, :cond_0

    .line 2178
    invoke-interface {v0}, Liee;->e()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static a()Lewr;
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lewr;->g:Lewr;

    if-nez v0, :cond_1

    .line 103
    const-class v1, Lewr;

    monitor-enter v1

    .line 104
    :try_start_0
    sget-object v0, Lewr;->g:Lewr;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lewr;

    invoke-direct {v0}, Lewr;-><init>()V

    sput-object v0, Lewr;->g:Lewr;

    .line 107
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_1
    sget-object v0, Lewr;->g:Lewr;

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Intent;)V
    .locals 6
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 497
    const-class v3, Lewr;

    monitor-enter v3

    if-eqz p0, :cond_0

    .line 498
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isSupportMIUIPush(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 511
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 501
    :cond_1
    :try_start_1
    const-string/jumbo v2, "key_message"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/mipush/sdk/MiPushMessage;

    .line 502
    .local v1, "pushMessage":Lcom/xiaomi/mipush/sdk/MiPushMessage;
    if-eqz v1, :cond_0

    .line 503
    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getNotifyId()I

    move-result v0

    .line 505
    .local v0, "notifyId":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 506
    invoke-static {}, Liec;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 507
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Liec;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 497
    .end local v0    # "notifyId":I
    .end local v1    # "pushMessage":Lcom/xiaomi/mipush/sdk/MiPushMessage;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static synthetic a(Liee;J)V
    .locals 3
    .param p0, "x0"    # Liee;
    .param p1, "x1"    # J

    .prologue
    .line 74
    .line 2535
    if-nez p0, :cond_0

    .line 2536
    :goto_0
    return-void

    .line 2538
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    new-instance v1, Lewr$5;

    invoke-direct {v1, p0}, Lewr$5;-><init>(Liee;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0
.end method

.method static synthetic a(Liee;JLjava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Liee;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 74
    .line 2569
    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2570
    :cond_0
    :goto_0
    return-void

    .line 2572
    :cond_1
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lewr;->b:Ljava/lang/String;

    const-string/jumbo v2, "Goto voip-conf by uid"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2574
    new-instance v0, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;

    invoke-direct {v0}, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;-><init>()V

    .line 2575
    invoke-virtual {v0, p3}, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->fromJsonStr(Ljava/lang/String;)Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;

    .line 2576
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2577
    iget-object v2, v0, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->calleeUids:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2578
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2579
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2581
    :cond_2
    iget-object v2, v0, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->hostUid:Ljava/lang/Long;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2582
    iget-object v2, v0, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->hostUid:Ljava/lang/Long;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2585
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    new-instance v3, Lewr$6;

    invoke-direct {v3, p0, p1, p2, v0}, Lewr$6;-><init>(Liee;JLcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;)V

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method public static a(J)Z
    .locals 2
    .param p0, "uid"    # J

    .prologue
    .line 531
    const-wide/32 v0, 0xfb23934

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x16199ddd

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lewr;)Lewr$a;
    .locals 1
    .param p0, "x0"    # Lewr;

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic b(Z)Z
    .locals 1
    .param p0, "x0"    # Z

    .prologue
    .line 74
    const/4 v0, 0x1

    sput-boolean v0, Lewr;->c:Z

    return v0
.end method

.method public static declared-synchronized c()V
    .locals 4

    .prologue
    .line 257
    const-class v1, Lewr;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Liec;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    const/4 v0, 0x0

    sput-boolean v0, Lewr;->c:Z

    .line 259
    const-string/jumbo v0, "tele_conf"

    const-string/jumbo v2, "voip_call"

    const-string/jumbo v3, "Init voip engine"

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lewr$4;

    invoke-direct {v2}, Lewr$4;-><init>()V

    invoke-static {v0, v2}, Liec;->a(Landroid/content/Context;Liec$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :cond_0
    monitor-exit v1

    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized d()Z
    .locals 16

    .prologue
    const-wide/16 v14, 0x0

    const/4 v5, 0x0

    .line 419
    const-class v9, Lewr;

    monitor-enter v9

    :try_start_0
    invoke-static {}, Liec;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_1

    .line 444
    .local v2, "authService":Lcom/alibaba/wukong/auth/AuthService;
    .local v3, "domain":Ljava/lang/String;
    .local v6, "uid":J
    :cond_0
    :goto_0
    monitor-exit v9

    return v5

    .line 423
    .end local v2    # "authService":Lcom/alibaba/wukong/auth/AuthService;
    .end local v3    # "domain":Ljava/lang/String;
    .end local v6    # "uid":J
    :cond_1
    :try_start_1
    const-string/jumbo v3, "dingding"

    .line 424
    .restart local v3    # "domain":Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 425
    .restart local v6    # "uid":J
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v2

    .line 426
    .restart local v2    # "authService":Lcom/alibaba/wukong/auth/AuthService;
    if-eqz v2, :cond_2

    .line 427
    invoke-virtual {v2}, Lcom/alibaba/wukong/auth/AuthService;->latestAuthInfo()Lcom/alibaba/wukong/auth/AuthInfo;

    move-result-object v1

    .line 428
    .local v1, "authInfo":Lcom/alibaba/wukong/auth/AuthInfo;
    if-eqz v1, :cond_2

    .line 429
    invoke-interface {v1}, Lcom/alibaba/wukong/auth/AuthInfo;->getDomain()Ljava/lang/String;

    move-result-object v3

    .line 430
    invoke-interface {v1}, Lcom/alibaba/wukong/auth/AuthInfo;->getOpenId()J

    move-result-wide v6

    .line 433
    .end local v1    # "authInfo":Lcom/alibaba/wukong/auth/AuthInfo;
    :cond_2
    cmp-long v8, v6, v14

    if-gtz v8, :cond_3

    .line 434
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->b()Lchy;

    move-result-object v8

    invoke-virtual {v8}, Lchy;->getCurrentUid()J

    move-result-wide v6

    .line 436
    :cond_3
    const-string/jumbo v8, "tele_conf"

    sget-object v10, Lewr;->b:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "register usr "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", domain "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    cmp-long v8, v6, v14

    if-lez v8, :cond_0

    .line 438
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v8

    invoke-virtual {v8}, Lccr;->d()Ljava/lang/String;

    move-result-object v4

    .line 439
    .local v4, "nick":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-static {v8}, Lcms;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "appVer":Ljava/lang/String;
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8, v4, v0}, Liec;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 441
    .local v5, "registered":Z
    goto :goto_0

    .line 419
    .end local v0    # "appVer":Ljava/lang/String;
    .end local v2    # "authService":Lcom/alibaba/wukong/auth/AuthService;
    .end local v4    # "nick":Ljava/lang/String;
    .end local v5    # "registered":Z
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method public static declared-synchronized e()Z
    .locals 9

    .prologue
    .line 451
    const-class v5, Lewr;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Liec;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 452
    const-class v4, Lier;

    invoke-static {v4}, Liec;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liee;

    .line 453
    .local v0, "audioService":Liee;
    if-eqz v0, :cond_2

    .line 454
    invoke-interface {v0}, Liee;->e()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v3

    .line 455
    .local v3, "state":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    sget-object v4, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v4, v3, :cond_0

    sget-object v4, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v4, v3, :cond_0

    sget-object v4, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v4, v3, :cond_2

    .line 458
    :cond_0
    const-string/jumbo v2, ""

    .line 459
    .local v2, "openId":Ljava/lang/String;
    const-string/jumbo v4, ""

    invoke-interface {v0, v4}, Liee;->a(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v1

    .line 460
    .local v1, "iavSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    if-eqz v1, :cond_1

    .line 461
    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->a()Ljava/lang/String;

    move-result-object v2

    .line 463
    :cond_1
    const-string/jumbo v4, "tele_conf"

    sget-object v6, Lewr;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "VoIP running state: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->ordinal()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "; open id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    const/4 v4, 0x1

    .line 469
    .end local v1    # "iavSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    .end local v2    # "openId":Ljava/lang/String;
    .end local v3    # "state":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    :goto_0
    monitor-exit v5

    return v4

    .line 468
    :cond_2
    :try_start_1
    const-string/jumbo v4, "tele_conf"

    sget-object v6, Lewr;->b:Ljava/lang/String;

    const-string/jumbo v7, "VoIP running false"

    invoke-static {v4, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    const/4 v4, 0x0

    goto :goto_0

    .line 451
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 473
    invoke-static {}, Liec;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lewr;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized g()V
    .locals 4

    .prologue
    .line 517
    const-class v1, Lewr;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "tele_conf"

    const-string/jumbo v2, "voip_call"

    const-string/jumbo v3, "Destroy voip engine."

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-static {}, Lewv;->e()Lewv;

    move-result-object v0

    sget-object v2, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VOIP:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {v0, v2}, Lewv;->b(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    .line 521
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v0

    const-string/jumbo v2, "teleconf_focus"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lciu;->a(Ljava/lang/String;I)V

    .line 525
    invoke-static {}, Leve;->a()Leve;

    move-result-object v0

    invoke-virtual {v0}, Leve;->b()V

    .line 526
    invoke-static {}, Liec;->a()V

    .line 527
    invoke-static {}, Lewr;->a()Lewr;

    move-result-object v0

    .line 1236
    invoke-static {}, Liel;->a()Liel;

    move-result-object v2

    const/4 v3, 0x0

    .line 2061
    iput-object v3, v2, Liel;->a:Liel$a;

    .line 1237
    iget-object v2, v0, Lewr;->e:Liel$a;

    if-eqz v2, :cond_0

    .line 1238
    const/4 v2, 0x0

    iput-object v2, v0, Lewr;->e:Liel$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    :cond_0
    monitor-exit v1

    return-void

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lewr;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;Z)V
    .locals 6
    .param p1, "ringerObj"    # Lcom/alibaba/wukong/openav/external/utils/VoipRinger;
    .param p2, "ringCheck"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 129
    iput-object p1, p0, Lewr;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    .line 130
    if-eqz p2, :cond_1

    iget-object v0, p0, Lewr;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    if-eqz v0, :cond_1

    .line 131
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lewr;->b:Ljava/lang/String;

    const-string/jumbo v2, "Ring check start"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lewr;->f:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lewr$2;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x2710

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lewr$2;-><init>(Lewr;JJ)V

    iput-object v0, p0, Lewr;->f:Landroid/os/CountDownTimer;

    .line 155
    :cond_0
    iget-object v0, p0, Lewr;->f:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 157
    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 6
    .param p1, "support"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 189
    if-eqz p1, :cond_1

    .line 190
    const-string/jumbo v0, "1"

    .line 195
    .local v0, "value":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "sosupport"

    invoke-static {v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "voipValue":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 233
    :cond_0
    :goto_1
    return-void

    .line 192
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "voipValue":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "0"

    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_0

    .line 200
    .restart local v1    # "voipValue":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p1, :cond_0

    .line 204
    :cond_3
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lewr;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Set voip support "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lewr;->d:Lewz;

    if-eqz v2, :cond_0

    .line 206
    const-string/jumbo v2, "sosupport"

    new-instance v3, Lewr$3;

    invoke-direct {v3, p0}, Lewr$3;-><init>(Lewr;)V

    invoke-static {v2, v0, v3}, Lewz;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)Z

    .line 231
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "sosupport"

    invoke-static {v2, v3, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 164
    iget-object v0, p0, Lewr;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lewr;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->c()V

    .line 166
    iput-object v1, p0, Lewr;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    .line 168
    :cond_0
    iget-object v0, p0, Lewr;->f:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lewr;->f:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 170
    iput-object v1, p0, Lewr;->f:Landroid/os/CountDownTimer;

    .line 172
    :cond_1
    return-void
.end method
