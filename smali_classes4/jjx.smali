.class public final Ljjx;
.super Ljava/lang/Object;
.source "PushInstance.java"

# interfaces
.implements Lcom/taobao/taolive/sdk/utils/IHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljjx$c;,
        Ljjx$e;,
        Ljjx$d;,
        Ljjx$a;,
        Ljjx$b;
    }
.end annotation


# instance fields
.field public a:Lcom/taobao/living/api/TBLiveStreamEngine;

.field public b:Landroid/widget/RelativeLayout;

.field public c:Ljava/lang/String;

.field public d:Z

.field private e:Landroid/content/Context;

.field private f:Landroid/support/v7/app/AlertDialog;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/taobao/taolive/sdk/utils/WeakHandler;

.field private n:J

.field private o:J

.field private p:Z

.field private q:Z

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljjx$b;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljjx$a;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 9
    .param p1, "isEnableHwCode"    # Z
    .param p2, "isAnchor"    # Z
    .param p3, "isLinkMicOn"    # Z

    .prologue
    const-wide/16 v4, 0x0

    const/4 v8, 0x3

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v1, 0x0

    iput-object v1, p0, Ljjx;->m:Lcom/taobao/taolive/sdk/utils/WeakHandler;

    .line 76
    iput-wide v4, p0, Ljjx;->n:J

    .line 77
    iput-wide v4, p0, Ljjx;->o:J

    .line 79
    iput-boolean v2, p0, Ljjx;->p:Z

    .line 80
    iput-boolean v2, p0, Ljjx;->q:Z

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljjx;->r:Ljava/util/ArrayList;

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljjx;->s:Ljava/util/ArrayList;

    .line 151
    new-instance v1, Ljjx$1;

    invoke-direct {v1, p0}, Ljjx$1;-><init>(Ljjx;)V

    iput-object v1, p0, Ljjx;->t:Landroid/content/BroadcastReceiver;

    .line 142
    iput-boolean p2, p0, Ljjx;->j:Z

    .line 143
    iput-boolean p3, p0, Ljjx;->d:Z

    .line 144
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    iput-object v1, p0, Ljjx;->e:Landroid/content/Context;

    .line 1280
    iget-object v3, p0, Ljjx;->e:Landroid/content/Context;

    .line 2241
    invoke-static {}, Lcof;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v4, "f_live_huawei_software_encode"

    .line 2242
    invoke-virtual {v1, v4}, Lchx;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move p1, v0

    .line 2246
    .end local p1    # "isEnableHwCode":Z
    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v4, "isEnableHwCode="

    aput-object v4, v1, v0

    .line 2247
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v4, 0x2

    const-string/jumbo v5, ", model="

    aput-object v5, v1, v4

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v1, v8

    .line 2246
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbyl;->a(Ljava/lang/String;)V

    .line 2249
    new-instance v4, Lcom/taobao/living/api/TBLSConfig$Builder;

    invoke-direct {v4}, Lcom/taobao/living/api/TBLSConfig$Builder;-><init>()V

    .line 2250
    invoke-static {v2}, Lcom/taobao/artc/utils/ArtcLog;->setPrintLog(Z)V

    .line 2251
    invoke-static {v0}, Lcom/taobao/artc/utils/ArtcLog;->setUseTlog(Z)V

    .line 2252
    invoke-static {}, Lcpy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/taobao/living/api/TBLSConfig$Builder;->setAppKey(Ljava/lang/String;)Lcom/taobao/living/api/TBLSConfig$Builder;

    move-result-object v1

    .line 2253
    invoke-virtual {v1, p1}, Lcom/taobao/living/api/TBLSConfig$Builder;->setEnableHwcode(Z)Lcom/taobao/living/api/TBLSConfig$Builder;

    move-result-object v1

    const-string/jumbo v5, "dingding_live"

    .line 2254
    invoke-virtual {v1, v5}, Lcom/taobao/living/api/TBLSConfig$Builder;->setServiceName(Ljava/lang/String;)Lcom/taobao/living/api/TBLSConfig$Builder;

    move-result-object v1

    iget-object v5, p0, Ljjx;->e:Landroid/content/Context;

    .line 2255
    invoke-static {v5}, Lcom/alibaba/wukong/WKManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/taobao/living/api/TBLSConfig$Builder;->setDeviceId(Ljava/lang/String;)Lcom/taobao/living/api/TBLSConfig$Builder;

    move-result-object v5

    iget-boolean v1, p0, Ljjx;->j:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/taobao/living/api/TBConstants$Role;->ANCHOR:Lcom/taobao/living/api/TBConstants$Role;

    .line 2256
    :goto_0
    invoke-virtual {v5, v1}, Lcom/taobao/living/api/TBLSConfig$Builder;->setRole(Lcom/taobao/living/api/TBConstants$Role;)Lcom/taobao/living/api/TBLSConfig$Builder;

    move-result-object v1

    .line 2257
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/taobao/living/api/TBLSConfig$Builder;->setLocalUserId(Ljava/lang/String;)Lcom/taobao/living/api/TBLSConfig$Builder;

    move-result-object v5

    if-eqz p3, :cond_5

    sget-object v1, Lcom/taobao/living/api/TBConstants$PushStreamMode;->MODE_RTP:Lcom/taobao/living/api/TBConstants$PushStreamMode;

    .line 2258
    :goto_1
    invoke-virtual {v5, v1}, Lcom/taobao/living/api/TBLSConfig$Builder;->setPushStreamMode(Lcom/taobao/living/api/TBConstants$PushStreamMode;)Lcom/taobao/living/api/TBLSConfig$Builder;

    .line 2260
    iget-boolean v1, p0, Ljjx;->j:Z

    if-eqz v1, :cond_8

    .line 2261
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v1

    .line 3086
    iget-object v5, v1, Lbtq;->f:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .line 2262
    if-eqz v5, :cond_1

    .line 2263
    iget v1, v5, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->isLandscape:I

    if-ne v1, v2, :cond_6

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lcom/taobao/living/api/TBLSConfig$Builder;->setIsLandscape(Z)Lcom/taobao/living/api/TBLSConfig$Builder;

    move-result-object v2

    iget v1, v5, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->codeLevel:I

    if-ne v1, v8, :cond_7

    sget-object v1, Lcom/taobao/living/api/TBConstants$VideoDefinition;->HighDefinition:Lcom/taobao/living/api/TBConstants$VideoDefinition;

    .line 2264
    :goto_3
    invoke-virtual {v2, v1}, Lcom/taobao/living/api/TBLSConfig$Builder;->setVideoDefinition(Lcom/taobao/living/api/TBConstants$VideoDefinition;)Lcom/taobao/living/api/TBLSConfig$Builder;

    .line 2276
    :cond_1
    :goto_4
    invoke-virtual {v4}, Lcom/taobao/living/api/TBLSConfig$Builder;->build()Lcom/taobao/living/api/TBLSConfig;

    move-result-object v1

    .line 1280
    new-instance v2, Ljjx$d;

    invoke-direct {v2, p0, v0}, Ljjx$d;-><init>(Ljjx;B)V

    new-instance v4, Ljjx$e;

    invoke-direct {v4, p0, v0}, Ljjx$e;-><init>(Ljjx;B)V

    new-instance v5, Ljjx$c;

    invoke-direct {v5, p0, v0}, Ljjx$c;-><init>(Ljjx;B)V

    invoke-static {v3, v1, v2, v4, v5}, Lcom/taobao/living/api/TBLiveStreamEngine;->create(Landroid/content/Context;Lcom/taobao/living/api/TBLSConfig;Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;)Lcom/taobao/living/api/TBLiveStreamEngine;

    move-result-object v0

    iput-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    .line 1282
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    invoke-virtual {v0}, Lcom/taobao/living/api/TBLiveStreamEngine;->init()V

    .line 4203
    iget-object v0, p0, Ljjx;->m:Lcom/taobao/taolive/sdk/utils/WeakHandler;

    if-nez v0, :cond_2

    .line 4204
    new-instance v0, Lcom/taobao/taolive/sdk/utils/WeakHandler;

    invoke-direct {v0, p0}, Lcom/taobao/taolive/sdk/utils/WeakHandler;-><init>(Lcom/taobao/taolive/sdk/utils/IHandler;)V

    iput-object v0, p0, Ljjx;->m:Lcom/taobao/taolive/sdk/utils/WeakHandler;

    .line 5185
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 5186
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5187
    iget-object v1, p0, Ljjx;->e:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 5188
    iget-object v1, p0, Ljjx;->e:Landroid/content/Context;

    iget-object v2, p0, Ljjx;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    :cond_3
    return-void

    .line 2255
    :cond_4
    sget-object v1, Lcom/taobao/living/api/TBConstants$Role;->FANS:Lcom/taobao/living/api/TBConstants$Role;

    goto :goto_0

    .line 2257
    :cond_5
    sget-object v1, Lcom/taobao/living/api/TBConstants$PushStreamMode;->MODE_RTMP:Lcom/taobao/living/api/TBConstants$PushStreamMode;

    goto :goto_1

    :cond_6
    move v1, v0

    .line 2263
    goto :goto_2

    :cond_7
    sget-object v1, Lcom/taobao/living/api/TBConstants$VideoDefinition;->StandardDefinition:Lcom/taobao/living/api/TBConstants$VideoDefinition;

    goto :goto_3

    .line 2269
    :cond_8
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v1

    .line 4035
    iget-object v1, v1, Lbwr;->b:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    .line 2270
    if-eqz v1, :cond_9

    .line 2271
    iget v1, v1, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->liveRotation:I

    if-ne v1, v2, :cond_a

    :goto_5
    invoke-virtual {v4, v2}, Lcom/taobao/living/api/TBLSConfig$Builder;->setIsLandscape(Z)Lcom/taobao/living/api/TBLSConfig$Builder;

    .line 2273
    :cond_9
    sget-object v1, Lcom/taobao/living/api/TBConstants$VideoDefinition;->StandardDefinition:Lcom/taobao/living/api/TBConstants$VideoDefinition;

    invoke-virtual {v4, v1}, Lcom/taobao/living/api/TBLSConfig$Builder;->setVideoDefinition(Lcom/taobao/living/api/TBConstants$VideoDefinition;)Lcom/taobao/living/api/TBLSConfig$Builder;

    goto :goto_4

    :cond_a
    move v2, v0

    .line 2271
    goto :goto_5
.end method

.method static synthetic a(Ljjx;J)J
    .locals 1
    .param p0, "x0"    # Ljjx;
    .param p1, "x1"    # J

    .prologue
    .line 54
    iput-wide p1, p0, Ljjx;->o:J

    return-wide p1
.end method

.method static synthetic a(Ljjx;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Ljjx;

    .prologue
    .line 54
    iget-object v0, p0, Ljjx;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Ljjx;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Ljjx;
    .param p1, "x1"    # Landroid/support/v7/app/AlertDialog;

    .prologue
    .line 54
    iput-object p1, p0, Ljjx;->f:Landroid/support/v7/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Ljjx;Lcom/taobao/taolive/sdk/utils/WeakHandler;)Lcom/taobao/taolive/sdk/utils/WeakHandler;
    .locals 0
    .param p0, "x0"    # Ljjx;
    .param p1, "x1"    # Lcom/taobao/taolive/sdk/utils/WeakHandler;

    .prologue
    .line 54
    iput-object p1, p0, Ljjx;->m:Lcom/taobao/taolive/sdk/utils/WeakHandler;

    return-object p1
.end method

.method static synthetic a(Ljjx;Z)Z
    .locals 1
    .param p0, "x0"    # Ljjx;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljjx;->g:Z

    return v0
.end method

.method static synthetic b(Ljjx;)Z
    .locals 1
    .param p0, "x0"    # Ljjx;

    .prologue
    .line 54
    iget-boolean v0, p0, Ljjx;->g:Z

    return v0
.end method

.method static synthetic c(Ljjx;)Landroid/support/v7/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Ljjx;

    .prologue
    .line 54
    iget-object v0, p0, Ljjx;->f:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic d(Ljjx;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Ljjx;

    .prologue
    .line 54
    iget-object v0, p0, Ljjx;->r:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Ljjx;)Lcom/taobao/taolive/sdk/utils/WeakHandler;
    .locals 1
    .param p0, "x0"    # Ljjx;

    .prologue
    .line 54
    iget-object v0, p0, Ljjx;->m:Lcom/taobao/taolive/sdk/utils/WeakHandler;

    return-object v0
.end method

.method static synthetic f(Ljjx;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Ljjx;

    .prologue
    .line 54
    iget-object v0, p0, Ljjx;->s:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Ljjx;)Z
    .locals 1
    .param p0, "x0"    # Ljjx;

    .prologue
    .line 54
    iget-boolean v0, p0, Ljjx;->j:Z

    return v0
.end method

.method static synthetic h(Ljjx;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljjx;

    .prologue
    .line 54
    iget-object v0, p0, Ljjx;->c:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 431
    iget-object v1, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    if-eqz v1, :cond_0

    .line 433
    :try_start_0
    iget-object v1, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    invoke-virtual {v1}, Lcom/taobao/living/api/TBLiveStreamEngine;->stopLive()V
    :try_end_0
    .catch Lcom/taobao/living/api/TBLiveStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Lcom/taobao/living/api/TBLiveStreamException;
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "stopLive failed, error"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 436
    invoke-virtual {v0}, Lcom/taobao/living/api/TBLiveStreamException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 435
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/widget/RelativeLayout;)V
    .locals 2
    .param p1, "layout"    # Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 361
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljjx;->k:Z

    if-eqz v0, :cond_0

    .line 362
    iput-object p1, p0, Ljjx;->b:Landroid/widget/RelativeLayout;

    .line 363
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    iget-object v1, p0, Ljjx;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/taobao/living/api/TBLiveStreamEngine;->changeLocalVideoPreview(Landroid/widget/RelativeLayout;)V

    .line 365
    invoke-virtual {p0}, Ljjx;->a()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljjx;->b(Z)V

    .line 367
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "roomId"    # Ljava/lang/String;
    .param p2, "roomUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 414
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iput-object p1, p0, Ljjx;->h:Ljava/lang/String;

    .line 418
    iput-object p2, p0, Ljjx;->i:Ljava/lang/String;

    .line 420
    iget-object v1, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    if-eqz v1, :cond_0

    .line 422
    :try_start_0
    iget-object v1, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    iget-object v2, p0, Ljjx;->h:Ljava/lang/String;

    iget-object v3, p0, Ljjx;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/living/api/TBLiveStreamEngine;->startLive(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/taobao/living/api/TBLiveStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Lcom/taobao/living/api/TBLiveStreamException;
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "startLive failed, error"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 425
    invoke-virtual {v0}, Lcom/taobao/living/api/TBLiveStreamException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 424
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "peerID"    # Ljava/lang/String;
    .param p2, "isAccept"    # Z
    .param p3, "extension"    # Ljava/lang/String;

    .prologue
    .line 474
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/living/api/TBLiveStreamEngine;->respondToLinkLiveCall(Ljava/lang/String;ZLjava/lang/String;)V

    .line 477
    :cond_0
    return-void
.end method

.method public final a(Ljjx$a;)V
    .locals 1
    .param p1, "listener"    # Ljjx$a;

    .prologue
    .line 229
    if-eqz p1, :cond_0

    iget-object v0, p0, Ljjx;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Ljjx;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_0
    return-void
.end method

.method public final a(Ljjx$b;)V
    .locals 1
    .param p1, "listener"    # Ljjx$b;

    .prologue
    .line 217
    if-eqz p1, :cond_0

    iget-object v0, p0, Ljjx;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Ljjx;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 296
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_live_enable_nsagc"

    .line 6083
    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 297
    if-nez v0, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    invoke-virtual {v0, v2}, Lcom/taobao/living/api/TBLiveStreamEngine;->setNSAGCEnable(Z)V

    goto :goto_0
.end method

.method public final a([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 355
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    invoke-virtual {v0, p1}, Lcom/taobao/living/api/TBLiveStreamEngine;->onReceiveLWPData([B)V

    .line 358
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    invoke-virtual {v0}, Lcom/taobao/living/api/TBLiveStreamEngine;->isFacebeautyEnable()Z

    move-result v0

    .line 322
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 370
    iget-boolean v1, p0, Ljjx;->k:Z

    if-eqz v1, :cond_2

    .line 371
    iget-object v1, p0, Ljjx;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Ljjx;->a(Landroid/widget/RelativeLayout;)V

    .line 391
    :cond_0
    :goto_0
    iget-object v1, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    if-eqz v1, :cond_1

    .line 392
    iget-boolean v1, p0, Ljjx;->q:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    invoke-virtual {v1}, Lcom/taobao/living/api/TBLiveStreamEngine;->isFrontCameraInUse()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    invoke-virtual {p0}, Ljjx;->e()V

    .line 397
    :cond_1
    invoke-virtual {p0}, Ljjx;->a()Z

    move-result v1

    invoke-virtual {p0, v1}, Ljjx;->b(Z)V

    .line 398
    return-void

    .line 373
    :cond_2
    iget-object v1, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    if-eqz v1, :cond_3

    .line 375
    :try_start_0
    iget-object v1, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    iget-object v2, p0, Ljjx;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Lcom/taobao/living/api/TBLiveStreamEngine;->startPreview(Landroid/widget/RelativeLayout;)V

    .line 376
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljjx;->k:Z
    :try_end_0
    .catch Lcom/taobao/living/api/TBLiveStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :cond_3
    :goto_1
    iget-boolean v1, p0, Ljjx;->l:Z

    if-eqz v1, :cond_0

    .line 383
    iput-boolean v5, p0, Ljjx;->l:Z

    .line 384
    iget-object v1, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Ljjx;->h:Ljava/lang/String;

    iget-object v2, p0, Ljjx;->i:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Ljjx;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Lcom/taobao/living/api/TBLiveStreamException;
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "startPreview failed, error"

    aput-object v4, v3, v5

    .line 379
    invoke-virtual {v0}, Lcom/taobao/living/api/TBLiveStreamException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 378
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final b(Landroid/widget/RelativeLayout;)V
    .locals 1
    .param p1, "localRenderView"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 442
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    invoke-virtual {v0, p1}, Lcom/taobao/living/api/TBLiveStreamEngine;->startPreview(Landroid/widget/RelativeLayout;)V

    .line 445
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "peerID"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 467
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/taobao/living/api/TBLiveStreamEngine;->endLinkLiveWithPeer(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :cond_0
    return-void
.end method

.method public final b(Ljjx$a;)V
    .locals 1
    .param p1, "listener"    # Ljjx$a;

    .prologue
    .line 235
    if-eqz p1, :cond_0

    iget-object v0, p0, Ljjx;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Ljjx;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 238
    :cond_0
    return-void
.end method

.method public final b(Ljjx$b;)V
    .locals 1
    .param p1, "listener"    # Ljjx$b;

    .prologue
    .line 223
    if-eqz p1, :cond_0

    iget-object v0, p0, Ljjx;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Ljjx;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 226
    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 310
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    invoke-virtual {v0, p1}, Lcom/taobao/living/api/TBLiveStreamEngine;->setFacebeautyEnable(Z)V

    .line 313
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 401
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljjx;->k:Z

    if-eqz v0, :cond_0

    .line 402
    iput-boolean v1, p0, Ljjx;->k:Z

    .line 403
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    invoke-virtual {v0}, Lcom/taobao/living/api/TBLiveStreamEngine;->stopPreview()V

    .line 404
    invoke-direct {p0}, Ljjx;->h()V

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljjx;->l:Z

    .line 408
    :cond_0
    iget-object v0, p0, Ljjx;->m:Lcom/taobao/taolive/sdk/utils/WeakHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljjx;->m:Lcom/taobao/taolive/sdk/utils/WeakHandler;

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/sdk/utils/WeakHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Ljjx;->m:Lcom/taobao/taolive/sdk/utils/WeakHandler;

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/sdk/utils/WeakHandler;->removeMessages(I)V

    .line 411
    :cond_1
    return-void
.end method

.method public final c(Landroid/widget/RelativeLayout;)V
    .locals 1
    .param p1, "remoteRenderView"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 461
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    invoke-virtual {v0, p1}, Lcom/taobao/living/api/TBLiveStreamEngine;->setRemoteRenderView(Landroid/widget/RelativeLayout;)V

    .line 464
    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 4
    .param p1, "high"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 621
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    if-nez v0, :cond_0

    .line 629
    :goto_0
    return-void

    .line 624
    :cond_0
    if-eqz p1, :cond_1

    .line 625
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    const-wide/32 v2, 0x16e360

    invoke-virtual {v0, v2, v3}, Lcom/taobao/living/api/TBLiveStreamEngine;->setVideoEncoderBitrate(J)V

    goto :goto_0

    .line 627
    :cond_1
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    const-wide/32 v2, 0xaae60

    invoke-virtual {v0, v2, v3}, Lcom/taobao/living/api/TBLiveStreamEngine;->setVideoEncoderBitrate(J)V

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    invoke-virtual {v0}, Lcom/taobao/living/api/TBLiveStreamEngine;->stopPreview()V

    .line 451
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    invoke-virtual {v0}, Lcom/taobao/living/api/TBLiveStreamEngine;->isFrontCameraAvaliable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    invoke-virtual {v0}, Lcom/taobao/living/api/TBLiveStreamEngine;->isBackCameraAvaliable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    invoke-virtual {v0}, Lcom/taobao/living/api/TBLiveStreamEngine;->switchCamera()V

    .line 490
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    invoke-virtual {v0}, Lcom/taobao/living/api/TBLiveStreamEngine;->isFrontCameraInUse()Z

    move-result v0

    iput-boolean v0, p0, Ljjx;->q:Z

    .line 492
    invoke-virtual {p0}, Ljjx;->a()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljjx;->b(Z)V

    .line 494
    :cond_0
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    invoke-virtual {v0}, Lcom/taobao/living/api/TBLiveStreamEngine;->isFrontCameraInUse()Z

    move-result v0

    .line 500
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 508
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    if-eqz v0, :cond_0

    .line 509
    invoke-direct {p0}, Ljjx;->h()V

    .line 510
    iget-object v0, p0, Ljjx;->a:Lcom/taobao/living/api/TBLiveStreamEngine;

    invoke-virtual {v0}, Lcom/taobao/living/api/TBLiveStreamEngine;->deInit()V

    .line 512
    :cond_0
    iget-object v0, p0, Ljjx;->m:Lcom/taobao/taolive/sdk/utils/WeakHandler;

    if-eqz v0, :cond_2

    .line 513
    iget-object v0, p0, Ljjx;->m:Lcom/taobao/taolive/sdk/utils/WeakHandler;

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/sdk/utils/WeakHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Ljjx;->m:Lcom/taobao/taolive/sdk/utils/WeakHandler;

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/sdk/utils/WeakHandler;->removeMessages(I)V

    .line 516
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ljjx;->m:Lcom/taobao/taolive/sdk/utils/WeakHandler;

    .line 6193
    :cond_2
    iget-object v0, p0, Ljjx;->e:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 6195
    :try_start_0
    iget-object v0, p0, Ljjx;->e:Landroid/content/Context;

    iget-object v1, p0, Ljjx;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6198
    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 91
    .local v4, "time":J
    iget-wide v8, p0, Ljjx;->n:J

    add-long/2addr v8, v4

    iget-wide v10, p0, Ljjx;->o:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Ljjx;->n:J

    .line 93
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "HH:mm:ss"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    const-string/jumbo v3, "GMT+00:00"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 95
    iget-wide v8, p0, Ljjx;->n:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "pushTimeStr":Ljava/lang/String;
    iget-object v3, p0, Ljjx;->r:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljjx;->r:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 98
    iget-boolean v3, p0, Ljjx;->p:Z

    if-eqz v3, :cond_0

    .line 99
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Ljjx;->r:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 100
    iget-object v3, p0, Ljjx;->r:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljjx$b;

    invoke-interface {v3}, Ljjx$b;->d()V

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Ljjx;->r:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 104
    iget-object v3, p0, Ljjx;->r:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljjx$b;

    invoke-interface {v3, v2}, Ljjx$b;->a(Ljava/lang/String;)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 107
    :cond_1
    iget-boolean v3, p0, Ljjx;->p:Z

    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, p0, Ljjx;->p:Z

    .line 110
    .end local v1    # "i":I
    :cond_2
    iput-wide v4, p0, Ljjx;->o:J

    .line 112
    iget-object v3, p0, Ljjx;->m:Lcom/taobao/taolive/sdk/utils/WeakHandler;

    if-nez v3, :cond_3

    .line 113
    new-instance v3, Lcom/taobao/taolive/sdk/utils/WeakHandler;

    invoke-direct {v3, p0}, Lcom/taobao/taolive/sdk/utils/WeakHandler;-><init>(Lcom/taobao/taolive/sdk/utils/IHandler;)V

    iput-object v3, p0, Ljjx;->m:Lcom/taobao/taolive/sdk/utils/WeakHandler;

    .line 115
    :cond_3
    iget-object v3, p0, Ljjx;->m:Lcom/taobao/taolive/sdk/utils/WeakHandler;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v3, v6, v8, v9}, Lcom/taobao/taolive/sdk/utils/WeakHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 116
    return-void

    .restart local v1    # "i":I
    :cond_4
    move v3, v6

    .line 107
    goto :goto_2
.end method
