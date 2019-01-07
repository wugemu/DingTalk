.class public Lews;
.super Lcom/alibaba/android/teleconf/operation/BaseFloatingManager;
.source "TeleFloatingConfManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile i:Lews;


# instance fields
.field private b:Z

.field private c:J

.field private d:Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

.field private e:Landroid/os/Handler;

.field private f:Lcjo$a;

.field private g:Lcjo$a;

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lews;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lews;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lews;->b:Z

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lews;->c:J

    .line 57
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iput-object v0, p0, Lews;->e:Landroid/os/Handler;

    .line 88
    invoke-direct {p0}, Lews;->d()V

    .line 89
    return-void
.end method

.method static synthetic a(Lews;)Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;
    .locals 1
    .param p0, "x0"    # Lews;

    .prologue
    .line 48
    iget-object v0, p0, Lews;->d:Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

    return-object v0
.end method

.method static synthetic a(Lews;Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;)Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;
    .locals 0
    .param p0, "x0"    # Lews;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

    .prologue
    .line 48
    iput-object p1, p0, Lews;->d:Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

    return-object p1
.end method

.method public static a()Lews;
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lews;->i:Lews;

    if-nez v0, :cond_1

    .line 66
    const-class v1, Lews;

    monitor-enter v1

    .line 67
    :try_start_0
    sget-object v0, Lews;->i:Lews;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lews;

    invoke-direct {v0}, Lews;-><init>()V

    sput-object v0, Lews;->i:Lews;

    .line 70
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_1
    sget-object v0, Lews;->i:Lews;

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lews;Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;)V
    .locals 5
    .param p0, "x0"    # Lews;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;

    .prologue
    const/4 v4, 0x0

    .line 48
    .line 2241
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;->conferenceId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Levi;->p()Levi;

    move-result-object v2

    invoke-virtual {v2}, Levi;->e()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2248
    :cond_0
    :goto_0
    return-void

    .line 2244
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;->level:Ljava/lang/Long;

    .line 3044
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 2244
    long-to-int v0, v0

    .line 2245
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2247
    :pswitch_0
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;->cause:Ljava/lang/String;

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 2250
    :pswitch_1
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    sget v1, Levh;->c:I

    invoke-virtual {v0, v1}, Levi;->a(I)V

    .line 2251
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    invoke-virtual {v0}, Levi;->q()Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v0

    .line 2252
    invoke-static {}, Lewl;->h()V

    .line 2253
    sget-object v1, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_CONF:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {p0, v1}, Lews;->b(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    .line 2254
    invoke-static {}, Lewg;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2255
    invoke-static {}, Leyc;->a()Leyc;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Leyc;->d(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$d;)V

    .line 2259
    :goto_1
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;->cause:Ljava/lang/String;

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 2262
    const/16 v0, 0x2710

    invoke-static {v4, v0}, Lewp;->c(Landroid/content/Context;I)V

    goto :goto_0

    .line 2257
    :cond_2
    invoke-static {}, Leyc;->a()Leyc;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Leyc;->c(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$d;)V

    goto :goto_1

    .line 2245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lews;Z)V
    .locals 2
    .param p0, "x0"    # Lews;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    .line 3194
    iget-object v0, p0, Lews;->d:Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

    if-nez v0, :cond_1

    .line 3200
    :cond_0
    :goto_0
    return-void

    .line 3197
    :cond_1
    iget-object v0, p0, Lews;->d:Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

    .line 4138
    iget-boolean v0, v0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->a:Z

    .line 3198
    if-eqz p1, :cond_2

    .line 3199
    if-nez v0, :cond_0

    .line 3200
    iget-object v0, p0, Lews;->d:Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 3203
    :cond_2
    if-eqz v0, :cond_0

    .line 3204
    iget-object v0, p0, Lews;->d:Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lews;->a:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lews$1;

    invoke-direct {v0, p0}, Lews$1;-><init>(Lews;)V

    iput-object v0, p0, Lews;->f:Lcjo$a;

    .line 145
    new-instance v0, Lews$2;

    invoke-direct {v0, p0}, Lews$2;-><init>(Lews;)V

    iput-object v0, p0, Lews;->g:Lcjo$a;

    .line 172
    new-instance v0, Lews$3;

    invoke-direct {v0, p0}, Lews$3;-><init>(Lews;)V

    iput-object v0, p0, Lews;->h:Landroid/content/BroadcastReceiver;

    .line 191
    return-void
.end method

.method private declared-synchronized e()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 285
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lews;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 286
    const/4 v0, 0x0

    .line 307
    :goto_0
    monitor-exit p0

    return v0

    .line 288
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lews;->b:Z

    .line 2210
    iget-object v1, p0, Lews;->f:Lcjo$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lews;->g:Lcjo$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lews;->h:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_2

    .line 2213
    :cond_1
    invoke-direct {p0}, Lews;->d()V

    .line 2216
    :cond_2
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v1

    iget-object v2, p0, Lews;->f:Lcjo$a;

    invoke-virtual {v1, v2}, Leyn;->a(Lcjo$a;)V

    .line 2217
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v1

    iget-object v2, p0, Lews;->g:Lcjo$a;

    invoke-virtual {v1, v2}, Leyn;->a(Lcjo$a;)V

    .line 2219
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2220
    const-string/jumbo v2, "com.workapp.teleonf.phonecall.ringing"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2221
    const-string/jumbo v2, "com.workapp.teleonf.hangup"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2222
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lews;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 291
    iget-object v1, p0, Lews;->e:Landroid/os/Handler;

    new-instance v2, Lews$4;

    invoke-direct {v2, p0}, Lews$4;-><init>(Lews;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 305
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lews;->a:Ljava/lang/String;

    const-string/jumbo v3, "Show conf floating view"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 363
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lews;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 378
    :goto_0
    monitor-exit p0

    return v0

    .line 366
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lews;->b:Z

    .line 2226
    iget-object v0, p0, Lews;->f:Lcjo$a;

    if-eqz v0, :cond_1

    .line 2227
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v0

    iget-object v1, p0, Lews;->f:Lcjo$a;

    invoke-virtual {v0, v1}, Leyn;->b(Lcjo$a;)V

    .line 2228
    const/4 v0, 0x0

    iput-object v0, p0, Lews;->f:Lcjo$a;

    .line 2230
    :cond_1
    iget-object v0, p0, Lews;->g:Lcjo$a;

    if-eqz v0, :cond_2

    .line 2231
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v0

    iget-object v1, p0, Lews;->g:Lcjo$a;

    invoke-virtual {v0, v1}, Leyn;->b(Lcjo$a;)V

    .line 2232
    const/4 v0, 0x0

    iput-object v0, p0, Lews;->g:Lcjo$a;

    .line 2234
    :cond_2
    iget-object v0, p0, Lews;->h:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 2235
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lews;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2236
    const/4 v0, 0x0

    iput-object v0, p0, Lews;->h:Landroid/content/BroadcastReceiver;

    .line 368
    :cond_3
    iget-object v0, p0, Lews;->d:Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

    if-eqz v0, :cond_4

    .line 369
    iget-object v0, p0, Lews;->e:Landroid/os/Handler;

    new-instance v1, Lews$5;

    invoke-direct {v1, p0}, Lews$5;-><init>(Lews;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V
    .locals 1
    .param p1, "type"    # Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager;->a(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    .line 271
    invoke-direct {p0}, Lews;->e()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    invoke-virtual {v0}, Levi;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    invoke-virtual {v0}, Levi;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 78
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Levu;->a(Landroid/content/Context;)Levu;

    move-result-object v0

    invoke-virtual {v0}, Levu;->b()V

    .line 79
    sget-object v0, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_CONF:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {p0, v0}, Lews;->a(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 82
    :cond_1
    :try_start_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Levu;->a(Landroid/content/Context;)Levu;

    move-result-object v0

    .line 1676
    invoke-virtual {v0}, Levu;->c()V

    .line 83
    sget-object v0, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_CONF:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {p0, v0}, Lews;->b(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V
    .locals 1
    .param p1, "type"    # Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager;->b(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    .line 276
    invoke-direct {p0}, Lews;->f()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
