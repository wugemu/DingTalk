.class public Lexl;
.super Ljava/lang/Object;
.source "VoipConfPresenter.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;
.implements Lied$c;
.implements Lied$d;
.implements Lied$e;
.implements Lied$f;
.implements Lied$h;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

.field private C:Liei$a;

.field a:Liee;

.field private c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

.field private d:Landroid/app/Activity;

.field private e:Landroid/content/Context;

.field private f:Landroid/hardware/SensorManager;

.field private g:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

.field private h:Lcom/alibaba/wukong/openav/external/IAVSession;

.field private i:Leyc;

.field private j:Ldq;

.field private k:Landroid/content/BroadcastReceiver;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

.field private v:Ljava/lang/Object;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const-class v0, Lexl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexl;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;)V
    .locals 2
    .param p1, "uiView"    # Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-boolean v1, p0, Lexl;->o:Z

    .line 114
    iput-boolean v0, p0, Lexl;->p:Z

    .line 115
    iput-boolean v1, p0, Lexl;->q:Z

    .line 116
    iput-boolean v1, p0, Lexl;->r:Z

    .line 118
    iput-boolean v0, p0, Lexl;->t:Z

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lexl;->v:Ljava/lang/Object;

    .line 121
    iput-boolean v1, p0, Lexl;->w:Z

    .line 122
    iput-boolean v1, p0, Lexl;->x:Z

    .line 123
    iput-boolean v1, p0, Lexl;->y:Z

    .line 125
    iput-boolean v1, p0, Lexl;->A:Z

    .line 126
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;->SENSOR_PREPARING:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    iput-object v0, p0, Lexl;->B:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    .line 128
    new-instance v0, Lexl$1;

    invoke-direct {v0, p0}, Lexl$1;-><init>(Lexl;)V

    iput-object v0, p0, Lexl;->C:Liei$a;

    .line 162
    iput-object p1, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    .line 163
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lexl;->e:Landroid/content/Context;

    .line 164
    iget-object v0, p0, Lexl;->e:Landroid/content/Context;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iput-object v0, p0, Lexl;->j:Ldq;

    .line 165
    iget-object v0, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lexl;->d:Landroid/app/Activity;

    .line 167
    iget-object v0, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    invoke-interface {v0, p0}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->setPresenter(Lcjd;)V

    .line 169
    :cond_0
    return-void
.end method

.method static synthetic a(Lexl;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lexl;

    .prologue
    .line 83
    iget-object v0, p0, Lexl;->d:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lexl;Ljava/util/List;J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 6
    .param p0, "x0"    # Lexl;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # J

    .prologue
    const/4 v2, 0x0

    .line 83
    .line 7460
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 7473
    :goto_0
    return-object v0

    .line 7463
    :cond_1
    const/4 v3, -0x1

    .line 7464
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 7465
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 7466
    if-eqz v0, :cond_2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v0, v4, p2

    if-nez v0, :cond_2

    .line 7472
    :goto_2
    if-gez v1, :cond_3

    move-object v0, v2

    .line 7473
    goto :goto_0

    .line 7464
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 7476
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_2
.end method

.method static synthetic a(Lexl;Lcom/alibaba/wukong/openav/external/IAVSession;)Lcom/alibaba/wukong/openav/external/IAVSession;
    .locals 0
    .param p0, "x0"    # Lexl;
    .param p1, "x1"    # Lcom/alibaba/wukong/openav/external/IAVSession;

    .prologue
    .line 83
    iput-object p1, p0, Lexl;->h:Lcom/alibaba/wukong/openav/external/IAVSession;

    return-object p1
.end method

.method private a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;ILjava/lang/String;)V
    .locals 5
    .param p1, "alarmType"    # Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;
    .param p2, "errCode"    # I
    .param p3, "errReason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1480
    if-eqz p1, :cond_0

    .line 1481
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1501
    :cond_0
    :goto_0
    return-void

    .line 1484
    :cond_1
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;-><init>()V

    .line 1485
    .local v0, "alarmAction":Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;
    iput-object p1, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->b:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 1486
    iget-object v2, p0, Lexl;->h:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v2, :cond_2

    .line 1487
    iget-object v2, p0, Lexl;->h:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v2}, Lcom/alibaba/wukong/openav/external/IAVSession;->e()Ljava/lang/String;

    move-result-object v1

    .line 1488
    .local v1, "callId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1489
    iput-object v1, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->a:Ljava/lang/String;

    .line 1492
    .end local v1    # "callId":Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->d:J

    .line 1493
    if-lez p2, :cond_3

    .line 1494
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->e:Ljava/lang/String;

    .line 1496
    :cond_3
    iget-object v2, p0, Lexl;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1497
    iget-object v2, p0, Lexl;->m:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->c:Ljava/lang/String;

    .line 1499
    :cond_4
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "VoIP conf: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->f:Ljava/lang/String;

    .line 1500
    invoke-static {}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a()Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)V

    goto :goto_0
.end method

.method static synthetic b(Lexl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lexl;

    .prologue
    .line 83
    iget-object v0, p0, Lexl;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lexl;)Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;
    .locals 1
    .param p0, "x0"    # Lexl;

    .prologue
    .line 83
    iget-object v0, p0, Lexl;->z:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    return-object v0
.end method

.method static synthetic d(Lexl;)Liee;
    .locals 1
    .param p0, "x0"    # Lexl;

    .prologue
    .line 83
    iget-object v0, p0, Lexl;->a:Liee;

    return-object v0
.end method

.method static synthetic e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;
    .locals 1
    .param p0, "x0"    # Lexl;

    .prologue
    .line 83
    iget-object v0, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    return-object v0
.end method

.method static synthetic f(Lexl;)Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;
    .locals 1
    .param p0, "x0"    # Lexl;

    .prologue
    .line 83
    iget-object v0, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    return-object v0
.end method

.method static synthetic g(Lexl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lexl;

    .prologue
    .line 83
    iget-object v0, p0, Lexl;->v:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic h(Lexl;)Z
    .locals 1
    .param p0, "x0"    # Lexl;

    .prologue
    .line 83
    iget-boolean v0, p0, Lexl;->n:Z

    return v0
.end method

.method static synthetic i(Lexl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lexl;

    .prologue
    .line 83
    iget-object v0, p0, Lexl;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lexl;)Lcom/alibaba/wukong/openav/external/IAVSession;
    .locals 1
    .param p0, "x0"    # Lexl;

    .prologue
    .line 83
    iget-object v0, p0, Lexl;->h:Lcom/alibaba/wukong/openav/external/IAVSession;

    return-object v0
.end method

.method static synthetic k(Lexl;)Z
    .locals 1
    .param p0, "x0"    # Lexl;

    .prologue
    .line 83
    iget-boolean v0, p0, Lexl;->A:Z

    return v0
.end method

.method static synthetic l(Lexl;)Z
    .locals 1
    .param p0, "x0"    # Lexl;

    .prologue
    .line 83
    iget-boolean v0, p0, Lexl;->x:Z

    return v0
.end method

.method static synthetic t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lexl;->b:Ljava/lang/String;

    return-object v0
.end method

.method private u()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1416
    iget-object v1, p0, Lexl;->h:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v1, :cond_1

    .line 1417
    iget-object v1, p0, Lexl;->h:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    .line 1418
    .local v0, "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v1, v0, :cond_0

    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v1, v0, :cond_0

    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v1, v0, :cond_1

    .line 1421
    :cond_0
    const/4 v1, 0x1

    .line 1424
    .end local v0    # "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private v()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1642
    iget-boolean v1, p0, Lexl;->y:Z

    if-eqz v1, :cond_1

    .line 1650
    :cond_0
    :goto_0
    return-void

    .line 1645
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lexl;->y:Z

    .line 1646
    iget-object v1, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    if-eqz v1, :cond_0

    .line 1647
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->dt_conf_video_bluetooth_output_tips:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1648
    .local v0, "warning":Ljava/lang/String;
    iget-object v1, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    const-string/jumbo v2, "200"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 213
    iget-object v1, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lexl;->n:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lexl;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    :cond_0
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lexl;->b:Ljava/lang/String;

    const-string/jumbo v3, "Invalid conf creating"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3112
    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lexl;->b:Ljava/lang/String;

    const-string/jumbo v3, "Conf creating"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {}, Levn;->p()Levn;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Levn;->a(I)V

    .line 220
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateModel;-><init>()V

    .line 221
    .local v0, "createModel":Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateModel;
    iget-object v1, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conversationId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateModel;->cid:Ljava/lang/String;

    .line 222
    iget-object v1, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateModel;->calleeUids:Ljava/util/List;

    .line 224
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateModel;->calleeUids:Ljava/util/List;

    iget-object v2, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 226
    :cond_3
    iget-object v3, p0, Lexl;->i:Leyc;

    new-instance v1, Lexl$3;

    invoke-direct {v1, p0, v0}, Lexl$3;-><init>(Lexl;Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateModel;)V

    const-class v2, Leyo$d;

    iget-object v4, p0, Lexl;->d:Landroid/app/Activity;

    .line 227
    invoke-static {v1, v2, v4}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leyo$d;

    .line 3107
    if-eqz v0, :cond_1

    .line 3110
    const-class v2, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    .line 3111
    if-eqz v2, :cond_1

    .line 3114
    new-instance v4, Leyc$19;

    invoke-direct {v4, v3, v1}, Leyc$19;-><init>(Leyc;Leyo$d;)V

    invoke-interface {v2, v0, v4}, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;->createVoipConference(Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateModel;Liyv;)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 2
    .param p1, "duration"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1077
    iget-object v1, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    if-eqz v1, :cond_0

    .line 1078
    div-int/lit16 v1, p1, 0x3e8

    invoke-static {v1}, Leyr;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 1079
    .local v0, "durationStr":Ljava/lang/String;
    iget-object v1, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    invoke-interface {v1, v0}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->d(Ljava/lang/String;)V

    .line 1081
    .end local v0    # "durationStr":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 8
    .param p1, "localLevel"    # I
    .param p2, "remoteLevel"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v7, 0x32

    .line 1049
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lexl;->b:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Local level "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 1050
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, ", remote level "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1049
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    const-string/jumbo v0, ""

    .line 1053
    .local v0, "message":Ljava/lang/String;
    iget-boolean v1, p0, Lexl;->t:Z

    if-eqz v1, :cond_1

    .line 1054
    if-lt p1, v7, :cond_1

    .line 1056
    if-le p1, v7, :cond_0

    if-lt p2, v7, :cond_1

    .line 1058
    :cond_0
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 1062
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_voip_local_bad_network:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1064
    :cond_2
    iget-object v1, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    if-eqz v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1065
    iget-object v1, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NoErr:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v2}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    :cond_3
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1247
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lexl;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Phone number:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    packed-switch p1, :pswitch_data_0

    .line 1290
    :cond_0
    :goto_0
    return-void

    .line 1250
    :pswitch_0
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lexl;->b:Ljava/lang/String;

    const-string/jumbo v3, "Phone incoming"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    iget-object v1, p0, Lexl;->g:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lexl;->q:Z

    if-nez v1, :cond_0

    .line 1252
    iput-boolean v6, p0, Lexl;->q:Z

    .line 1253
    iget-object v1, p0, Lexl;->g:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    iget-boolean v2, p0, Lexl;->r:Z

    invoke-virtual {v1, v2}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->a(Z)V

    goto :goto_0

    .line 1257
    :pswitch_1
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lexl;->b:Ljava/lang/String;

    const-string/jumbo v3, "Phone hang-up"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    iget-object v1, p0, Lexl;->g:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lexl;->q:Z

    if-eqz v1, :cond_1

    .line 1259
    iput-boolean v5, p0, Lexl;->q:Z

    .line 1260
    iget-object v1, p0, Lexl;->g:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->d()V

    .line 1262
    :cond_1
    iget-object v1, p0, Lexl;->a:Liee;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lexl;->a:Liee;

    invoke-interface {v1}, Liee;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lexl;->e:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1263
    iget-object v1, p0, Lexl;->e:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1264
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1265
    iget-object v1, p0, Lexl;->a:Liee;

    invoke-interface {v1}, Liee;->i()V

    .line 1267
    :cond_2
    iget-object v1, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    if-eqz v1, :cond_0

    .line 1268
    iget-object v1, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    invoke-interface {v1, v5}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a(Z)V

    goto :goto_0

    .line 1274
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :pswitch_2
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lexl;->b:Ljava/lang/String;

    const-string/jumbo v3, "Phone offhook"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    iget-object v1, p0, Lexl;->h:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v1, :cond_3

    .line 1277
    iget-object v1, p0, Lexl;->h:Lcom/alibaba/wukong/openav/external/IAVSession;

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_PhoneInInterruption:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v2}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(I)V

    .line 1279
    :cond_3
    iget-object v1, p0, Lexl;->g:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lexl;->q:Z

    if-eqz v1, :cond_4

    .line 1280
    iput-boolean v5, p0, Lexl;->q:Z

    .line 1281
    iget-object v1, p0, Lexl;->g:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->d()V

    .line 1283
    :cond_4
    iget-object v1, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    if-eqz v1, :cond_0

    .line 1284
    iget-object v1, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    invoke-interface {v1, v6}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a(Z)V

    goto/16 :goto_0

    .line 1248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 6
    .param p1, "user"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 529
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lexl;->b:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Add member "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 534
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 533
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeId:Ljava/lang/Long;

    .line 536
    iget-object v1, p0, Lexl;->i:Leyc;

    iget-object v0, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;

    move-result-object v2

    new-instance v0, Lexl$5;

    invoke-direct {v0, p0, p1}, Lexl$5;-><init>(Lexl;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    const-class v3, Leyo$d;

    iget-object v4, p0, Lexl;->d:Landroid/app/Activity;

    .line 537
    invoke-static {v0, v3, v4}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$d;

    .line 536
    invoke-virtual {v1, v2, v0}, Leyc;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$d;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Z)V
    .locals 6
    .param p1, "user"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "muted"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 689
    iget-object v1, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    if-nez v1, :cond_1

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    new-instance v1, Lexl$8;

    invoke-direct {v1, p0, p2, p1}, Lexl$8;-><init>(Lexl;ZLcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    const-class v2, Leyo$d;

    iget-object v3, p0, Lexl;->d:Landroid/app/Activity;

    .line 694
    invoke-static {v1, v2, v3}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$d;

    .line 739
    .local v0, "operListener":Leyo$d;
    iget-object v1, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeId:Ljava/lang/Long;

    .line 740
    if-eqz p2, :cond_2

    .line 741
    iget-object v1, p0, Lexl;->i:Leyc;

    iget-object v2, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Leyc;->e(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$d;)V

    .line 745
    :goto_1
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lexl;->b:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Mute member "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 746
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 745
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 743
    :cond_2
    iget-object v1, p0, Lexl;->i:Leyc;

    iget-object v2, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Leyc;->f(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$d;)V

    goto :goto_1
.end method

.method public final a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;)V
    .locals 12
    .param p1, "type"    # Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 751
    const-string/jumbo v0, "tele_conf"

    sget-object v9, Lexl;->b:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Playing start ring "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-static {}, Lewr;->a()Lewr;

    move-result-object v0

    .line 4160
    iget-object v8, v0, Lewr;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    .line 754
    .local v8, "ringer":Lcom/alibaba/wukong/openav/external/utils/VoipRinger;
    if-eqz v8, :cond_0

    .line 755
    invoke-static {}, Lewr;->a()Lewr;

    move-result-object v0

    invoke-virtual {v0}, Lewr;->b()V

    .line 756
    iget-object v0, p0, Lexl;->g:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    if-eqz v0, :cond_0

    .line 757
    iput-object v6, p0, Lexl;->g:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    .line 760
    :cond_0
    iget-object v0, p0, Lexl;->g:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    if-nez v0, :cond_1

    .line 761
    new-instance v0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    iget-object v9, p0, Lexl;->e:Landroid/content/Context;

    invoke-direct {v0, v9}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lexl;->g:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    .line 764
    :cond_1
    const/4 v2, 0x0

    .line 765
    .local v2, "vibrateFlag":I
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;->RING_INCOMING:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;

    if-ne p1, v0, :cond_4

    .line 766
    iget-object v0, p0, Lexl;->a:Liee;

    invoke-interface {v0}, Liee;->m()Z

    move-result v7

    .line 767
    .local v7, "isBluetoothHeadsetConnected":Z
    if-nez v7, :cond_2

    .line 768
    iget-object v0, p0, Lexl;->a:Liee;

    if-eqz v0, :cond_2

    .line 769
    iget-object v0, p0, Lexl;->a:Liee;

    invoke-interface {v0}, Liee;->i()V

    .line 773
    :cond_2
    iget-object v0, p0, Lexl;->h:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lexl;->h:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v0}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    sget-object v9, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v0, v9, :cond_3

    .line 775
    const/4 v2, 0x6

    .line 777
    :cond_3
    sget v1, Leuj$k;->incoming:I

    .line 778
    .local v1, "resId":I
    invoke-static {}, Lewx;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez v7, :cond_6

    move v4, v3

    .line 779
    .local v4, "isRingMode":Z
    :goto_0
    iget-object v0, p0, Lexl;->g:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->a(IIZZZLcom/alibaba/wukong/openav/external/utils/VoipRinger$a;)V

    .line 782
    .end local v1    # "resId":I
    .end local v4    # "isRingMode":Z
    .end local v7    # "isBluetoothHeadsetConnected":Z
    :cond_4
    iget-object v0, p0, Lexl;->g:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    if-eqz v0, :cond_5

    .line 783
    invoke-static {}, Lewr;->a()Lewr;

    move-result-object v0

    iget-object v5, p0, Lexl;->g:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    .line 5125
    invoke-virtual {v0, v5, v3}, Lewr;->a(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;Z)V

    .line 785
    :cond_5
    return-void

    .restart local v1    # "resId":I
    .restart local v7    # "isBluetoothHeadsetConnected":Z
    :cond_6
    move v4, v5

    .line 778
    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;)V
    .locals 0
    .param p1, "conf"    # Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    .prologue
    .line 208
    iput-object p1, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    .line 209
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;)V
    .locals 6
    .param p1, "voiceMode"    # Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 824
    if-nez p1, :cond_1

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 827
    :cond_1
    iget-object v1, p0, Lexl;->a:Liee;

    if-eqz v1, :cond_0

    .line 828
    sget-object v1, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->EarPhone:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    if-ne p1, v1, :cond_3

    .line 829
    iget-boolean v1, p0, Lexl;->w:Z

    if-nez v1, :cond_2

    .line 830
    iget-object v1, p0, Lexl;->B:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;->SENSOR_RUNNING:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    if-ne v1, v2, :cond_2

    .line 832
    iget-object v1, p0, Lexl;->e:Landroid/content/Context;

    invoke-static {v1}, Lien;->a(Landroid/content/Context;)V

    .line 841
    :cond_2
    :goto_1
    iput-object p1, p0, Lexl;->z:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    .line 842
    iget-object v1, p0, Lexl;->a:Liee;

    invoke-interface {v1, p1}, Liee;->a(Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;)V

    .line 844
    iget-object v1, p0, Lexl;->z:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lexl;->z:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->toString()Ljava/lang/String;

    move-result-object v0

    .line 845
    .local v0, "outMode":Ljava/lang/String;
    :goto_2
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lexl;->b:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Speaker state "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 846
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 845
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 835
    .end local v0    # "outMode":Ljava/lang/String;
    :cond_3
    sget-object v1, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    if-ne p1, v1, :cond_2

    .line 836
    iget-boolean v1, p0, Lexl;->w:Z

    if-nez v1, :cond_2

    .line 838
    invoke-static {}, Lien;->a()V

    goto :goto_1

    .line 844
    :cond_4
    const-string/jumbo v0, ""

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1183
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lexl;->b:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "onMediaStart "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 1184
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1183
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    iget-object v0, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->f()V

    .line 1188
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "errCode"    # I
    .param p3, "errMsg"    # Ljava/lang/String;
    .param p4, "extraDesc"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1165
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lexl;->b:Ljava/lang/String;

    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v4, "onHangup "

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    const-string/jumbo v4, ", err "

    aput-object v4, v3, v7

    .line 1166
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1165
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_RecvDataTimeoutWarning:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 1168
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lexl;->b:Ljava/lang/String;

    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v4, "Callee data-timeout warning "

    aput-object v4, v3, v5

    .line 1169
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const-string/jumbo v4, ": "

    aput-object v4, v3, v7

    aput-object p3, v3, v8

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1168
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    sget-object v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VOIP_EXCEPTION:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    invoke-direct {p0, v1, p2, p3}, Lexl;->a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;ILjava/lang/String;)V

    .line 1173
    :cond_0
    invoke-static {}, Levn;->p()Levn;

    move-result-object v1

    sget v2, Levh;->c:I

    invoke-virtual {v1, v2}, Levn;->a(I)V

    .line 1175
    iget-object v1, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    if-eqz v1, :cond_1

    .line 1176
    iget-object v1, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1177
    .local v0, "confStr":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    invoke-interface {v1, v0, p2, v5}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a(Ljava/lang/String;IZ)V

    .line 1179
    .end local v0    # "confStr":Ljava/lang/String;
    :cond_1
    return-void

    .line 1176
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;Z)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "avCallState"    # Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    .param p3, "beAudioOnly"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1100
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lexl;->b:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "onAnswer "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ", audio "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 1101
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1100
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    iget-object v1, p0, Lexl;->a:Liee;

    if-eqz v1, :cond_1

    .line 1103
    iget-object v1, p0, Lexl;->a:Liee;

    invoke-interface {v1}, Liee;->q()Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    move-result-object v0

    .line 1104
    .local v0, "mode":Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;
    iget-boolean v1, p0, Lexl;->s:Z

    if-nez v1, :cond_4

    .line 1108
    sget-object v1, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    if-eq v0, v1, :cond_4

    .line 1110
    iget-object v1, p0, Lexl;->B:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;->SENSOR_RUNNING:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    if-ne v1, v2, :cond_0

    .line 1111
    iget-object v1, p0, Lexl;->e:Landroid/content/Context;

    invoke-static {v1}, Lien;->a(Landroid/content/Context;)V

    .line 1118
    :cond_0
    :goto_0
    invoke-static {}, Lewx;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1119
    iget-object v1, p0, Lexl;->a:Liee;

    invoke-interface {v1, v0}, Liee;->a(Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;)V

    .line 1125
    .end local v0    # "mode":Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;
    :cond_1
    :goto_1
    invoke-static {}, Levn;->p()Levn;

    move-result-object v1

    sget v2, Levh;->b:I

    invoke-virtual {v1, v2}, Levn;->a(I)V

    .line 1127
    iget-object v1, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    if-eqz v1, :cond_2

    .line 1128
    iget-object v1, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    iget-object v2, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->c(Ljava/lang/String;)V

    .line 1131
    :cond_2
    iget-boolean v1, p0, Lexl;->w:Z

    if-eqz v1, :cond_3

    .line 1132
    invoke-direct {p0}, Lexl;->v()V

    .line 6614
    :cond_3
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lexl$2;

    invoke-direct {v2, p0}, Lexl$2;-><init>(Lexl;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1135
    return-void

    .line 1115
    .restart local v0    # "mode":Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;
    :cond_4
    invoke-static {}, Lien;->a()V

    goto :goto_0

    .line 1121
    :cond_5
    iget-object v1, p0, Lexl;->a:Liee;

    invoke-interface {v1}, Liee;->h()V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "extraMsg"    # Ljava/lang/String;
    .param p2, "playLocalRingtone"    # Z

    .prologue
    .line 1140
    return-void
.end method

.method public final a(Z)V
    .locals 4
    .param p1, "connected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1322
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lexl;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "network change "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    iput-boolean p1, p0, Lexl;->t:Z

    .line 1327
    return-void
.end method

.method public final a(ZZ)V
    .locals 7
    .param p1, "isPlugin"    # Z
    .param p2, "isEarPhone"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1294
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lexl;->b:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "Earphone: "

    aput-object v3, v2, v5

    .line 1295
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1294
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    if-eqz p1, :cond_1

    .line 1297
    iput-boolean v6, p0, Lexl;->s:Z

    .line 1298
    invoke-static {}, Lien;->a()V

    .line 1300
    iget-object v0, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    if-eqz v0, :cond_0

    .line 1301
    iget-object v0, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->g()V

    .line 1318
    :cond_0
    :goto_0
    return-void

    .line 1304
    :cond_1
    iget-boolean v0, p0, Lexl;->s:Z

    if-eqz v0, :cond_0

    .line 1307
    iput-boolean v5, p0, Lexl;->s:Z

    .line 1308
    if-eqz p2, :cond_2

    .line 1310
    iget-object v0, p0, Lexl;->B:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;->SENSOR_RUNNING:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    if-ne v0, v1, :cond_2

    .line 1311
    iget-object v0, p0, Lexl;->e:Landroid/content/Context;

    invoke-static {v0}, Lien;->a(Landroid/content/Context;)V

    .line 1314
    :cond_2
    iget-object v0, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    if-eqz v0, :cond_0

    .line 1315
    iget-object v0, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    invoke-interface {v0, p2}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->b(Z)V

    goto :goto_0
.end method

.method public final a(ZZZ)V
    .locals 6
    .param p1, "bluetoothConnected"    # Z
    .param p2, "headsetConnected"    # Z
    .param p3, "audioConnected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1331
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lexl;->b:Ljava/lang/String;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Bluetooth headset: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 1332
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ","

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 1333
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, ","

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 1334
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1331
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    iget-boolean v1, p0, Lexl;->w:Z

    if-eq v1, p2, :cond_2

    .line 1336
    iput-boolean p2, p0, Lexl;->w:Z

    .line 1338
    if-nez p2, :cond_4

    .line 1340
    sget-object v0, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->EarPhone:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    .line 1345
    .local v0, "voiceMode":Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;
    :goto_0
    iget-object v1, p0, Lexl;->a:Liee;

    if-eqz v1, :cond_0

    .line 1346
    invoke-static {}, Lewx;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1347
    iget-object v1, p0, Lexl;->a:Liee;

    invoke-interface {v1, v0}, Liee;->a(Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;)V

    .line 1353
    :cond_0
    :goto_1
    iget-object v1, p0, Lexl;->B:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;->SENSOR_RUNNING:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    if-ne v1, v2, :cond_1

    .line 1354
    iget-object v1, p0, Lexl;->e:Landroid/content/Context;

    invoke-static {v1}, Lien;->a(Landroid/content/Context;)V

    .line 1356
    :cond_1
    iget-object v1, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    if-eqz v1, :cond_2

    .line 1357
    iget-object v1, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    invoke-interface {v1, p2}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->c(Z)V

    .line 1361
    .end local v0    # "voiceMode":Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;
    :cond_2
    iput-boolean p3, p0, Lexl;->x:Z

    .line 1362
    if-eqz p2, :cond_3

    if-nez p3, :cond_3

    invoke-static {}, Levn;->p()Levn;

    move-result-object v1

    invoke-virtual {v1}, Levn;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1363
    invoke-direct {p0}, Lexl;->v()V

    .line 1365
    :cond_3
    return-void

    .line 1342
    :cond_4
    invoke-virtual {p0}, Lexl;->q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lexl;->l:Ljava/lang/String;

    .line 1343
    sget-object v0, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->BluetoothHeadset:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    .restart local v0    # "voiceMode":Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;
    goto :goto_0

    .line 1349
    :cond_5
    iget-object v1, p0, Lexl;->a:Liee;

    invoke-interface {v1}, Liee;->h()V

    goto :goto_1
.end method

.method public final a(Lied$b;)Z
    .locals 10
    .param p1, "errorInfo"    # Lied$b;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1012
    if-nez p1, :cond_1

    .line 1044
    :cond_0
    :goto_0
    return v2

    .line 1015
    :cond_1
    iget v0, p1, Lied$b;->a:I

    .line 1016
    .local v0, "errCode":I
    iget-object v1, p1, Lied$b;->b:Ljava/lang/String;

    .line 1017
    .local v1, "errMsg":Ljava/lang/String;
    const-string/jumbo v4, "tele_conf"

    sget-object v5, Lexl;->b:Ljava/lang/String;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "Error code "

    aput-object v7, v6, v2

    .line 1018
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, " cause "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1017
    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    sget-object v4, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalArriveImmediately:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v4}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v4

    if-eq v0, v4, :cond_2

    sget-object v4, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCallbackLater:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 1020
    invoke-virtual {v4}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v4

    if-eq v0, v4, :cond_2

    sget-object v4, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalInconvenience:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 1021
    invoke-virtual {v4}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v4

    if-eq v0, v4, :cond_2

    sget-object v4, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 1022
    invoke-virtual {v4}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v4

    if-eq v0, v4, :cond_2

    sget-object v4, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCallingTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 1023
    invoke-virtual {v4}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v4

    if-eq v0, v4, :cond_2

    sget-object v4, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalReject:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 1024
    invoke-virtual {v4}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v4

    if-eq v0, v4, :cond_2

    sget-object v4, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalRemoteDoNotDisturb:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 1025
    invoke-virtual {v4}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v4

    if-eq v0, v4, :cond_2

    .line 1027
    sget-object v4, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VOIP_EXCEPTION:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    invoke-direct {p0, v4, v0, v1}, Lexl;->a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;ILjava/lang/String;)V

    .line 1029
    :cond_2
    sget-object v4, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_DeviceInitFailed:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v4}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v4

    if-eq v0, v4, :cond_3

    sget-object v4, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_MediaInitFailed:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 1030
    invoke-virtual {v4}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v4

    if-ne v0, v4, :cond_4

    .line 1031
    :cond_3
    iput-boolean v3, p0, Lexl;->o:Z

    .line 1033
    iget-object v4, p0, Lexl;->h:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v4, :cond_5

    .line 1034
    iget-object v4, p0, Lexl;->h:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v4}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v4

    sget-object v5, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v4, v5, :cond_5

    move v2, v3

    .line 1035
    goto/16 :goto_0

    .line 1038
    :cond_4
    sget-object v3, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetDisconnect:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v3

    if-ne v0, v3, :cond_5

    .line 1039
    sget-object v3, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VOIP_CONNECT_TIMEOUT:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    invoke-direct {p0, v3, v0, v1}, Lexl;->a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;ILjava/lang/String;)V

    .line 1041
    :cond_5
    iget-object v3, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    if-eqz v3, :cond_0

    .line 1042
    iget-object v3, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    invoke-interface {v3, v0, v1}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final b(ILjava/lang/String;)V
    .locals 4
    .param p1, "errCode"    # I
    .param p2, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1219
    sget-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_RecvDataTimeoutWarning:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1220
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lexl;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Caller data-timeout warning "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    sget-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VOIP_EXCEPTION:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    invoke-direct {p0, v0, p1, p2}, Lexl;->a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;ILjava/lang/String;)V

    .line 1224
    :cond_0
    return-void
.end method

.method public final b(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 6
    .param p1, "user"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 580
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lexl;->b:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Kick out member "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 585
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 584
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeId:Ljava/lang/Long;

    .line 587
    iget-object v1, p0, Lexl;->i:Leyc;

    iget-object v0, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;

    move-result-object v2

    new-instance v0, Lexl$6;

    invoke-direct {v0, p0, p1}, Lexl$6;-><init>(Lexl;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    const-class v3, Leyo$d;

    iget-object v4, p0, Lexl;->d:Landroid/app/Activity;

    .line 588
    invoke-static {v0, v3, v4}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$d;

    .line 587
    invoke-virtual {v1, v2, v0}, Leyc;->b(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$d;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1144
    iget-object v1, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lexl;->a:Liee;

    if-nez v1, :cond_1

    .line 1161
    :cond_0
    :goto_0
    return-void

    .line 1147
    :cond_1
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lexl;->b:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "onAcceptComplete "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    invoke-static {}, Lewx;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lexl;->w:Z

    if-nez v1, :cond_3

    .line 1150
    :cond_2
    iget-object v1, p0, Lexl;->a:Liee;

    invoke-interface {v1}, Liee;->h()V

    .line 1153
    :cond_3
    iget-object v1, p0, Lexl;->B:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;->SENSOR_RUNNING:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    if-ne v1, v2, :cond_4

    .line 1154
    iget-object v1, p0, Lexl;->e:Landroid/content/Context;

    invoke-static {v1}, Lien;->a(Landroid/content/Context;)V

    .line 1157
    :cond_4
    iget-object v1, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    if-eqz v1, :cond_0

    .line 1158
    iget-object v1, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1159
    .local v0, "confId":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    invoke-interface {v1, v0}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 1158
    .end local v0    # "confId":Ljava/lang/String;
    :cond_5
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "remoteUid"    # Ljava/lang/String;
    .param p2, "incomingCall"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 173
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lexl;->b:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "Init "

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ","

    aput-object v5, v3, v4

    .line 174
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2376
    invoke-static {}, Liec;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2377
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lexl;->b:Ljava/lang/String;

    const-string/jumbo v3, "AVEngine not initialized"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2378
    sget-object v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VOIP_REG_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    const-string/jumbo v2, "AVEngine no init"

    invoke-direct {p0, v1, v6, v2}, Lexl;->a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;ILjava/lang/String;)V

    .line 2379
    iget-object v1, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    if-eqz v1, :cond_0

    .line 2380
    iget-object v1, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_INIT:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3, v8}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;ILjava/lang/String;)V

    .line 177
    :cond_0
    :goto_0
    iget-object v1, p0, Lexl;->a:Liee;

    if-nez v1, :cond_3

    .line 178
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lexl;->b:Ljava/lang/String;

    const-string/jumbo v3, "AudioService obj is null"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    sget-object v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VOIP_EXCEPTION:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    const-string/jumbo v2, "AudioService is null"

    invoke-direct {p0, v1, v6, v2}, Lexl;->a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;ILjava/lang/String;)V

    .line 180
    iget-object v1, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_INIT:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    const/4 v3, -0x2

    invoke-interface {v1, v2, v3, v8}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;ILjava/lang/String;)V

    .line 2580
    :cond_1
    :goto_1
    return-void

    .line 2384
    :cond_2
    const-class v1, Lier;

    invoke-static {v1}, Liec;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Liee;

    iput-object v1, p0, Lexl;->a:Liee;

    .line 2385
    iget-object v1, p0, Lexl;->a:Liee;

    if-eqz v1, :cond_0

    .line 2386
    iget-object v1, p0, Lexl;->a:Liee;

    invoke-interface {v1, p0}, Liee;->a(Lied$e;)V

    .line 2387
    iget-object v1, p0, Lexl;->a:Liee;

    invoke-interface {v1, p0}, Liee;->a(Lied$c;)V

    .line 2388
    iget-object v1, p0, Lexl;->a:Liee;

    invoke-interface {v1, p0}, Liee;->a(Lied$d;)V

    .line 2389
    iget-object v1, p0, Lexl;->a:Liee;

    invoke-interface {v1, p0}, Liee;->a(Lied$h;)V

    .line 2390
    iget-object v1, p0, Lexl;->a:Liee;

    invoke-interface {v1, p0}, Liee;->a(Lied$f;)V

    .line 2392
    invoke-static {}, Lewh;->a()Lewh;

    invoke-static {}, Lewh;->k()Z

    move-result v1

    .line 2393
    iget-object v2, p0, Lexl;->a:Liee;

    invoke-interface {v2, v1}, Liee;->b(Z)V

    .line 2395
    iget-object v1, p0, Lexl;->a:Liee;

    invoke-interface {v1, v6}, Liee;->c(Z)V

    .line 2397
    iget-object v1, p0, Lexl;->a:Liee;

    invoke-interface {v1}, Liee;->j()V

    goto :goto_0

    .line 185
    :cond_3
    iput-object p1, p0, Lexl;->m:Ljava/lang/String;

    .line 186
    iput-boolean p2, p0, Lexl;->n:Z

    .line 187
    invoke-static {}, Leyc;->a()Leyc;

    move-result-object v1

    iput-object v1, p0, Lexl;->i:Leyc;

    .line 188
    invoke-static {}, Lcpi;->d()Z

    move-result v1

    iput-boolean v1, p0, Lexl;->r:Z

    .line 189
    iget-object v1, p0, Lexl;->a:Liee;

    if-eqz v1, :cond_4

    .line 191
    iget-object v1, p0, Lexl;->a:Liee;

    iget-object v2, p0, Lexl;->m:Ljava/lang/String;

    invoke-interface {v1, v2}, Liee;->a(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v0

    .line 192
    .local v0, "avSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    if-eqz v0, :cond_4

    .line 193
    iput-object v0, p0, Lexl;->h:Lcom/alibaba/wukong/openav/external/IAVSession;

    .line 194
    invoke-interface {v0}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v1

    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v1, v2, :cond_4

    .line 195
    iget-object v1, p0, Lexl;->a:Liee;

    invoke-interface {v1}, Liee;->m()Z

    move-result v1

    iput-boolean v1, p0, Lexl;->w:Z

    .line 196
    iget-object v1, p0, Lexl;->a:Liee;

    invoke-interface {v1}, Liee;->l()Z

    move-result v1

    iput-boolean v1, p0, Lexl;->s:Z

    .line 197
    invoke-virtual {p0}, Lexl;->q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lexl;->l:Ljava/lang/String;

    .line 198
    iget-object v1, p0, Lexl;->a:Liee;

    invoke-interface {v1}, Liee;->q()Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    move-result-object v1

    iput-object v1, p0, Lexl;->z:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    .line 2504
    .end local v0    # "avSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    :cond_4
    iget-object v1, p0, Lexl;->k:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_5

    .line 2505
    new-instance v1, Lexl$10;

    invoke-direct {v1, p0}, Lexl$10;-><init>(Lexl;)V

    iput-object v1, p0, Lexl;->k:Landroid/content/BroadcastReceiver;

    .line 2558
    :cond_5
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2559
    const-string/jumbo v2, "com.workapp.conversation.msg.add"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2560
    const-string/jumbo v2, "com.workapp.choose.people.from.group.member"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2561
    const-string/jumbo v2, "com.workapp.choose.people.from.contact"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2563
    iget-object v2, p0, Lexl;->j:Ldq;

    iget-object v3, p0, Lexl;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2565
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2566
    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2567
    iget-object v2, p0, Lexl;->e:Landroid/content/Context;

    iget-object v3, p0, Lexl;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2570
    iget-object v1, p0, Lexl;->e:Landroid/content/Context;

    const-string/jumbo v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lexl;->f:Landroid/hardware/SensorManager;

    .line 2571
    iget-object v1, p0, Lexl;->f:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 2572
    iget-object v2, p0, Lexl;->f:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_6

    if-nez v1, :cond_7

    .line 2573
    :cond_6
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lexl;->b:Ljava/lang/String;

    const-string/jumbo v3, "Invalid sensor"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2577
    :cond_7
    :try_start_0
    iget-object v2, p0, Lexl;->f:Landroid/hardware/SensorManager;

    const/4 v3, 0x3

    invoke-virtual {v2, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 2578
    :catch_0
    move-exception v1

    .line 2579
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public final b(Z)V
    .locals 6
    .param p1, "muted"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 630
    iget-object v1, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    if-nez v1, :cond_1

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    new-instance v1, Lexl$7;

    invoke-direct {v1, p0, p1}, Lexl$7;-><init>(Lexl;Z)V

    const-class v2, Leyo$d;

    iget-object v3, p0, Lexl;->d:Landroid/app/Activity;

    .line 634
    invoke-static {v1, v2, v3}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$d;

    .line 678
    .local v0, "operListener":Leyo$d;
    if-eqz p1, :cond_2

    .line 679
    iget-object v1, p0, Lexl;->i:Leyc;

    iget-object v2, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Leyc;->g(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$d;)V

    .line 683
    :goto_1
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lexl;->b:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Mute all member "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 684
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 683
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 681
    :cond_2
    iget-object v1, p0, Lexl;->i:Leyc;

    iget-object v2, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Leyc;->h(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$d;)V

    goto :goto_1
.end method

.method public final b()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 322
    iget-object v2, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lexl;->a:Liee;

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 340
    :cond_1
    :goto_0
    return v0

    .line 325
    :cond_2
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lexl;->b:Ljava/lang/String;

    const-string/jumbo v4, "Accept voip conf "

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v2, p0, Lexl;->d:Landroid/app/Activity;

    invoke-static {v2}, Leyx;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lexl;->o:Z

    if-eqz v2, :cond_5

    .line 327
    :cond_3
    iget-object v0, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    if-eqz v0, :cond_4

    .line 328
    iget-object v0, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->e()V

    :cond_4
    move v0, v1

    .line 330
    goto :goto_0

    .line 332
    :cond_5
    iget-object v2, p0, Lexl;->h:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v2, :cond_1

    .line 333
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lexl;->b:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "Accept voip conf "

    aput-object v5, v4, v1

    iget-object v1, p0, Lexl;->h:Lcom/alibaba/wukong/openav/external/IAVSession;

    .line 334
    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->e()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lexl;->a:Liee;

    invoke-interface {v1}, Liee;->d()I

    .line 336
    iget-object v1, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    if-eqz v1, :cond_1

    .line 337
    iget-object v1, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    iget-object v2, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(I)Z
    .locals 10
    .param p1, "errCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 363
    iget-object v4, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    .line 364
    :cond_0
    const-string/jumbo v2, "tele_conf"

    sget-object v4, Lexl;->b:Ljava/lang/String;

    const-string/jumbo v5, "Invalid conf when leave"

    invoke-static {v2, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 386
    :cond_1
    :goto_0
    return v2

    .line 367
    :cond_2
    const-string/jumbo v4, "tele_conf"

    sget-object v5, Lexl;->b:Ljava/lang/String;

    const-string/jumbo v6, "Leave voip conf"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v4, p0, Lexl;->v:Ljava/lang/Object;

    monitor-enter v4

    .line 369
    :try_start_0
    iget-object v5, p0, Lexl;->h:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v5, :cond_3

    .line 370
    iget-object v5, p0, Lexl;->h:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v5}, Lcom/alibaba/wukong/openav/external/IAVSession;->m()I

    move-result v0

    .line 371
    .local v0, "code":I
    sget-object v5, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NoErr:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v5}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v5

    if-eq v0, v5, :cond_3

    if-eq v0, p1, :cond_3

    .line 372
    move p1, v0

    .line 375
    .end local v0    # "code":I
    :cond_3
    const-string/jumbo v5, "tele_conf"

    sget-object v6, Lexl;->b:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "Leave conference: "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 376
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 375
    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3428
    iget-object v5, p0, Lexl;->a:Liee;

    if-nez v5, :cond_5

    .line 378
    :cond_4
    :goto_1
    invoke-static {}, Levn;->p()Levn;

    move-result-object v5

    sget v6, Levh;->c:I

    invoke-virtual {v5, v6}, Levn;->a(I)V

    .line 379
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    iget-object v4, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    if-eqz v4, :cond_1

    .line 382
    iget-object v4, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "confID":Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    invoke-interface {v4, v1, p1, v3}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 3431
    .end local v1    # "confID":Ljava/lang/String;
    :cond_5
    :try_start_1
    iget-object v5, p0, Lexl;->h:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v5, :cond_9

    .line 3433
    iget-object v5, p0, Lexl;->h:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v5}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v5

    .line 3434
    const-string/jumbo v6, "tele_conf"

    sget-object v7, Lexl;->b:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Hang up for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3435
    sget-object v6, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v5, v6, :cond_7

    .line 3436
    sget-object v5, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NoErr:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v5}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v5

    if-ne p1, v5, :cond_6

    .line 3437
    iget-object v5, p0, Lexl;->h:Lcom/alibaba/wukong/openav/external/IAVSession;

    sget-object v6, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalReject:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v6}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(I)V

    .line 3441
    :goto_3
    iget-object v5, p0, Lexl;->a:Liee;

    invoke-interface {v5}, Liee;->c()I

    goto :goto_1

    .line 379
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 3439
    :cond_6
    :try_start_2
    iget-object v5, p0, Lexl;->h:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v5, p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(I)V

    goto :goto_3

    .line 3443
    :cond_7
    sget-object v6, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->IDLE:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v5, v6, :cond_4

    sget-object v6, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CLOSE:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v5, v6, :cond_4

    .line 3445
    sget-object v6, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v5, v6, :cond_8

    sget-object v5, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NoErr:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 3446
    invoke-virtual {v5}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v5

    if-ne p1, v5, :cond_8

    .line 3447
    iget-object v5, p0, Lexl;->h:Lcom/alibaba/wukong/openav/external/IAVSession;

    sget-object v6, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCancel:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v6}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(I)V

    .line 3451
    :goto_4
    iget-object v5, p0, Lexl;->a:Liee;

    invoke-interface {v5}, Liee;->b()I

    goto/16 :goto_1

    .line 3449
    :cond_8
    iget-object v5, p0, Lexl;->h:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v5, p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(I)V

    goto :goto_4

    .line 3455
    :cond_9
    iget-object v5, p0, Lexl;->a:Liee;

    invoke-interface {v5}, Liee;->b()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 382
    :cond_a
    const-string/jumbo v1, ""

    goto/16 :goto_2
.end method

.method public final c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1203
    iget-object v1, p0, Lexl;->h:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    .line 1204
    .local v0, "callstate":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v1, v0, :cond_0

    .line 1205
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lexl$9;

    invoke-direct {v2, p0}, Lexl$9;-><init>(Lexl;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1215
    :cond_0
    return-void
.end method

.method public final c(ILjava/lang/String;)V
    .locals 4
    .param p1, "errCode"    # I
    .param p2, "errReason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1228
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lexl;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Abnorm warning "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    sget-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VOIP_EXCEPTION:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    invoke-direct {p0, v0, p1, p2}, Lexl;->a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;ILjava/lang/String;)V

    .line 1231
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1197
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lexl;->b:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "onStartCallReady "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 1198
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1197
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    return-void
.end method

.method public final c(Z)V
    .locals 6
    .param p1, "up"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 910
    const/4 v0, 0x0

    .line 911
    .local v0, "beRing":Z
    invoke-virtual {p0}, Lexl;->k()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v1

    .line 912
    .local v1, "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v2, v1, :cond_0

    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v2, v1, :cond_1

    .line 913
    :cond_0
    const/4 v0, 0x1

    .line 915
    :cond_1
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lexl;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Adjust volume: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    if-eqz p1, :cond_3

    .line 917
    if-eqz v0, :cond_2

    .line 918
    iget-object v2, p0, Lexl;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->a(Landroid/content/Context;)V

    .line 929
    :goto_0
    return-void

    .line 920
    :cond_2
    iget-object v2, p0, Lexl;->a:Liee;

    invoke-interface {v2}, Liee;->o()V

    goto :goto_0

    .line 923
    :cond_3
    if-eqz v0, :cond_4

    .line 924
    iget-object v2, p0, Lexl;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 926
    :cond_4
    iget-object v2, p0, Lexl;->a:Liee;

    invoke-interface {v2}, Liee;->p()V

    goto :goto_0
.end method

.method public final d()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 346
    sget-object v3, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NoErr:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    .line 347
    .local v1, "errCode":I
    const/4 v2, 0x0

    .line 348
    .local v2, "success":Z
    iget-object v3, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    if-eqz v3, :cond_0

    .line 349
    invoke-virtual {p0, v1}, Lexl;->b(I)Z

    move-result v2

    .line 351
    :cond_0
    if-nez v2, :cond_1

    .line 352
    iget-object v3, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    if-eqz v3, :cond_1

    .line 353
    iget-object v3, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "confID":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    invoke-interface {v3, v0, v1, v7}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a(Ljava/lang/String;IZ)V

    .line 357
    .end local v0    # "confID":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "tele_conf"

    sget-object v4, Lexl;->b:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "Reject conf with "

    aput-object v6, v5, v7

    const/4 v6, 0x1

    .line 358
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 357
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return-void

    .line 353
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final d(ILjava/lang/String;)V
    .locals 5
    .param p1, "errCode"    # I
    .param p2, "errReason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1235
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lexl;->b:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "No notification callback "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1236
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ": "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1235
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    sget-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalRemoteCloseNotify:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1239
    iget-object v0, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lexl;->c:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->b(ILjava/lang/String;)V

    .line 1243
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 391
    iget-object v0, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    iget-object v1, p0, Lexl;->i:Leyc;

    iget-object v0, p0, Lexl;->u:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;

    move-result-object v2

    new-instance v0, Lexl$4;

    invoke-direct {v0, p0}, Lexl$4;-><init>(Lexl;)V

    const-class v3, Leyo$e;

    iget-object v4, p0, Lexl;->d:Landroid/app/Activity;

    .line 395
    invoke-static {v0, v3, v4}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$e;

    .line 394
    invoke-virtual {v1, v2, v0}, Leyc;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$e;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 789
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lexl;->b:Ljava/lang/String;

    const-string/jumbo v2, "Stop ring"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    iget-object v0, p0, Lexl;->g:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lexl;->g:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->b()V

    .line 793
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 934
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 939
    return-void
.end method

.method public final i()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 943
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->isLogin()Z

    move-result v0

    .line 944
    .local v0, "isLogin":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lexl;->u()Z

    move-result v1

    if-nez v1, :cond_3

    .line 946
    :cond_0
    iget-object v1, p0, Lexl;->a:Liee;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lexl;->a:Liee;

    invoke-interface {v1}, Liee;->k()Z

    move-result v1

    if-nez v1, :cond_1

    .line 947
    iget-object v1, p0, Lexl;->a:Liee;

    invoke-interface {v1}, Liee;->i()V

    .line 949
    :cond_1
    iget-object v1, p0, Lexl;->g:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    if-eqz v1, :cond_2

    .line 950
    iget-object v1, p0, Lexl;->g:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->c()V

    .line 951
    iput-object v4, p0, Lexl;->g:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    .line 953
    :cond_2
    invoke-static {}, Lewr;->a()Lewr;

    move-result-object v1

    invoke-virtual {v1}, Lewr;->b()V

    .line 5610
    iget-object v1, p0, Lexl;->C:Liei$a;

    invoke-static {v1}, Leyz;->b(Liei$a;)V

    .line 957
    iget-object v1, p0, Lexl;->e:Landroid/content/Context;

    const/16 v2, 0x2711

    invoke-static {v1, v2}, Lewp;->c(Landroid/content/Context;I)V

    .line 958
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lexl;->b:Ljava/lang/String;

    const-string/jumbo v3, "release in onDestroy"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    :cond_3
    invoke-static {}, Lien;->a()V

    .line 6402
    iget-object v1, p0, Lexl;->a:Liee;

    if-eqz v1, :cond_5

    .line 6403
    iget-object v1, p0, Lexl;->a:Liee;

    invoke-interface {v1, p0}, Liee;->b(Lied$e;)V

    .line 6404
    iget-object v1, p0, Lexl;->a:Liee;

    invoke-interface {v1, p0}, Liee;->b(Lied$c;)V

    .line 6405
    iget-object v1, p0, Lexl;->a:Liee;

    invoke-interface {v1, p0}, Liee;->b(Lied$d;)V

    .line 6406
    iget-object v1, p0, Lexl;->a:Liee;

    invoke-interface {v1, p0}, Liee;->b(Lied$h;)V

    .line 6407
    iget-object v1, p0, Lexl;->a:Liee;

    invoke-interface {v1, p0}, Liee;->b(Lied$f;)V

    .line 6408
    invoke-direct {p0}, Lexl;->u()Z

    move-result v1

    if-nez v1, :cond_4

    .line 6409
    iget-object v1, p0, Lexl;->a:Liee;

    invoke-interface {v1}, Liee;->f()V

    .line 6411
    :cond_4
    iput-object v4, p0, Lexl;->a:Liee;

    .line 6584
    :cond_5
    iget-object v1, p0, Lexl;->k:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_8

    .line 6585
    iget-object v1, p0, Lexl;->j:Ldq;

    if-eqz v1, :cond_6

    .line 6586
    iget-object v1, p0, Lexl;->j:Ldq;

    iget-object v2, p0, Lexl;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 6588
    :cond_6
    iget-object v1, p0, Lexl;->e:Landroid/content/Context;

    if-eqz v1, :cond_7

    .line 6589
    iget-object v1, p0, Lexl;->e:Landroid/content/Context;

    iget-object v2, p0, Lexl;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6591
    :cond_7
    iput-object v4, p0, Lexl;->k:Landroid/content/BroadcastReceiver;

    .line 6593
    :cond_8
    iget-object v1, p0, Lexl;->f:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_9

    .line 6596
    :try_start_0
    iget-object v1, p0, Lexl;->f:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 967
    :cond_9
    :goto_0
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lexl;->b:Ljava/lang/String;

    const-string/jumbo v3, "Presenter destroy"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    return-void

    .line 6597
    :catch_0
    move-exception v1

    .line 6598
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lexl;->g:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lexl;->g:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->a()Z

    move-result v0

    .line 800
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lexl;->h:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lexl;->h:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v0}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    .line 808
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 813
    iget-object v1, p0, Lexl;->a:Liee;

    if-eqz v1, :cond_0

    .line 814
    iget-object v1, p0, Lexl;->a:Liee;

    invoke-interface {v1}, Liee;->g()Z

    move-result v0

    .line 815
    .local v0, "isMute":Z
    iget-object v4, p0, Lexl;->a:Liee;

    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Liee;->a(Z)V

    .line 817
    const-string/jumbo v1, "tele_conf"

    sget-object v4, Lexl;->b:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "Mic state "

    aput-object v6, v5, v3

    .line 818
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 817
    invoke-static {v1, v4, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    .end local v0    # "isMute":Z
    :cond_0
    return-void

    .restart local v0    # "isMute":Z
    :cond_1
    move v1, v3

    .line 815
    goto :goto_0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lexl;->a:Liee;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lexl;->a:Liee;

    invoke-interface {v0}, Liee;->g()Z

    move-result v0

    .line 863
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 868
    iget-boolean v0, p0, Lexl;->w:Z

    return v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 873
    iget-boolean v0, p0, Lexl;->s:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1008
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 972
    iget-object v3, p0, Lexl;->h:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lexl;->a:Liee;

    if-nez v3, :cond_1

    .line 1003
    :cond_0
    :goto_0
    return-void

    .line 976
    :cond_1
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v3, v4

    .line 977
    .local v1, "distance":F
    const-string/jumbo v5, "tele_conf"

    sget-object v6, Lexl;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "onSensorChanged distance: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "; "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    if-eqz v3, :cond_2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 978
    invoke-virtual {v3}, Landroid/hardware/Sensor;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 977
    invoke-static {v5, v6, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;->SENSOR_PREPARING:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    iget-object v5, p0, Lexl;->B:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    if-ne v3, v5, :cond_3

    .line 980
    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;->SENSOR_READY:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    iput-object v3, p0, Lexl;->B:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    .line 982
    const/4 v3, 0x0

    cmpl-float v3, v3, v1

    if-nez v3, :cond_3

    .line 983
    const-string/jumbo v3, "tele_conf"

    sget-object v4, Lexl;->b:Ljava/lang/String;

    const-string/jumbo v5, "onSensorChanged proximity sensor disabled ."

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 978
    :cond_2
    const-string/jumbo v3, ""

    goto :goto_1

    .line 988
    :cond_3
    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;->SENSOR_READY:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    iget-object v5, p0, Lexl;->B:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    if-ne v3, v5, :cond_5

    .line 989
    const-string/jumbo v3, "tele_conf"

    sget-object v5, Lexl;->b:Ljava/lang/String;

    const-string/jumbo v6, "onSensorChanged proximity sensor startup."

    invoke-static {v3, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;->SENSOR_RUNNING:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    iput-object v3, p0, Lexl;->B:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    .line 993
    iget-object v3, p0, Lexl;->h:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v3}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    .line 994
    .local v0, "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    sget-object v3, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v0, v3, :cond_4

    sget-object v3, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v0, v3, :cond_5

    .line 996
    :cond_4
    iget-object v3, p0, Lexl;->e:Landroid/content/Context;

    invoke-static {v3}, Lien;->a(Landroid/content/Context;)V

    .line 999
    .end local v0    # "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    :cond_5
    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    if-eqz v3, :cond_0

    .line 1000
    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    .line 1001
    .local v2, "maxRange":F
    float-to-double v6, v1

    const-wide/16 v8, 0x0

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_6

    const/high16 v3, 0x40a00000    # 5.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_6

    cmpg-float v3, v1, v2

    if-gez v3, :cond_6

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, p0, Lexl;->A:Z

    goto/16 :goto_0

    :cond_6
    move v3, v4

    goto :goto_2
.end method

.method public final p()Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lexl;->a:Liee;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lexl;->a:Liee;

    invoke-interface {v0}, Liee;->q()Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    move-result-object v0

    iput-object v0, p0, Lexl;->z:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    .line 855
    :cond_0
    iget-object v0, p0, Lexl;->z:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 878
    const/4 v1, 0x0

    .line 879
    .local v1, "deviceName":Ljava/lang/String;
    iget-object v2, p0, Lexl;->a:Liee;

    if-nez v2, :cond_0

    .line 880
    const/4 v2, 0x0

    .line 886
    :goto_0
    return-object v2

    .line 882
    :cond_0
    iget-object v2, p0, Lexl;->a:Liee;

    invoke-interface {v2}, Liee;->n()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 883
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 884
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v2, v1

    .line 886
    goto :goto_0
.end method

.method public final r()V
    .locals 1

    .prologue
    .line 900
    .line 5605
    iget-object v0, p0, Lexl;->C:Liei$a;

    invoke-static {v0}, Leyz;->a(Liei$a;)V

    .line 901
    return-void
.end method

.method public final s()Liei$a;
    .locals 1

    .prologue
    .line 1369
    iget-object v0, p0, Lexl;->C:Liei$a;

    return-object v0
.end method
