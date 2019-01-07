.class public Lbws;
.super Ljava/lang/Object;
.source "PlayerManager.java"

# interfaces
.implements Ljju;


# static fields
.field private static volatile l:Lbws;


# instance fields
.field public a:Lbwq;

.field b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

.field c:Lbxb;

.field d:Lbxa;

.field public e:I

.field f:Z

.field public g:I

.field h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Lcom/alibaba/doraemon/threadpool/Thread;

.field public k:[Ljava/lang/String;

.field private m:Lbtw;

.field private n:Ljjx;

.field private o:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lbxa;

    invoke-direct {v0}, Lbxa;-><init>()V

    iput-object v0, p0, Lbws;->d:Lbxa;

    .line 79
    new-instance v0, Lbxb;

    invoke-direct {v0}, Lbxb;-><init>()V

    iput-object v0, p0, Lbws;->c:Lbxb;

    .line 80
    return-void
.end method

.method static synthetic a(Lbws;)Lbwq;
    .locals 1
    .param p0, "x0"    # Lbws;

    .prologue
    .line 54
    iget-object v0, p0, Lbws;->a:Lbwq;

    return-object v0
.end method

.method public static a()Lbws;
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lbws;->l:Lbws;

    if-nez v0, :cond_1

    .line 84
    const-class v1, Lbws;

    monitor-enter v1

    .line 85
    :try_start_0
    sget-object v0, Lbws;->l:Lbws;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lbws;

    invoke-direct {v0}, Lbws;-><init>()V

    sput-object v0, Lbws;->l:Lbws;

    .line 88
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_1
    sget-object v0, Lbws;->l:Lbws;

    return-object v0

    .line 88
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lbws;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lbws;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p1}, Lbws;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lbws;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lbws;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lbws;->k:[Ljava/lang/String;

    return-object p1
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 470
    const/4 v2, 0x0

    .line 472
    .local v2, "ipAddressArr":[Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    .line 473
    .local v3, "netAddressArr":[Ljava/net/InetAddress;
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 474
    array-length v4, v3

    new-array v2, v4, [Ljava/lang/String;

    .line 475
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 476
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 479
    .end local v1    # "i":I
    .end local v3    # "netAddressArr":[Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 481
    const/4 v4, 0x0

    .line 483
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :goto_1
    return-object v4

    .restart local v3    # "netAddressArr":[Ljava/net/InetAddress;
    :cond_0
    move-object v4, v2

    goto :goto_1
.end method


# virtual methods
.method public final a(Z)Lbwq;
    .locals 1
    .param p1, "init"    # Z

    .prologue
    .line 102
    if-eqz p1, :cond_0

    iget-object v0, p0, Lbws;->a:Lbwq;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lbwq;

    invoke-direct {v0}, Lbwq;-><init>()V

    iput-object v0, p0, Lbws;->a:Lbwq;

    .line 105
    :cond_0
    iget-object v0, p0, Lbws;->a:Lbwq;

    return-object v0
.end method

.method public final a(Lbwz;)V
    .locals 2
    .param p1, "listener"    # Lbwz;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 319
    iget-object v0, p0, Lbws;->d:Lbxa;

    .line 20044
    if-eqz p1, :cond_0

    iget-object v1, v0, Lbxa;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 20045
    iget-object v0, v0, Lbxa;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 437
    const-string/jumbo v0, "live"

    invoke-static {v0, p1, p2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method public final a(Landroid/app/Activity;Z)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "checkPermission"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 272
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "PlayerManager.toSmall, mIsInSmall="

    aput-object v3, v2, v1

    iget-boolean v3, p0, Lbws;->o:Z

    .line 273
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    const-string/jumbo v4, ", isPlaying="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 274
    invoke-virtual {p0}, Lbws;->f()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 272
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 17013
    const-string/jumbo v3, "live"

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-boolean v2, p0, Lbws;->o:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lbws;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbws;->a:Lbwq;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbws;->a:Lbwq;

    .line 17551
    iget-object v2, v2, Lbwq;->k:Landroid/app/Activity;

    .line 276
    if-ne p1, v2, :cond_1

    if-eqz p2, :cond_0

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v3, v2, v1

    .line 277
    invoke-static {p1, v2}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final declared-synchronized b()Ljjx;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbws;->n:Ljjx;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljjx;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljjx;-><init>(ZZZ)V

    iput-object v0, p0, Lbws;->n:Ljjx;

    .line 96
    iget-object v0, p0, Lbws;->n:Ljjx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljjx;->a(Z)V

    .line 98
    :cond_0
    iget-object v0, p0, Lbws;->n:Ljjx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lbwz;)V
    .locals 1
    .param p1, "listener"    # Lbwz;

    .prologue
    .line 323
    iget-object v0, p0, Lbws;->d:Lbxa;

    .line 20050
    if-eqz p1, :cond_0

    .line 20051
    iget-object v0, v0, Lbxa;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 324
    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 4
    .param p1, "destroy"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 139
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "PlayerManager.release, destroy="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4013
    const-string/jumbo v1, "live"

    invoke-static {v1, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lbws;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lbws;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Z)V

    .line 142
    if-eqz p1, :cond_0

    .line 143
    iput-object v3, p0, Lbws;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .line 146
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 118
    const-string/jumbo v0, "PlayerManager.start"

    .line 1013
    const-string/jumbo v1, "live"

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lbws;->c:Lbxb;

    invoke-virtual {v0}, Lbxb;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    const-string/jumbo v0, "It\'s mobile network type, should not start live without user permission"

    .line 2013
    const-string/jumbo v1, "live"

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lbws;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lbws;->d:Lbxa;

    .line 2062
    iget-object v0, v0, Lbxa;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwz;

    .line 2063
    invoke-interface {v0}, Lbwz;->c()V

    goto :goto_1

    .line 126
    :cond_2
    iget-object v1, p0, Lbws;->c:Lbxb;

    .line 2081
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 2082
    const-string/jumbo v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2083
    if-eqz v0, :cond_3

    iget-object v2, v1, Lbxb;->e:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz v2, :cond_3

    .line 2084
    iget-object v1, v1, Lbxb;->e:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 127
    :cond_3
    iget-object v0, p0, Lbws;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a()V

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 7
    .param p1, "isCheckSmall"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 170
    iget-object v0, p0, Lbws;->a:Lbwq;

    if-eqz v0, :cond_d

    .line 171
    iget-object v1, p0, Lbws;->a:Lbwq;

    .line 7322
    iget-object v0, v1, Lbwq;->p:Lbwf;

    if-eqz v0, :cond_0

    .line 7323
    invoke-static {}, Lbwg;->a()Lbwg;

    move-result-object v0

    iget-object v4, v1, Lbwq;->p:Lbwf;

    invoke-virtual {v0, v4}, Lbwg;->b(Lbwf;)V

    .line 7324
    iput-object v2, v1, Lbwq;->p:Lbwf;

    .line 7364
    :cond_0
    iget-object v0, v1, Lbwq;->q:Lbtv;

    if-eqz v0, :cond_1

    .line 7365
    iget-object v0, v1, Lbwq;->q:Lbtv;

    invoke-virtual {v0}, Lbtv;->c()V

    .line 7366
    iput-object v2, v1, Lbwq;->q:Lbtv;

    .line 7378
    :cond_1
    iget-object v0, v1, Lbwq;->n:Lbxc;

    if-eqz v0, :cond_2

    .line 7379
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    iget-object v4, v1, Lbwq;->n:Lbxc;

    invoke-virtual {v0, v4}, Lbws;->b(Lbwz;)V

    .line 7380
    iput-object v2, v1, Lbwq;->n:Lbxc;

    .line 8283
    :cond_2
    iget-object v0, v1, Lbwq;->s:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompatAdapter;

    if-eqz v0, :cond_3

    .line 8284
    const-string/jumbo v0, "LIFECYCLE"

    .line 8285
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 8286
    iget-object v4, v1, Lbwq;->s:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompatAdapter;

    invoke-interface {v0, v4}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->unregisterActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    .line 8287
    iput-object v2, v1, Lbwq;->s:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompatAdapter;

    .line 6479
    :cond_3
    iput-boolean v3, v1, Lbwq;->f:Z

    .line 6481
    iget-object v0, v1, Lbwq;->l:Lbwy;

    if-eqz v0, :cond_4

    .line 6482
    iget-object v0, v1, Lbwq;->l:Lbwy;

    .line 9136
    invoke-virtual {v0}, Lbwy;->f()V

    .line 9137
    iput-object v2, v0, Lbwy;->e:Landroid/app/Activity;

    .line 6484
    :cond_4
    iget-object v0, v1, Lbwq;->m:Lbwv;

    if-eqz v0, :cond_b

    .line 6485
    iget-object v0, v1, Lbwq;->m:Lbwv;

    .line 9398
    invoke-virtual {v0}, Lbwv;->n()V

    .line 9399
    iget-object v4, v0, Lbwv;->o:Lbwt$a;

    invoke-interface {v4}, Lbwt$a;->i()V

    .line 9400
    iget-object v4, v0, Lbwv;->k:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;

    if-eqz v4, :cond_5

    .line 9401
    iget-object v4, v0, Lbwv;->k:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;->dismiss()V

    .line 9402
    iput-object v2, v0, Lbwv;->k:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;

    .line 9404
    :cond_5
    iget-object v4, v0, Lbwv;->j:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;

    if-eqz v4, :cond_6

    .line 9405
    iget-object v4, v0, Lbwv;->j:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;

    invoke-virtual {v4}, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->destroy()V

    .line 9407
    :cond_6
    iget-object v4, v0, Lbwv;->l:Lcom/taobao/taolive/sdk/component/ChatFrame;

    if-eqz v4, :cond_7

    .line 9408
    iget-object v4, v0, Lbwv;->l:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-virtual {v4}, Lcom/taobao/taolive/sdk/component/ChatFrame;->destroy()V

    .line 9409
    iput-object v2, v0, Lbwv;->l:Lcom/taobao/taolive/sdk/component/ChatFrame;

    .line 9411
    :cond_7
    iget-object v4, v0, Lbwv;->r:Landroid/os/Handler;

    if-eqz v4, :cond_8

    .line 9412
    iget-object v4, v0, Lbwv;->r:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9414
    :cond_8
    iget-object v4, v0, Lbwv;->m:Lcom/taobao/taolive/sdk/ui/component/FavorFrame;

    if-eqz v4, :cond_9

    .line 9415
    iget-object v4, v0, Lbwv;->m:Lcom/taobao/taolive/sdk/ui/component/FavorFrame;

    invoke-virtual {v4}, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->onDestroy()V

    .line 9417
    :cond_9
    iget-object v4, v0, Lbwv;->n:Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;

    if-eqz v4, :cond_a

    .line 9418
    iget-object v4, v0, Lbwv;->n:Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;

    invoke-virtual {v4}, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->onDestroy()V

    .line 9421
    :cond_a
    invoke-virtual {v0}, Lbwv;->o()V

    .line 9422
    iput-object v2, v0, Lbwv;->p:Landroid/app/Activity;

    .line 6487
    :cond_b
    iget-object v0, v1, Lbwq;->r:Lbts;

    if-eqz v0, :cond_c

    iget-object v0, v1, Lbwq;->k:Landroid/app/Activity;

    if-eqz v0, :cond_c

    iget-object v0, v1, Lbwq;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 6488
    iget-object v0, v1, Lbwq;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v4, v1, Lbwq;->r:Lbts;

    .line 10030
    iget-object v4, v4, Lbts;->a:Landroid/view/Window$Callback;

    .line 6488
    invoke-virtual {v0, v4}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 6490
    :cond_c
    iput-object v2, v1, Lbwq;->k:Landroid/app/Activity;

    .line 6491
    iput-object v2, v1, Lbwq;->o:Lbyu;

    .line 172
    iput-object v2, p0, Lbws;->a:Lbwq;

    .line 174
    :cond_d
    iget-object v0, p0, Lbws;->n:Ljjx;

    if-eqz v0, :cond_e

    .line 175
    iget-object v0, p0, Lbws;->n:Ljjx;

    invoke-virtual {v0}, Ljjx;->g()V

    .line 176
    iput-object v2, p0, Lbws;->n:Ljjx;

    .line 178
    :cond_e
    if-eqz p1, :cond_f

    iget-boolean v0, p0, Lbws;->o:Z

    if-eqz v0, :cond_f

    .line 197
    :goto_0
    return-void

    .line 181
    :cond_f
    iput-boolean v3, p0, Lbws;->o:Z

    .line 10356
    iget-boolean v0, p0, Lbws;->f:Z

    if-eqz v0, :cond_10

    .line 10357
    iput-boolean v3, p0, Lbws;->f:Z

    .line 10409
    new-instance v5, Lbuy;

    invoke-direct {v5}, Lbuy;-><init>()V

    .line 10410
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v0

    .line 11043
    iget-object v0, v0, Lbwr;->c:Ljava/lang/String;

    .line 10410
    iput-object v0, v5, Lbuy;->a:Ljava/lang/String;

    .line 10411
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v0

    invoke-virtual {v0}, Lbwr;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lbuy;->b:Ljava/lang/String;

    .line 10412
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v1

    .line 11414
    new-instance v0, Lbxe$20;

    iget-object v4, v1, Lbxe;->a:Ljava/util/concurrent/Executor;

    invoke-direct/range {v0 .. v5}, Lbxe$20;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lbuy;)V

    .line 11420
    invoke-virtual {v0}, Lbxe$20;->start()V

    .line 10359
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 10360
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v1

    invoke-virtual {v1}, Lbwr;->b()Ljava/lang/String;

    move-result-object v1

    .line 10361
    invoke-static {v0, v3, v1, v2}, Lcom/alibaba/android/dingtalk/live/msg/PowerMessageUtils;->unsubscribe(Landroid/content/Context;ILjava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 10362
    const-string/jumbo v0, "PlayerManager.unsubscribe"

    .line 12013
    const-string/jumbo v1, "live"

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10363
    const-string/jumbo v0, "Live_GroupPlayOver"

    invoke-static {v0}, Lbym;->b(Ljava/lang/String;)V

    .line 183
    :cond_10
    invoke-virtual {p0, v6}, Lbws;->b(Z)V

    .line 184
    invoke-virtual {p0}, Lbws;->e()V

    .line 185
    iget-object v0, p0, Lbws;->d:Lbxa;

    .line 12171
    iget-object v1, v0, Lbxa;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v1, :cond_17

    .line 12175
    iget-object v1, v0, Lbxa;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;

    if-eqz v1, :cond_11

    .line 12176
    iget-object v1, v0, Lbxa;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v4, v0, Lbxa;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;

    invoke-virtual {v1, v4}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;)V

    .line 12177
    iput-object v2, v0, Lbxa;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;

    .line 12179
    :cond_11
    iget-object v1, v0, Lbxa;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;

    if-eqz v1, :cond_12

    .line 12180
    iget-object v1, v0, Lbxa;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v4, v0, Lbxa;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;

    invoke-virtual {v1, v4}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;)V

    .line 12181
    iput-object v2, v0, Lbxa;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;

    .line 12183
    :cond_12
    iget-object v1, v0, Lbxa;->c:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    if-eqz v1, :cond_13

    .line 12184
    iget-object v1, v0, Lbxa;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v4, v0, Lbxa;->c:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v4}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 12185
    iput-object v2, v0, Lbxa;->c:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 12187
    :cond_13
    iget-object v1, v0, Lbxa;->d:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    if-eqz v1, :cond_14

    .line 12188
    iget-object v1, v0, Lbxa;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v4, v0, Lbxa;->d:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-virtual {v1, v4}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 12189
    iput-object v2, v0, Lbxa;->d:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 12191
    :cond_14
    iget-object v1, v0, Lbxa;->e:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    if-eqz v1, :cond_15

    .line 12192
    iget-object v1, v0, Lbxa;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v4, v0, Lbxa;->e:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v4}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 12193
    iput-object v2, v0, Lbxa;->e:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 12195
    :cond_15
    iget-object v1, v0, Lbxa;->f:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    if-eqz v1, :cond_16

    .line 12196
    iget-object v1, v0, Lbxa;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v4, v0, Lbxa;->f:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-virtual {v1, v4}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 12197
    iput-object v2, v0, Lbxa;->f:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 12199
    :cond_16
    iput-object v2, v0, Lbxa;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .line 186
    :cond_17
    iget-object v1, p0, Lbws;->c:Lbxb;

    .line 12296
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    .line 12297
    iget-object v0, v1, Lbxb;->a:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    if-eqz v0, :cond_18

    .line 12298
    const-string/jumbo v0, "LIFECYCLE"

    .line 12299
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 12300
    iget-object v5, v1, Lbxb;->a:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    invoke-interface {v0, v5}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->unregisterAppStateListener(Lcom/alibaba/doraemon/lifecycle/APPStateListener;)V

    .line 12301
    iput-object v2, v1, Lbxb;->a:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    .line 12303
    :cond_18
    iget-object v0, v1, Lbxb;->b:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_19

    .line 12305
    :try_start_0
    iget-object v0, v1, Lbxb;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 12308
    :goto_1
    iput-object v2, v1, Lbxb;->b:Landroid/content/BroadcastReceiver;

    .line 12310
    :cond_19
    iget-object v0, v1, Lbxb;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1a

    .line 12311
    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v5, v1, Lbxb;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v5}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 12312
    iput-object v2, v1, Lbxb;->c:Landroid/content/BroadcastReceiver;

    .line 12314
    :cond_1a
    iget-object v0, v1, Lbxb;->d:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_1c

    .line 12316
    :try_start_1
    const-string/jumbo v0, "phone"

    .line 12317
    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 12318
    if-eqz v0, :cond_1b

    .line 12319
    iget-object v4, v1, Lbxb;->d:Landroid/telephony/PhoneStateListener;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 12323
    :cond_1b
    :goto_2
    iput-object v2, v1, Lbxb;->d:Landroid/telephony/PhoneStateListener;

    .line 12325
    :cond_1c
    iget-object v0, v1, Lbxb;->e:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz v0, :cond_1d

    .line 12326
    iget-object v0, v1, Lbxb;->e:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-static {v0}, Lbxb;->a(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 12327
    iput-object v2, v1, Lbxb;->e:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 12329
    :cond_1d
    iput-object v2, v1, Lbxb;->f:Lbtu;

    .line 12331
    iput-boolean v3, v1, Lbxb;->g:Z

    .line 12332
    iput-boolean v3, v1, Lbxb;->h:Z

    .line 12333
    iput-boolean v3, v1, Lbxb;->i:Z

    .line 12334
    iput-boolean v3, v1, Lbxb;->j:Z

    .line 12335
    iput-boolean v3, v1, Lbxb;->k:Z

    .line 187
    iget-object v0, p0, Lbws;->c:Lbxb;

    .line 13090
    invoke-static {v2}, Lbxb;->a(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 188
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v0

    .line 14087
    iput-object v2, v0, Lbwr;->c:Ljava/lang/String;

    .line 14088
    iput-object v2, v0, Lbwr;->d:Ljava/lang/String;

    .line 14089
    iput-object v2, v0, Lbwr;->b:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    .line 190
    iget-object v0, p0, Lbws;->j:Lcom/alibaba/doraemon/threadpool/Thread;

    if-eqz v0, :cond_1e

    .line 191
    iget-object v0, p0, Lbws;->j:Lcom/alibaba/doraemon/threadpool/Thread;

    invoke-interface {v0, v6}, Lcom/alibaba/doraemon/threadpool/Thread;->cancel(Z)V

    .line 192
    iput-object v2, p0, Lbws;->j:Lcom/alibaba/doraemon/threadpool/Thread;

    .line 195
    :cond_1e
    iput-object v2, p0, Lbws;->i:Ljava/lang/String;

    .line 196
    sput-object v2, Lbws;->l:Lbws;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 132
    const-string/jumbo v0, "PlayerManager.pause"

    .line 3013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lbws;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lbws;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b()V

    .line 136
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 149
    const-string/jumbo v3, "PlayerManager.destroyFloatingWindow"

    .line 5013
    const-string/jumbo v4, "live"

    invoke-static {v4, v6, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iput-boolean v5, p0, Lbws;->o:Z

    .line 151
    iget-object v3, p0, Lbws;->m:Lbtw;

    if-eqz v3, :cond_1

    .line 152
    iget-object v3, p0, Lbws;->m:Lbtw;

    invoke-virtual {v3}, Lbtw;->e()Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 153
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 155
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    const-string/jumbo v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 156
    .local v2, "wm":Landroid/view/WindowManager;
    if-eqz v2, :cond_0

    .line 157
    iget-object v3, p0, Lbws;->m:Lbtw;

    invoke-virtual {v3}, Lbtw;->e()Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "wm":Landroid/view/WindowManager;
    :cond_0
    :goto_0
    iget-object v3, p0, Lbws;->m:Lbtw;

    invoke-virtual {v3}, Lbtw;->c()V

    .line 165
    iput-object v6, p0, Lbws;->m:Lbtw;

    .line 167
    :cond_1
    return-void

    .line 159
    .restart local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Throwable;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "destroyFloatingWindow error="

    aput-object v4, v3, v5

    const/4 v4, 0x1

    .line 161
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 160
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6013
    const-string/jumbo v4, "live"

    invoke-static {v4, v6, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 205
    iget-object v0, p0, Lbws;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbws;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lbws;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/16 v5, 0x5211

    const v4, 0x3f99999a    # 1.2f

    .line 222
    iget-object v0, p0, Lbws;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-nez v0, :cond_1

    .line 223
    new-instance v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbws;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .line 14233
    new-instance v0, Ljos;

    const-string/jumbo v1, "dingtalk_lv"

    invoke-direct {v0, v1}, Ljos;-><init>(Ljava/lang/String;)V

    .line 14234
    const-string/jumbo v1, "dingtalk_live"

    iput-object v1, v0, Ljos;->q:Ljava/lang/String;

    .line 14235
    const/4 v1, 0x2

    iput v1, v0, Ljos;->c:I

    .line 14236
    iput v2, v0, Ljos;->d:I

    .line 14237
    const/4 v1, 0x1

    iput v1, v0, Ljos;->a:I

    .line 14238
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v1

    invoke-virtual {v1}, Lbwr;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljos;->s:Ljava/lang/String;

    .line 14239
    iput-boolean v2, v0, Ljos;->l:Z

    .line 14241
    iget-object v1, p0, Lbws;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v1, v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ljos;)V

    .line 14242
    iget-object v0, p0, Lbws;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    const-wide/32 v2, 0xe4e1c0

    invoke-virtual {v0, v2, v3}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setTimeout(J)V

    .line 14243
    iget-object v0, p0, Lbws;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setLogAdapter(Ljju;)V

    .line 14244
    iget-object v0, p0, Lbws;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .line 14618
    iget-object v1, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v1, v1, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    if-eqz v1, :cond_3

    .line 14619
    iget-object v1, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v1, v1, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    instance-of v1, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v1, :cond_2

    .line 14620
    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v5, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPropertyFloat(IF)V

    .line 14245
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lbws;->h()V

    .line 226
    iget-object v0, p0, Lbws;->d:Lbxa;

    iget-object v1, p0, Lbws;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .line 15040
    iput-object v1, v0, Lbxa;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .line 227
    iget-object v0, p0, Lbws;->d:Lbxa;

    invoke-virtual {v0}, Lbxa;->a()V

    .line 229
    :cond_1
    iget-object v0, p0, Lbws;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    return-object v0

    .line 14622
    :cond_2
    iget-object v1, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v1, v1, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    instance-of v1, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;

    if-eqz v1, :cond_0

    .line 14623
    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;

    invoke-virtual {v0, v5, v4}, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->setPropertyFloat(IF)V

    goto :goto_0

    .line 14627
    :cond_3
    iget-object v1, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->p:Landroid/util/SparseArray;

    if-nez v1, :cond_4

    .line 14628
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->p:Landroid/util/SparseArray;

    .line 14629
    :cond_4
    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->p:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method final h()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v0, 0x2

    const/16 v6, 0x4e9c

    .line 249
    iget-object v3, p0, Lbws;->k:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lbws;->k:[Ljava/lang/String;

    array-length v3, v3

    if-nez v3, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v3, p0, Lbws;->k:[Ljava/lang/String;

    array-length v3, v3

    if-le v3, v0, :cond_4

    .line 254
    .local v0, "length":I
    :goto_1
    iget v3, p0, Lbws;->g:I

    if-ge v3, v0, :cond_5

    iget-object v3, p0, Lbws;->k:[Ljava/lang/String;

    iget v4, p0, Lbws;->g:I

    aget-object v3, v3, v4

    :goto_2
    iput-object v3, p0, Lbws;->h:Ljava/lang/String;

    .line 255
    iget-object v3, p0, Lbws;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v4, p0, Lbws;->h:Ljava/lang/String;

    .line 15634
    iget-object v5, v3, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    if-eqz v5, :cond_7

    iget-object v5, v3, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v5, v5, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    if-eqz v5, :cond_7

    .line 15635
    iget-object v5, v3, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v5, v5, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    instance-of v5, v5, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v5, :cond_6

    .line 15636
    iget-object v3, v3, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v3, v3, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    check-cast v3, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v3, v6, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPropertyString(ILjava/lang/String;)V

    .line 258
    :cond_2
    :goto_3
    iget v3, p0, Lbws;->g:I

    if-lez v3, :cond_3

    .line 259
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v3

    .line 16035
    iget-object v1, v3, Lbwr;->b:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    .line 260
    .local v1, "object":Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;
    if-nez v1, :cond_9

    const/4 v2, 0x0

    .line 261
    .local v2, "url":Ljava/lang/String;
    :goto_4
    iget-object v3, p0, Lbws;->h:Ljava/lang/String;

    iget v4, p0, Lbws;->g:I

    add-int/lit8 v4, v4, -0x1

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    invoke-static {v2, v3, v4, v5, v6}, Lbyd;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 264
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;
    .end local v2    # "url":Ljava/lang/String;
    :cond_3
    iget v3, p0, Lbws;->g:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lbws;->g:I

    goto :goto_0

    .line 253
    .end local v0    # "length":I
    :cond_4
    iget-object v3, p0, Lbws;->k:[Ljava/lang/String;

    array-length v0, v3

    goto :goto_1

    .line 254
    .restart local v0    # "length":I
    :cond_5
    const-string/jumbo v3, ""

    goto :goto_2

    .line 15638
    :cond_6
    iget-object v5, v3, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v5, v5, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    instance-of v5, v5, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;

    if-eqz v5, :cond_2

    .line 15639
    iget-object v3, v3, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v3, v3, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    check-cast v3, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;

    invoke-virtual {v3, v6, v4}, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->setPropertyString(ILjava/lang/String;)V

    goto :goto_3

    .line 15643
    :cond_7
    iget-object v5, v3, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->q:Landroid/util/SparseArray;

    if-nez v5, :cond_8

    .line 15644
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, v3, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->q:Landroid/util/SparseArray;

    .line 15645
    :cond_8
    iget-object v3, v3, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->q:Landroid/util/SparseArray;

    invoke-virtual {v3, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 260
    .restart local v1    # "object":Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;
    :cond_9
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->liveUrlNormal:Ljava/lang/String;

    goto :goto_4
.end method

.method final i()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 281
    iput-boolean v7, p0, Lbws;->o:Z

    .line 282
    invoke-virtual {p0}, Lbws;->g()Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    move-result-object v3

    .line 283
    .local v3, "videoView":Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;
    invoke-virtual {v3}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 284
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v5, v2, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    .line 285
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 287
    :cond_0
    iget-object v5, p0, Lbws;->m:Lbtw;

    if-nez v5, :cond_1

    .line 288
    new-instance v5, Lbtw;

    invoke-direct {v5}, Lbtw;-><init>()V

    iput-object v5, p0, Lbws;->m:Lbtw;

    .line 289
    iget-object v5, p0, Lbws;->m:Lbtw;

    invoke-virtual {v5}, Lbtw;->b()V

    .line 290
    iget-object v5, p0, Lbws;->m:Lbtw;

    invoke-virtual {v5}, Lbtw;->e()Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    move-result-object v5

    new-instance v6, Lbws$1;

    invoke-direct {v6, p0}, Lbws$1;-><init>(Lbws;)V

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v5, p0, Lbws;->c:Lbxb;

    iget-object v6, p0, Lbws;->m:Lbtw;

    .line 18077
    iput-object v6, v5, Lbxb;->f:Lbtu;

    .line 300
    :cond_1
    iget-object v5, p0, Lbws;->m:Lbtw;

    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v6

    .line 19043
    iget-object v6, v6, Lbwr;->c:Ljava/lang/String;

    .line 300
    invoke-virtual {v5, v6}, Lbtw;->b(Ljava/lang/String;)V

    .line 301
    iget-object v5, p0, Lbws;->m:Lbtw;

    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v6

    invoke-virtual {v6}, Lbwr;->b()Ljava/lang/String;

    move-result-object v6

    .line 19077
    iput-object v6, v5, Lbtw;->a:Ljava/lang/String;

    .line 302
    iget-object v5, p0, Lbws;->m:Lbtw;

    invoke-virtual {v5, v3}, Lbtw;->a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V

    .line 304
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 306
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    const-string/jumbo v5, "window"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 307
    .local v4, "wm":Landroid/view/WindowManager;
    if-eqz v4, :cond_2

    .line 308
    iget-object v5, p0, Lbws;->m:Lbtw;

    invoke-virtual {v5}, Lbtw;->e()Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    move-result-object v5

    iget-object v6, p0, Lbws;->m:Lbtw;

    invoke-virtual {v6}, Lbtw;->a()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v4    # "wm":Landroid/view/WindowManager;
    :cond_2
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v1

    .line 311
    .local v1, "e":Ljava/lang/Throwable;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "showSmallView error="

    aput-object v6, v5, v8

    .line 312
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 311
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 20013
    const-string/jumbo v6, "live"

    const/4 v7, 0x0

    invoke-static {v6, v7, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iput-boolean v8, p0, Lbws;->o:Z

    .line 314
    invoke-virtual {p0, v8}, Lbws;->c(Z)V

    goto :goto_0
.end method
