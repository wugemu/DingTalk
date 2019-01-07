.class public Lcom/alibaba/wukong/openav/internal/engine/AVCore;
.super Ljava/lang/Object;
.source "AVCore.java"

# interfaces
.implements Lcom/taobao/conf/ITBConfCallback;
.implements Life;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static volatile o:Lcom/alibaba/wukong/openav/internal/engine/AVCore;


# instance fields
.field public b:Landroid/content/Context;

.field public c:Lcom/taobao/conf/TBConfController;

.field public d:Liez;

.field public e:Liey;

.field public f:Lied$i;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field private p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/openav/external/IAVSession;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:I

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->p:Ljava/util/HashMap;

    .line 66
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->g:Ljava/lang/String;

    .line 67
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->h:Ljava/lang/String;

    .line 68
    iput v1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->q:I

    .line 69
    iput v1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->r:I

    .line 70
    iput-boolean v1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->s:Z

    .line 71
    iput-boolean v1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->i:Z

    .line 72
    iput-boolean v1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->j:Z

    .line 73
    iput-boolean v1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->k:Z

    .line 74
    iput-boolean v1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->l:Z

    .line 75
    iput-boolean v1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->m:Z

    .line 76
    iput-boolean v1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->n:Z

    .line 91
    return-void
.end method

.method public static a()Lcom/alibaba/wukong/openav/internal/engine/AVCore;
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->o:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-nez v0, :cond_1

    .line 80
    const-class v1, Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    monitor-enter v1

    .line 81
    :try_start_0
    sget-object v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->o:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    invoke-direct {v0}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;-><init>()V

    sput-object v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->o:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    .line 84
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_1
    sget-object v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->o:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/alibaba/wukong/openav/internal/engine/AVCore;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/wukong/openav/internal/engine/AVCore;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->s:Z

    return p1
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/alibaba/wukong/openav/external/IAVSession;)I
    .locals 14
    .param p1, "iiAVSession"    # Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, -0x1

    const/4 v12, 0x0

    .line 419
    monitor-enter p0

    if-nez p1, :cond_1

    .line 420
    :try_start_0
    const-string/jumbo v1, "--startAudioCall, e:avsession is null"

    .line 6067
    const-string/jumbo v2, "OpenAV"

    invoke-static {v2, v1}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 424
    :cond_1
    :try_start_1
    const-string/jumbo v1, "--startAudioCall"

    .line 7016
    const-string/jumbo v2, "OpenAV"

    invoke-static {v2, v1}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-interface {p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->a()Ljava/lang/String;

    move-result-object v11

    .line 429
    .local v11, "toOpenId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d()Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->IDLE:Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    invoke-virtual {v2}, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->ordinal()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 430
    iget-object v1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/16 v2, 0xb

    const/16 v3, -0x26

    const/4 v4, 0x0

    const-string/jumbo v5, "Invalid operation"

    invoke-virtual {v1, v2, v3, v4, v5}, Liez;->a(IIILjava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 419
    .end local v11    # "toOpenId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 436
    .restart local v11    # "toOpenId":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {p1, v0}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Z)V

    .line 437
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/openav/external/IAVSession;->b(Z)V

    .line 438
    invoke-interface {p1, v11}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Ljava/lang/String;)V

    .line 439
    if-eqz v11, :cond_4

    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->g:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 440
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v0, :cond_3

    .line 441
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/16 v1, 0xb

    const/16 v2, 0x1e6

    const/4 v3, 0x0

    const-string/jumbo v4, "Remote busy"

    invoke-virtual {v0, v1, v2, v3, v4}, Liez;->a(IIILjava/lang/Object;)I

    :cond_3
    move v0, v12

    .line 443
    goto :goto_0

    .line 446
    :cond_4
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;

    if-eqz v0, :cond_6

    .line 447
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;

    .line 448
    invoke-interface {p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->a()Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-interface {p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->d()Ljava/lang/String;

    move-result-object v2

    .line 450
    invoke-interface {p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->c()Ljava/lang/String;

    move-result-object v3

    .line 451
    invoke-interface {p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->n()Ljava/lang/String;

    move-result-object v4

    .line 452
    invoke-interface {p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->o()Ljava/lang/String;

    move-result-object v5

    .line 453
    invoke-interface {p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->b()Ljava/lang/String;

    move-result-object v6

    .line 454
    invoke-interface {p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->p()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    move-result-object v7

    .line 455
    invoke-interface {p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->q()Ljava/lang/String;

    move-result-object v9

    .line 456
    invoke-interface {p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->r()Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    move-result-object v10

    .line 7090
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "---makeAudioCall, toUsrId:"

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lieg;->d(Ljava/lang/String;)V

    .line 7091
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 457
    :cond_5
    :goto_1
    sget-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V

    .line 460
    :cond_6
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->e:Liey;

    invoke-virtual {v0}, Liey;->a()V

    move v0, v12

    .line 461
    goto/16 :goto_0

    .line 7094
    :cond_7
    iget-object v8, v0, Lcom/taobao/conf/TBConfController;->a:Lcom/taobao/conf/TBConf;

    if-eqz v8, :cond_5

    .line 7095
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;->ordinal()I

    move-result v8

    .line 7096
    :goto_2
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;->ordinal()I

    move-result v10

    .line 7097
    :goto_3
    iget-object v0, v0, Lcom/taobao/conf/TBConfController;->a:Lcom/taobao/conf/TBConf;

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v10}, Lcom/taobao/conf/TBConf;->makeCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_8
    move v8, v12

    .line 7095
    goto :goto_2

    :cond_9
    move v10, v12

    .line 7096
    goto :goto_3
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/IAVSession;
    .locals 1
    .param p1, "openID"    # Ljava/lang/String;

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->p:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/openav/external/IAVSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 2
    .param p1, "mode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 714
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;

    .line 8212
    iget-object v1, v0, Lcom/taobao/conf/TBConfController;->a:Lcom/taobao/conf/TBConf;

    if-eqz v1, :cond_0

    .line 8213
    iget-object v0, v0, Lcom/taobao/conf/TBConfController;->a:Lcom/taobao/conf/TBConf;

    invoke-virtual {v0, p1}, Lcom/taobao/conf/TBConf;->setAudioRouterMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    :cond_0
    monitor-exit p0

    return-void

    .line 714
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/content/Context;Lied$g;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lied$g;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 340
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 377
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 343
    :cond_1
    :try_start_1
    const-string/jumbo v0, "-initSDK"

    .line 4033
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v0}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iput-object p1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->b:Landroid/content/Context;

    .line 345
    new-instance v0, Lcom/taobao/conf/TBConfController;

    invoke-direct {v0, p1}, Lcom/taobao/conf/TBConfController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;

    .line 346
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;

    .line 5029
    iget-object v1, v0, Lcom/taobao/conf/TBConfController;->a:Lcom/taobao/conf/TBConf;

    if-eqz v1, :cond_2

    .line 5030
    iget-object v0, v0, Lcom/taobao/conf/TBConfController;->a:Lcom/taobao/conf/TBConf;

    invoke-virtual {v0, p0}, Lcom/taobao/conf/TBConf;->registerCallback(Lcom/taobao/conf/ITBConfCallback;)V

    .line 348
    :cond_2
    new-instance v0, Liey;

    invoke-direct {v0, p0, p1}, Liey;-><init>(Lcom/alibaba/wukong/openav/internal/engine/AVCore;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->e:Liey;

    .line 349
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->e:Liey;

    invoke-static {p1}, Liep;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Liey;->a(Landroid/net/NetworkInfo;)Z

    .line 351
    new-instance v0, Liez;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Liez;-><init>(Lcom/alibaba/wukong/openav/internal/engine/AVCore;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    .line 352
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/4 v1, 0x0

    .line 5074
    iput-object v1, v0, Liez;->i:Lied$g;

    .line 354
    new-instance v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore$1;

    invoke-direct {v0, p0}, Lcom/alibaba/wukong/openav/internal/engine/AVCore$1;-><init>(Lcom/alibaba/wukong/openav/internal/engine/AVCore;)V

    invoke-static {v0}, Lcom/laiwang/protocol/android/LWP;->addNetworkListener(Lcom/laiwang/protocol/android/NetworkListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "isYunOS"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 669
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    const-string/jumbo v0, "receive signal msg"

    .line 8033
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v0}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/taobao/conf/TBConfController;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final declared-synchronized b(Lcom/alibaba/wukong/openav/external/IAVSession;)I
    .locals 8
    .param p1, "iiAVSession"    # Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 599
    monitor-enter p0

    if-nez p1, :cond_1

    .line 625
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 603
    :cond_1
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "--acceptAudioOnly, callid:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", call status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d()Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lieg;->b(Ljava/lang/String;)V

    .line 604
    iget-object v4, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d()Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->ordinal()I

    move-result v4

    sget-object v5, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->PREPARED:Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    invoke-virtual {v5}, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->ordinal()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 605
    :cond_2
    iget-object v3, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v3, :cond_0

    .line 606
    iget-object v3, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/16 v4, 0xb

    const/16 v5, -0x26

    const/4 v6, 0x0

    const-string/jumbo v7, "Invalid operation"

    invoke-virtual {v3, v4, v5, v6, v7}, Liez;->a(IIILjava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 599
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 611
    :cond_3
    const/4 v2, 0x1

    :try_start_1
    invoke-interface {p1, v2}, Lcom/alibaba/wukong/openav/external/IAVSession;->b(Z)V

    .line 612
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lcom/alibaba/wukong/openav/external/IAVSession;->c(Z)V

    .line 614
    invoke-interface {p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->e()Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, "callid":Ljava/lang/String;
    invoke-interface {p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v1

    .line 616
    .local v1, "session":Lcom/alibaba/wukong/openav/external/IAVSession;
    if-eqz v1, :cond_4

    .line 617
    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->e()Ljava/lang/String;

    move-result-object v0

    .line 619
    :cond_4
    iget-object v2, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;

    .line 7123
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "---acceptCall, callId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lieg;->b(Ljava/lang/String;)V

    .line 7124
    iget-object v4, v2, Lcom/taobao/conf/TBConfController;->a:Lcom/taobao/conf/TBConf;

    if-eqz v4, :cond_5

    .line 7125
    iget-object v4, v2, Lcom/taobao/conf/TBConfController;->a:Lcom/taobao/conf/TBConf;

    invoke-virtual {v4}, Lcom/taobao/conf/TBConf;->stopPreview()V

    .line 7126
    iget-object v2, v2, Lcom/taobao/conf/TBConfController;->a:Lcom/taobao/conf/TBConf;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v4, v5}, Lcom/taobao/conf/TBConf;->acceptCall(Ljava/lang/String;ZZ)Z

    .line 621
    :cond_5
    iget-object v2, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v2, :cond_6

    .line 622
    iget-object v2, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/16 v4, 0x66

    invoke-virtual {v2, v4}, Liez;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    move v2, v3

    .line 625
    goto/16 :goto_0
.end method

.method public final declared-synchronized b()Lcom/alibaba/wukong/openav/external/IAVSession;
    .locals 1

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    new-instance v0, Lifb;

    invoke-direct {v0}, Lifb;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/IAVSession;
    .locals 2
    .param p1, "openID"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->p:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 135
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->p:Ljava/util/HashMap;

    .line 137
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v0

    .line 138
    .local v0, "iiAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    if-nez v0, :cond_1

    .line 139
    new-instance v0, Lifb;

    .end local v0    # "iiAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    invoke-direct {v0}, Lifb;-><init>()V

    .line 141
    .restart local v0    # "iiAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    :cond_1
    invoke-interface {v0, p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->p:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->p:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/openav/external/IAVSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 134
    .end local v0    # "iiAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "--clearSession"

    .line 2016
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v0}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->p:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->p:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_0
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Ljava/lang/String;)V
    .locals 2
    .param p1, "openID"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "--delSession, openID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lieg;->a(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->p:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_0
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;

    if-nez v2, :cond_0

    .line 318
    const-string/jumbo v2, "--getEngineStatus, info:not initailed"

    .line 2033
    const-string/jumbo v3, "OpenAV"

    invoke-static {v3, v2}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    sget-object v2, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->IDLE:Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :goto_0
    monitor-exit p0

    return-object v2

    .line 321
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->p:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 322
    const-string/jumbo v2, "--getEngineStatus, prepared"

    .line 3033
    const-string/jumbo v3, "OpenAV"

    invoke-static {v3, v2}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    sget-object v2, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->PREPARED:Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    goto :goto_0

    .line 326
    :cond_1
    const-string/jumbo v2, "--getEngineStatus"

    .line 4016
    const-string/jumbo v3, "OpenAV"

    invoke-static {v3, v2}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->p:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 328
    .local v0, "entrySession":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/wukong/openav/external/IAVSession;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/openav/external/IAVSession;

    .line 329
    .local v1, "iiAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    if-eqz v1, :cond_2

    .line 330
    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->ordinal()I

    move-result v3

    sget-object v4, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->IDLE:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    invoke-virtual {v4}, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->ordinal()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "--getEngineStatus, busy openid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lieg;->b(Ljava/lang/String;)V

    .line 332
    sget-object v2, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->BUSY:Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    goto :goto_0

    .line 335
    .end local v0    # "entrySession":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/wukong/openav/external/IAVSession;>;"
    .end local v1    # "iiAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    :cond_3
    sget-object v2, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->IDLE:Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 317
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onAbnormWarning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 884
    sget-object v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a:Ljava/lang/String;

    const-string/jumbo v1, "-onAbnormWarning called!"

    invoke-static {v0, v1}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, v2, v2, p2}, Liez;->a(IIILjava/lang/Object;)I

    .line 888
    :cond_0
    return-void
.end method

.method public onAlerting(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 7
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "isAudioOnly"    # Z
    .param p4, "extraMsg"    # Ljava/lang/String;
    .param p5, "fromUsrNick"    # Ljava/lang/String;
    .param p6, "bizType"    # I
    .param p7, "usrToUsrMsg"    # Ljava/lang/String;
    .param p8, "srtpCryptoTypeInt"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 814
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-onAlerting, callid:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lieg;->b(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p0}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d()Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    move-result-object v0

    .line 816
    .local v0, "avengeSate":Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;
    sget-object v4, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->BUSY:Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    invoke-virtual {v0, v4}, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 817
    const-string/jumbo v4, "-onAlerting and reject"

    invoke-static {v4}, Lieg;->b(Ljava/lang/String;)V

    .line 818
    iget-object v4, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;

    sget-object v5, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInVoIP:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v5}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v5

    const-string/jumbo v6, ""

    invoke-virtual {v4, p2, v5, v6}, Lcom/taobao/conf/TBConfController;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 822
    :cond_1
    packed-switch p6, :pswitch_data_0

    .line 833
    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;->BIZ_CALL:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    .line 837
    .local v2, "destType":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;
    :goto_1
    if-ltz p8, :cond_2

    invoke-static {}, Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;->values()[Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    move-result-object v4

    array-length v4, v4

    if-ge p8, v4, :cond_2

    .line 838
    invoke-static {}, Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;->values()[Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    move-result-object v4

    aget-object v1, v4, p8

    .line 841
    .local v1, "cryptoType":Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;
    :goto_2
    new-instance v3, Lifb;

    invoke-direct {v3}, Lifb;-><init>()V

    .line 842
    .local v3, "iiAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Z)V

    .line 843
    invoke-interface {v3, p2}, Lcom/alibaba/wukong/openav/external/IAVSession;->e(Ljava/lang/String;)V

    .line 844
    invoke-interface {v3, p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Ljava/lang/String;)V

    .line 845
    sget-object v4, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    invoke-interface {v3, v4}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V

    .line 846
    invoke-interface {v3, p4}, Lcom/alibaba/wukong/openav/external/IAVSession;->f(Ljava/lang/String;)V

    .line 847
    invoke-interface {v3, p3}, Lcom/alibaba/wukong/openav/external/IAVSession;->b(Z)V

    .line 848
    invoke-interface {v3, p5}, Lcom/alibaba/wukong/openav/external/IAVSession;->b(Ljava/lang/String;)V

    .line 849
    invoke-interface {v3, v2}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;)V

    .line 850
    invoke-interface {v3, p7}, Lcom/alibaba/wukong/openav/external/IAVSession;->j(Ljava/lang/String;)V

    .line 851
    invoke-interface {v3, v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;)V

    .line 852
    iget-object v4, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v4, :cond_0

    .line 853
    iget-object v4, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/16 v5, 0xf

    invoke-virtual {v4, v5, v6, v6, v3}, Liez;->a(IIILjava/lang/Object;)I

    goto :goto_0

    .line 824
    .end local v1    # "cryptoType":Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;
    .end local v2    # "destType":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;
    .end local v3    # "iiAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    :pswitch_0
    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;->BIZ_CALL:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    .line 825
    .restart local v2    # "destType":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;
    goto :goto_1

    .line 827
    .end local v2    # "destType":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;
    :pswitch_1
    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;->BIZ_IVR:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    .line 828
    .restart local v2    # "destType":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;
    goto :goto_1

    .line 830
    .end local v2    # "destType":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;
    :pswitch_2
    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;->BIZ_CONF:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    .line 831
    .restart local v2    # "destType":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;
    goto :goto_1

    .line 838
    :cond_2
    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;->SRTP_CRYPTO_TYPE_NONE:Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    goto :goto_2

    .line 822
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onAnswer(Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 6
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "bAudioOnly"    # Z
    .param p4, "enableRemoteVideo"    # Z
    .param p5, "srtpCryptoTypeInt"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 988
    sget-object v2, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-OnAnswer called callId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    iget-object v2, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v2, :cond_0

    .line 990
    new-instance v1, Lifb;

    invoke-direct {v1}, Lifb;-><init>()V

    .line 991
    .local v1, "objAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    invoke-interface {v1, p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Ljava/lang/String;)V

    .line 992
    invoke-interface {v1, p2}, Lcom/alibaba/wukong/openav/external/IAVSession;->e(Ljava/lang/String;)V

    .line 993
    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V

    .line 994
    invoke-interface {v1, p3}, Lcom/alibaba/wukong/openav/external/IAVSession;->b(Z)V

    .line 995
    if-nez p4, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1, v2}, Lcom/alibaba/wukong/openav/external/IAVSession;->c(Z)V

    .line 997
    if-ltz p5, :cond_2

    invoke-static {}, Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;->values()[Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    move-result-object v2

    array-length v2, v2

    if-ge p5, v2, :cond_2

    .line 998
    invoke-static {}, Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;->values()[Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    move-result-object v2

    aget-object v0, v2, p5

    .line 999
    .local v0, "cryptoType":Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;
    :goto_1
    invoke-interface {v1, v0}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;)V

    .line 1001
    iget-object v2, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/4 v4, 0x6

    invoke-virtual {v2, v4, v3, v3, v1}, Liez;->a(IIILjava/lang/Object;)I

    .line 1003
    .end local v0    # "cryptoType":Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;
    .end local v1    # "objAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    :cond_0
    return-void

    .restart local v1    # "objAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    :cond_1
    move v2, v3

    .line 995
    goto :goto_0

    .line 998
    :cond_2
    sget-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;->SRTP_CRYPTO_TYPE_NONE:Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    goto :goto_1
.end method

.method public onAudioVolume(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "energy"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 956
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2, p1}, Liez;->a(IIILjava/lang/Object;)I

    .line 959
    :cond_0
    return-void
.end method

.method public onCallingWarning(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1075
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a:Ljava/lang/String;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "-onCallingWarning callId "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, ", errCode "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lieo;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9033
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v0}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/16 v1, 0x19

    invoke-virtual {v0, v1, p2, v3, p3}, Liez;->a(IIILjava/lang/Object;)I

    .line 1079
    :cond_0
    return-void
.end method

.method public onConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 862
    sget-object v1, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a:Ljava/lang/String;

    const-string/jumbo v2, "onConnected called"

    invoke-static {v1, v2}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    iget-object v1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v1, :cond_0

    .line 864
    new-instance v0, Lifb;

    invoke-direct {v0}, Lifb;-><init>()V

    .line 865
    .local v0, "objAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    invoke-interface {v0, p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Ljava/lang/String;)V

    .line 866
    invoke-interface {v0, p2}, Lcom/alibaba/wukong/openav/external/IAVSession;->e(Ljava/lang/String;)V

    .line 867
    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V

    .line 869
    iget-object v1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v3, v3, v0}, Liez;->a(IIILjava/lang/Object;)I

    .line 871
    .end local v0    # "objAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    :cond_0
    return-void
.end method

.method public onConnectedTimeout(Ljava/lang/String;I)V
    .locals 4
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "state"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 875
    sget-object v1, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a:Ljava/lang/String;

    const-string/jumbo v2, "onConnectedTimeout called!"

    invoke-static {v1, v2}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    iget-object v1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v1, :cond_0

    .line 877
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, " accept timeout state "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lieo;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 878
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/16 v2, 0xb

    sget-object v3, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetDisconnect:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v3

    invoke-virtual {v1, v2, v3, p2, v0}, Liez;->a(IIILjava/lang/Object;)I

    .line 880
    .end local v0    # "reason":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onDebugView(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 972
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, v2, v2, p1}, Liez;->a(IIILjava/lang/Object;)I

    .line 975
    :cond_0
    return-void
.end method

.method public onDisconnected(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "code"    # I
    .param p4, "errorJson"    # Ljava/lang/String;
    .param p5, "extraDesc"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 896
    sget-object v1, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "-onDisconnected, callid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    iget-object v1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v1, :cond_0

    .line 898
    new-instance v0, Lifb;

    invoke-direct {v0}, Lifb;-><init>()V

    .line 899
    .local v0, "iiAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    invoke-interface {v0, p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Ljava/lang/String;)V

    .line 900
    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->HANGUP:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V

    .line 901
    invoke-interface {v0, p4}, Lcom/alibaba/wukong/openav/external/IAVSession;->g(Ljava/lang/String;)V

    .line 902
    invoke-interface {v0, p5}, Lcom/alibaba/wukong/openav/external/IAVSession;->h(Ljava/lang/String;)V

    .line 904
    iget-object v1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3, v0}, Liez;->a(IIILjava/lang/Object;)I

    .line 906
    .end local v0    # "iiAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    :cond_0
    return-void
.end method

.method public onErrorOcurr(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "errorInfo"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 776
    sget-object v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "OnErrorOcurr errorCode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " errorInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Liez;->a(IIILjava/lang/Object;)I

    .line 779
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1, v3, p3}, Liez;->a(IIILjava/lang/Object;)I

    .line 782
    :cond_0
    sget v0, Liep;->l:I

    invoke-static {v0}, Liep;->a(I)V

    .line 783
    return-void
.end method

.method public onFetchLocalRender()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 787
    sget-object v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a:Ljava/lang/String;

    const-string/jumbo v1, "TBConf OnFetchLocalRender called!"

    invoke-static {v0, v1}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    invoke-virtual {p0}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d()Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->IDLE:Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    if-ne v0, v1, :cond_1

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/16 v1, 0x6a

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v3, v2}, Liez;->a(IIILjava/lang/Object;)I

    goto :goto_0
.end method

.method public onFetchRemoteRender()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 798
    sget-object v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a:Ljava/lang/String;

    const-string/jumbo v1, "TBConf OnFetchRemoteRender called!"

    invoke-static {v0, v1}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/16 v1, 0x6a

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v3, v2}, Liez;->a(IIILjava/lang/Object;)I

    .line 802
    :cond_0
    return-void
.end method

.method public onHangup(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "errCode"    # I
    .param p4, "errJson"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 910
    sget-object v1, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "-onHangup, callid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    iget-object v1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v1, :cond_0

    .line 912
    new-instance v0, Lifb;

    invoke-direct {v0}, Lifb;-><init>()V

    .line 913
    .local v0, "iiAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    invoke-interface {v0, p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Ljava/lang/String;)V

    .line 914
    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->HANGUP:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V

    .line 915
    invoke-interface {v0, p4}, Lcom/alibaba/wukong/openav/external/IAVSession;->g(Ljava/lang/String;)V

    .line 917
    iget-object v1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3, v0}, Liez;->a(IIILjava/lang/Object;)I

    .line 919
    .end local v0    # "iiAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    :cond_0
    return-void
.end method

.method public onMakeCallFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "errCode"    # I
    .param p3, "extraMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1019
    sget-object v1, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "-OnMakeCallFailed errorCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", extraMsg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    iget-object v1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v1, :cond_0

    .line 1021
    new-instance v0, Lied$b;

    const-string/jumbo v1, "Make call fail"

    invoke-direct {v0, p2, v1}, Lied$b;-><init>(ILjava/lang/String;)V

    .line 1022
    .local v0, "errorInfo":Lied$b;
    iput-object p3, v0, Lied$b;->c:Ljava/lang/String;

    .line 1023
    iget-object v1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, v0}, Liez;->a(IIILjava/lang/Object;)I

    .line 1025
    .end local v0    # "errorInfo":Lied$b;
    :cond_0
    return-void
.end method

.method public onMakeCallReady(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1007
    sget-object v1, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "-OnMakeCallReady callId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    iget-object v1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v1, :cond_0

    .line 1009
    new-instance v0, Lifb;

    invoke-direct {v0}, Lifb;-><init>()V

    .line 1010
    .local v0, "objAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    invoke-interface {v0, p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Ljava/lang/String;)V

    .line 1011
    invoke-interface {v0, p2}, Lcom/alibaba/wukong/openav/external/IAVSession;->e(Ljava/lang/String;)V

    .line 1013
    iget-object v1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v4, v4, v0}, Liez;->a(IIILjava/lang/Object;)I

    .line 1015
    .end local v0    # "objAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    :cond_0
    return-void
.end method

.method public onMediaStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 923
    sget-object v1, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "-onMediaStart, callid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    iget-object v1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v1, :cond_0

    .line 925
    new-instance v0, Lifb;

    invoke-direct {v0}, Lifb;-><init>()V

    .line 926
    .local v0, "objAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    invoke-interface {v0, p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Ljava/lang/String;)V

    .line 927
    invoke-interface {v0, p2}, Lcom/alibaba/wukong/openav/external/IAVSession;->e(Ljava/lang/String;)V

    .line 929
    iget-object v1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v4, v4, v0}, Liez;->a(IIILjava/lang/Object;)I

    .line 931
    .end local v0    # "objAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    :cond_0
    return-void
.end method

.method public onMicVolume(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "energy"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 964
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2, p1}, Liez;->a(IIILjava/lang/Object;)I

    .line 967
    :cond_0
    return-void
.end method

.method public onRecNoMicWarning(I)V
    .locals 4
    .param p1, "errorCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-onRecNoMicWarning errorCode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lieg;->b(Ljava/lang/String;)V

    .line 980
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/16 v1, 0x16

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Liez;->a(IIILjava/lang/Object;)I

    .line 983
    :cond_0
    return-void
.end method

.method public onReceiveRedirect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1058
    sget-object v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "-onReceiveRedirect UserID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " callID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    return-void
.end method

.method public onReceiveRing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "extrMsg"    # Ljava/lang/String;
    .param p4, "needPlayRingtone"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1029
    sget-object v3, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-onReceiveRing UserID:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " callID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    iget-object v3, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v3, :cond_0

    .line 1031
    new-instance v0, Lifb;

    invoke-direct {v0}, Lifb;-><init>()V

    .line 1032
    .local v0, "iisAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    invoke-interface {v0, p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Ljava/lang/String;)V

    .line 1033
    invoke-interface {v0, p2}, Lcom/alibaba/wukong/openav/external/IAVSession;->e(Ljava/lang/String;)V

    .line 1034
    invoke-interface {v0, p3}, Lcom/alibaba/wukong/openav/external/IAVSession;->f(Ljava/lang/String;)V

    .line 1036
    if-eqz p4, :cond_1

    const/4 v1, 0x1

    .line 1037
    .local v1, "realValue":I
    :goto_0
    iget-object v3, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v2, v1, v0}, Liez;->a(IIILjava/lang/Object;)I

    .line 1039
    .end local v0    # "iisAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    .end local v1    # "realValue":I
    :cond_0
    return-void

    .restart local v0    # "iisAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    :cond_1
    move v1, v2

    .line 1036
    goto :goto_0
.end method

.method public onRecvDataTimeoutWarning(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "errJson"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-onRecvDataTimeoutWarning callId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", errCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lieg;->b(Ljava/lang/String;)V

    .line 1068
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/16 v1, 0x17

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p3}, Liez;->a(IIILjava/lang/Object;)I

    .line 1071
    :cond_0
    return-void
.end method

.method public onRegisterStatus(ZI)V
    .locals 5
    .param p1, "bSucceed"    # Z
    .param p2, "errCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 760
    sget-object v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "OnRegisterStatus succeed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-nez v0, :cond_0

    .line 771
    :goto_0
    return-void

    .line 766
    :cond_0
    if-eqz p1, :cond_1

    .line 767
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/16 v1, 0xd

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3, v4}, Liez;->a(IIILjava/lang/Object;)I

    goto :goto_0

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/16 v1, 0xe

    const/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3, v4}, Liez;->a(IIILjava/lang/Object;)I

    goto :goto_0
.end method

.method public onRemoteVideoFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "filterName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 946
    sget-object v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onRemoteVideoFilter called! filter:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1, v3, v3, p3}, Liez;->a(IIILjava/lang/Object;)I

    .line 951
    :cond_0
    return-void
.end method

.method public onSessionStatLog(Ljava/lang/String;II)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "msCost"    # I
    .param p3, "kbCost"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1049
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2, p2, p1}, Liez;->a(IIILjava/lang/Object;)I

    .line 1051
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2, p3, p1}, Liez;->a(IIILjava/lang/Object;)I

    .line 1052
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/16 v1, 0xa

    iget v2, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->q:I

    iget v3, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->r:I

    invoke-virtual {v0, v1, v2, v3, p1}, Liez;->a(IIILjava/lang/Object;)I

    .line 1054
    :cond_0
    return-void
.end method

.method public onTransportIntensit(II)V
    .locals 0
    .param p1, "localLevel"    # I
    .param p2, "remoteLevel"    # I

    .prologue
    .line 1043
    iput p1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->q:I

    .line 1044
    iput p2, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->r:I

    .line 1045
    return-void
.end method

.method public onVideoEnable(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 935
    sget-object v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "-onVideoEnable called! state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    if-eqz p3, :cond_1

    .line 942
    :cond_0
    :goto_0
    return-void

    .line 939
    :cond_1
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3, v3, p1}, Liez;->a(IIILjava/lang/Object;)I

    goto :goto_0
.end method

.method public onVideoRate(Ljava/lang/String;II)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "bitrate"    # I
    .param p3, "fps"    # I

    .prologue
    .line 1063
    return-void
.end method
