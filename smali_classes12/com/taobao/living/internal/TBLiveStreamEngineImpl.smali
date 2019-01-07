.class public Lcom/taobao/living/internal/TBLiveStreamEngineImpl;
.super Lcom/taobao/living/api/TBLiveStreamEngine;
.source "TBLiveStreamEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;,
        Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;,
        Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;
    }
.end annotation


# instance fields
.field private A:Lcom/taobao/taolive/GLBeautyRender;

.field private B:Z

.field private C:Lcom/taobao/living/api/TBConstants$Role;

.field private D:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:I

.field private J:Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;

.field private K:Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

.field private L:Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

.field private M:Lcom/taobao/taolive/TaoLive$OnPreparedListener;

.field private N:Lcom/taobao/taolive/TaoLive$OnErrorListener;

.field private O:Lcom/taobao/taolive/TaoLive$OnInfoListener;

.field private P:Lcom/taobao/artc/api/ArtcEngineEventHandler;

.field private Q:Lcom/taobao/artc/lwp/ArtcLWPChannel$a;

.field private a:Landroid/content/Context;

.field private b:Lcom/taobao/taolive/TaoLive;

.field private c:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

.field private d:Lcom/taobao/artc/api/ArtcEngine;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/util/Map;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

.field private p:Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/RelativeLayout;

.field private s:Landroid/widget/RelativeLayout;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:I

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/taobao/living/api/TBLSConfig;Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tbLSConfig"    # Lcom/taobao/living/api/TBLSConfig;
    .param p3, "networkStatusListener"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;
    .param p4, "tbLSStateListener"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;
    .param p5, "tbLSLinkMicListener"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    .prologue
    const/16 v8, 0x1e0

    const/16 v7, 0x280

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 588
    invoke-direct {p0}, Lcom/taobao/living/api/TBLiveStreamEngine;-><init>()V

    .line 61
    iput-object v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a:Landroid/content/Context;

    .line 63
    iput-object v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    .line 64
    iput-object v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    .line 66
    iput-object v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    .line 68
    iput-object v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->e:Ljava/lang/String;

    .line 69
    iput-object v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->f:Ljava/lang/String;

    .line 70
    iput-object v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->g:Ljava/lang/String;

    .line 71
    iput-object v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->h:Ljava/lang/String;

    .line 72
    iput v5, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->i:I

    .line 74
    iput-object v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->j:Ljava/util/Map;

    .line 76
    iput-boolean v5, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->k:Z

    .line 77
    iput-boolean v5, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l:Z

    .line 78
    iput-boolean v5, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->m:Z

    .line 79
    iput-boolean v5, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->n:Z

    .line 81
    sget-object v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStateNone:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    iput-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->o:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    .line 82
    sget-object v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;->TBLiveStreamNetworkExcellent:Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    iput-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->p:Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    .line 84
    iput-object v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->q:Landroid/view/View;

    .line 85
    iput-object v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->r:Landroid/widget/RelativeLayout;

    .line 86
    iput-object v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->s:Landroid/widget/RelativeLayout;

    .line 88
    iput-boolean v6, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->t:Z

    .line 89
    iput-boolean v5, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->u:Z

    .line 90
    iput-boolean v5, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->v:Z

    .line 91
    iput v7, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->w:I

    .line 92
    iput v8, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->x:I

    .line 93
    iput-boolean v5, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->y:Z

    .line 94
    iput-boolean v6, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->z:Z

    .line 98
    iput-boolean v5, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->B:Z

    .line 99
    sget-object v0, Lcom/taobao/living/api/TBConstants$Role;->ANCHOR:Lcom/taobao/living/api/TBConstants$Role;

    iput-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->C:Lcom/taobao/living/api/TBConstants$Role;

    .line 101
    iput-object v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->D:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    .line 103
    iput-object v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->E:Ljava/lang/String;

    .line 104
    iput-object v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->F:Ljava/lang/String;

    .line 105
    iput-object v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->G:Ljava/lang/String;

    .line 106
    iput-object v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->H:Ljava/lang/String;

    .line 107
    iput v5, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->I:I

    .line 121
    iput-object v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->J:Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;

    .line 122
    iput-object v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->K:Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    .line 123
    iput-object v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->L:Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    .line 142
    new-instance v0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$1;

    invoke-direct {v0, p0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$1;-><init>(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)V

    iput-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->M:Lcom/taobao/taolive/TaoLive$OnPreparedListener;

    .line 168
    new-instance v0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$2;

    invoke-direct {v0, p0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$2;-><init>(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)V

    iput-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->N:Lcom/taobao/taolive/TaoLive$OnErrorListener;

    .line 193
    new-instance v0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$3;

    invoke-direct {v0, p0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$3;-><init>(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)V

    iput-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->O:Lcom/taobao/taolive/TaoLive$OnInfoListener;

    .line 210
    new-instance v0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;

    invoke-direct {v0, p0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$4;-><init>(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)V

    iput-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->P:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    .line 575
    new-instance v0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$5;

    invoke-direct {v0, p0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$5;-><init>(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)V

    iput-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->Q:Lcom/taobao/artc/lwp/ArtcLWPChannel$a;

    .line 589
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v1, "Create TBLiveStreamEngineImpl, tbLSConfig.videoDefinition:"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/taobao/living/api/TBLSConfig;->getVideoDefinition()Lcom/taobao/living/api/TBConstants$VideoDefinition;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    iput-object p1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a:Landroid/content/Context;

    .line 593
    invoke-virtual {p2}, Lcom/taobao/living/api/TBLSConfig;->getVideoDefinition()Lcom/taobao/living/api/TBConstants$VideoDefinition;

    move-result-object v0

    sget-object v1, Lcom/taobao/living/api/TBConstants$VideoDefinition;->LowDefinition:Lcom/taobao/living/api/TBConstants$VideoDefinition;

    if-ne v0, v1, :cond_4

    .line 594
    const/16 v0, 0x160

    iput v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->w:I

    .line 595
    const/16 v0, 0x120

    iput v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->x:I

    .line 610
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/taobao/living/api/TBLSConfig;->getIsLandscape()Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->y:Z

    .line 611
    invoke-virtual {p2}, Lcom/taobao/living/api/TBLSConfig;->getIsEnableHwcode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->z:Z

    .line 613
    invoke-virtual {p2}, Lcom/taobao/living/api/TBLSConfig;->getRole()Lcom/taobao/living/api/TBConstants$Role;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->C:Lcom/taobao/living/api/TBConstants$Role;

    .line 615
    invoke-virtual {p2}, Lcom/taobao/living/api/TBLSConfig;->getAppKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->e:Ljava/lang/String;

    .line 616
    invoke-virtual {p2}, Lcom/taobao/living/api/TBLSConfig;->getServiceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->f:Ljava/lang/String;

    .line 617
    invoke-virtual {p2}, Lcom/taobao/living/api/TBLSConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->g:Ljava/lang/String;

    .line 618
    invoke-virtual {p2}, Lcom/taobao/living/api/TBLSConfig;->getLocalUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->h:Ljava/lang/String;

    .line 619
    invoke-virtual {p2}, Lcom/taobao/living/api/TBLSConfig;->getEnv()I

    move-result v0

    iput v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->i:I

    .line 620
    invoke-virtual {p2}, Lcom/taobao/living/api/TBLSConfig;->getAwpConfigMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->j:Ljava/util/Map;

    .line 622
    iput-object p3, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->J:Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;

    .line 623
    iput-object p4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->K:Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    .line 624
    iput-object p5, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->L:Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    .line 626
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/taobao/living/api/TBLSConfig;->getPushStreamMode()Lcom/taobao/living/api/TBConstants$PushStreamMode;

    move-result-object v0

    sget-object v1, Lcom/taobao/living/api/TBConstants$PushStreamMode;->MODE_RTMP:Lcom/taobao/living/api/TBConstants$PushStreamMode;

    if-eq v0, v1, :cond_1

    .line 627
    invoke-virtual {p2}, Lcom/taobao/living/api/TBLSConfig;->getPushStreamMode()Lcom/taobao/living/api/TBConstants$PushStreamMode;

    move-result-object v0

    sget-object v1, Lcom/taobao/living/api/TBConstants$PushStreamMode;->MODE_DEFAULT:Lcom/taobao/living/api/TBConstants$PushStreamMode;

    if-ne v0, v1, :cond_2

    .line 628
    :cond_1
    iput-object v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    .line 629
    new-instance v0, Lcom/taobao/taolive/TaoLive;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/taobao/taolive/TaoLive;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    .line 630
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->M:Lcom/taobao/taolive/TaoLive$OnPreparedListener;

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/TaoLive;->setOnPreparedListener(Lcom/taobao/taolive/TaoLive$OnPreparedListener;)V

    .line 631
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->N:Lcom/taobao/taolive/TaoLive$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/TaoLive;->setOnErrorListener(Lcom/taobao/taolive/TaoLive$OnErrorListener;)V

    .line 632
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->O:Lcom/taobao/taolive/TaoLive$OnInfoListener;

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/TaoLive;->setOnInfoListener(Lcom/taobao/taolive/TaoLive$OnInfoListener;)V

    .line 635
    :cond_2
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/taobao/living/api/TBLSConfig;->getPushStreamMode()Lcom/taobao/living/api/TBConstants$PushStreamMode;

    move-result-object v0

    sget-object v1, Lcom/taobao/living/api/TBConstants$PushStreamMode;->MODE_RTP:Lcom/taobao/living/api/TBConstants$PushStreamMode;

    if-ne v0, v1, :cond_3

    .line 636
    iput-object v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    .line 637
    invoke-static {p1}, Lcom/taobao/artc/api/ArtcEngine;->create(Landroid/content/Context;)Lcom/taobao/artc/api/ArtcEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    .line 640
    :cond_3
    iput-object p1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a:Landroid/content/Context;

    .line 641
    return-void

    .line 596
    :cond_4
    invoke-virtual {p2}, Lcom/taobao/living/api/TBLSConfig;->getVideoDefinition()Lcom/taobao/living/api/TBConstants$VideoDefinition;

    move-result-object v0

    sget-object v1, Lcom/taobao/living/api/TBConstants$VideoDefinition;->HighDefinition:Lcom/taobao/living/api/TBConstants$VideoDefinition;

    if-ne v0, v1, :cond_5

    .line 597
    const/16 v0, 0x500

    iput v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->w:I

    .line 598
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->x:I

    .line 599
    iput-boolean v6, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->B:Z

    goto/16 :goto_0

    .line 601
    :cond_5
    iput v7, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->w:I

    .line 602
    const/16 v0, 0x170

    iput v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->x:I

    .line 603
    invoke-static {v7, v8}, Lcom/taobao/taolive/util;->checkIsCameraSupport(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 604
    const/16 v0, 0x500

    iput v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->w:I

    .line 605
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->x:I

    .line 606
    iput-boolean v6, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->B:Z

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->I:I

    return p1
.end method

.method static synthetic a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->D:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    return-object v0
.end method

.method static synthetic a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->E:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 644
    new-instance v1, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    invoke-direct {v1}, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;-><init>()V

    iput-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    .line 645
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->e:Ljava/lang/String;

    iput-object v2, v1, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->appKey:Ljava/lang/String;

    .line 646
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->f:Ljava/lang/String;

    iput-object v2, v1, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->serviveName:Ljava/lang/String;

    .line 647
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->g:Ljava/lang/String;

    iput-object v2, v1, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->deviceId:Ljava/lang/String;

    .line 648
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->h:Ljava/lang/String;

    iput-object v2, v1, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->localUserId:Ljava/lang/String;

    .line 649
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iput v0, v1, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->dataDir:I

    .line 650
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    const/4 v2, 0x3

    iput v2, v1, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->mediaType:I

    .line 651
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget-boolean v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->y:Z

    if-eqz v2, :cond_1

    :goto_0
    iput v0, v1, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->isLandscape:I

    .line 652
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->x:I

    iput v1, v0, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->videoWidth:I

    .line 653
    iget v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->x:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_0

    .line 654
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    const-wide/32 v2, 0x16e360

    iput-wide v2, v0, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->videoBitrate:J

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->w:I

    iput v1, v0, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->videoHeight:I

    .line 657
    return-void

    .line 651
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;)V
    .locals 5
    .param p1, "curNetStatus"    # Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1161
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v1, "setCurNetStatus: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1162
    iput-object p1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->p:Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    .line 1163
    return-void
.end method

.method private a(Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V
    .locals 5
    .param p1, "curTBLSState"    # Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1156
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v1, "setCurTBLSState: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1157
    iput-object p1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->o:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    .line 1158
    return-void
.end method

.method static synthetic a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl;
    .param p1, "x1"    # Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;)V

    return-void
.end method

.method static synthetic a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl;
    .param p1, "x1"    # Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V

    return-void
.end method

.method static synthetic a(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->n:Z

    return v0
.end method

.method static synthetic b(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->F:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v7, -0x1

    .line 671
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v3, "openCameraAndBindPreview enter!"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 672
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->q:Landroid/view/View;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->u:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    if-eqz v0, :cond_2

    .line 673
    iget-object v3, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    iget-boolean v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->t:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iget v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->w:I

    iget v5, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->x:I

    iget-boolean v6, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->y:Z

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/taobao/taolive/TaoLive;->openCamera(IIIZ)Landroid/view/SurfaceView;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->q:Landroid/view/View;

    .line 675
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 676
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->r:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->r:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->q:Landroid/view/View;

    .line 1691
    if-eqz v0, :cond_0

    if-nez v3, :cond_4

    .line 679
    :cond_0
    :goto_1
    iput-boolean v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->u:Z

    .line 680
    sget-object v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStatePreviewStarted:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    invoke-direct {p0, v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V

    .line 681
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->K:Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    if-eqz v0, :cond_1

    .line 682
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->K:Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->o:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    invoke-interface {v0, v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;->a(Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V

    .line 684
    :cond_1
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v1, "openCameraAndBindPreview done!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 685
    new-instance v0, Lcom/taobao/taolive/GLBeautyRender;

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    invoke-direct {v0, v1}, Lcom/taobao/taolive/GLBeautyRender;-><init>(Lcom/taobao/taolive/TaoLive;)V

    iput-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->A:Lcom/taobao/taolive/GLBeautyRender;

    .line 686
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->A:Lcom/taobao/taolive/GLBeautyRender;

    invoke-virtual {v0}, Lcom/taobao/taolive/GLBeautyRender;->start()V

    .line 688
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 673
    goto :goto_0

    .line 1694
    :cond_4
    new-instance v4, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1695
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x11

    invoke-direct {v5, v7, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1698
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->n:Z

    return v0
.end method

.method static synthetic c(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->G:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 709
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->q:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->u:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    if-eqz v1, :cond_1

    .line 710
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->A:Lcom/taobao/taolive/GLBeautyRender;

    if-eqz v1, :cond_0

    .line 711
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->A:Lcom/taobao/taolive/GLBeautyRender;

    invoke-virtual {v1}, Lcom/taobao/taolive/GLBeautyRender;->destoryBeauty()V

    .line 713
    :try_start_0
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->A:Lcom/taobao/taolive/GLBeautyRender;

    invoke-virtual {v1}, Lcom/taobao/taolive/GLBeautyRender;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    invoke-virtual {v1}, Lcom/taobao/taolive/TaoLive;->closeCamera()I

    .line 719
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->u:Z

    .line 720
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 721
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->q:Landroid/view/View;

    .line 723
    :cond_1
    return-void

    .line 714
    :catch_0
    move-exception v0

    .line 715
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->k:Z

    return v0
.end method

.method static synthetic d(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/taolive/TaoLive;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    return-object v0
.end method

.method static synthetic d(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->H:Ljava/lang/String;

    return-object p1
.end method

.method private d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 726
    new-instance v0, Lorg/webrtc/SurfaceViewRenderer;

    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lorg/webrtc/SurfaceViewRenderer;-><init>(Landroid/content/Context;)V

    .line 728
    .local v0, "localRender":Lorg/webrtc/SurfaceViewRenderer;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/webrtc/SurfaceViewRenderer;->setEnableHardwareScaler(Z)V

    .line 729
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    invoke-virtual {v2, v0}, Lcom/taobao/artc/api/ArtcEngine;->setLocalView(Lorg/webrtc/SurfaceViewRenderer;)V

    .line 730
    iput-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->q:Landroid/view/View;

    .line 731
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->r:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 732
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 735
    .local v1, "params1":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->r:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->q:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 737
    .end local v1    # "params1":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    sget-object v2, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStatePreviewStarted:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    invoke-direct {p0, v2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V

    .line 738
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->K:Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    if-eqz v2, :cond_1

    .line 739
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->K:Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    iget-object v3, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->o:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    invoke-interface {v2, v3}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;->a(Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V

    .line 741
    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->K:Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    return-object v0
.end method

.method static synthetic f(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/api/TBConstants$TBLiveStreamState;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->o:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    return-object v0
.end method

.method static synthetic g(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)V
    .locals 6
    .param p0, "x0"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    .prologue
    .line 58
    .line 3166
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    invoke-virtual {v0}, Lcom/taobao/taolive/TaoLive;->getNetworkLevel()I

    move-result v2

    .line 3167
    iget-object v3, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->p:Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    .line 3168
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget-wide v0, v0, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->videoBitrate:J

    .line 3169
    if-nez v2, :cond_1

    .line 3170
    sget-object v2, Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;->TBLiveStreamNetworkWorse:Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    invoke-direct {p0, v2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;)V

    .line 3171
    long-to-double v0, v0

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v4

    double-to-long v0, v0

    .line 3177
    :goto_0
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->p:Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    if-eq v3, v2, :cond_0

    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->J:Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;

    if-eqz v2, :cond_0

    .line 3178
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->J:Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;

    iget-object v3, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->p:Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    invoke-interface {v2, v3}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;->a(Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;)V

    .line 3179
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->k:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->m:Z

    if-eqz v2, :cond_0

    .line 3180
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    invoke-virtual {v2, v0, v1}, Lcom/taobao/taolive/TaoLive;->setAdaptiveBitrate(J)V

    .line 3181
    const-string/jumbo v2, "TBLiveStreamEngineImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setAdaptiveBitrate: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    :cond_0
    return-void

    .line 3172
    :cond_1
    const/4 v4, 0x1

    if-ne v4, v2, :cond_2

    .line 3173
    sget-object v2, Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;->TBLiveStreamNetworkNormal:Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    invoke-direct {p0, v2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;)V

    goto :goto_0

    .line 3175
    :cond_2
    sget-object v2, Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;->TBLiveStreamNetworkExcellent:Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    invoke-direct {p0, v2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->J:Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;

    return-object v0
.end method

.method static synthetic i(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->p:Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    return-object v0
.end method

.method static synthetic j(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/artc/api/ArtcEngine;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    return-object v0
.end method

.method static synthetic k(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->E:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->L:Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    return-object v0
.end method

.method static synthetic m(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Lcom/taobao/living/api/TBConstants$Role;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->C:Lcom/taobao/living/api/TBConstants$Role;

    return-object v0
.end method

.method static synthetic n(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->H:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/taobao/living/internal/TBLiveStreamEngineImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->G:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public changeLocalVideoPreview(Landroid/widget/RelativeLayout;)V
    .locals 3
    .param p1, "preview"    # Landroid/widget/RelativeLayout;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/living/api/TBLiveStreamException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 851
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v1, "changeLocalVideoPreview"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 852
    iput-object p1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->r:Landroid/widget/RelativeLayout;

    .line 853
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    if-eqz v0, :cond_1

    .line 854
    invoke-direct {p0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c()V

    .line 855
    invoke-direct {p0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b()V

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 856
    :cond_1
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcEngine;->stopPreview()V

    .line 858
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/artc/api/ArtcEngine;->setLocalView(Lorg/webrtc/SurfaceViewRenderer;)V

    .line 859
    invoke-direct {p0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d()V

    .line 860
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcEngine;->startPreview()V

    goto :goto_0
.end method

.method public checkCameraLight()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 918
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    if-eqz v1, :cond_1

    .line 919
    invoke-virtual {p0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->isFrontFacingCamera()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 923
    :cond_0
    :goto_0
    return v0

    .line 920
    :cond_1
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    if-eqz v1, :cond_0

    .line 921
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcEngine;->checkCameraLight()Z

    move-result v0

    goto :goto_0
.end method

.method public deInit()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1126
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v1, "deInit"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1127
    iget-boolean v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->k:Z

    if-nez v0, :cond_0

    .line 1128
    invoke-super {p0}, Lcom/taobao/living/api/TBLiveStreamEngine;->deInit()V

    .line 1153
    :goto_0
    return-void

    .line 1131
    :cond_0
    iput-boolean v3, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->k:Z

    .line 1132
    iput-boolean v3, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->m:Z

    .line 1133
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    if-eqz v0, :cond_4

    .line 1134
    iget-boolean v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->n:Z

    if-eqz v0, :cond_1

    .line 1135
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v1, "stopSendAudio stopSendVideo"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1136
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    invoke-virtual {v0}, Lcom/taobao/taolive/TaoLive;->stopSendAudio()I

    .line 1137
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    invoke-virtual {v0}, Lcom/taobao/taolive/TaoLive;->stopSendVideo()I

    .line 1138
    iput-boolean v3, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->n:Z

    .line 1140
    :cond_1
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    invoke-virtual {v0}, Lcom/taobao/taolive/TaoLive;->deInit()I

    .line 1141
    iput-object v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    .line 1148
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->K:Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    if-eqz v0, :cond_3

    .line 1149
    sget-object v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStateNone:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    invoke-direct {p0, v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V

    .line 1150
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->K:Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->o:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    invoke-interface {v0, v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;->a(Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V

    .line 1152
    :cond_3
    invoke-super {p0}, Lcom/taobao/living/api/TBLiveStreamEngine;->deInit()V

    goto :goto_0

    .line 1142
    :cond_4
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    if-eqz v0, :cond_2

    .line 1143
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    invoke-virtual {v0, v4}, Lcom/taobao/artc/api/ArtcEngine;->setLocalView(Lorg/webrtc/SurfaceViewRenderer;)V

    .line 1144
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcEngine;->unregistUser()V

    .line 1145
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcEngine;->unRegisterHandler()V

    .line 1146
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/taobao/artc/api/ArtcEngine;->unInitialize2(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public enableCameraLight(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 928
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    if-eqz v0, :cond_2

    .line 929
    if-eqz p1, :cond_1

    .line 930
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    invoke-virtual {v0}, Lcom/taobao/taolive/TaoLive;->turnLightOn()V

    .line 937
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    invoke-virtual {v0}, Lcom/taobao/taolive/TaoLive;->turnLightOff()V

    goto :goto_0

    .line 934
    :cond_2
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    invoke-virtual {v0, p1}, Lcom/taobao/artc/api/ArtcEngine;->enableCameraLight(Z)V

    goto :goto_0
.end method

.method public endLinkLiveWithPeer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "peerID"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 988
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v1, "endLinkLiveWithPeer"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 989
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    if-eqz v0, :cond_1

    .line 990
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->C:Lcom/taobao/living/api/TBConstants$Role;

    sget-object v1, Lcom/taobao/living/api/TBConstants$Role;->ANCHOR:Lcom/taobao/living/api/TBConstants$Role;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->E:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->E:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 991
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->E:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/taobao/artc/api/ArtcEngine;->kick2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->s:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 996
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 999
    :cond_1
    return-void

    .line 992
    :cond_2
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->C:Lcom/taobao/living/api/TBConstants$Role;

    sget-object v1, Lcom/taobao/living/api/TBConstants$Role;->FANS:Lcom/taobao/living/api/TBConstants$Role;

    if-ne v0, v1, :cond_0

    .line 993
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1, p2}, Lcom/taobao/artc/api/ArtcEngine;->leaveChannel2(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLastPreviewFrame()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->u:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 705
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    invoke-virtual {v0}, Lcom/taobao/taolive/TaoLive;->getLastPreviewFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public init()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 745
    iget-boolean v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->k:Z

    if-eqz v2, :cond_0

    .line 787
    :goto_0
    return-void

    .line 747
    :cond_0
    const-string/jumbo v2, "TBLiveStreamEngineImpl"

    const-string/jumbo v3, "init"

    new-array v4, v8, [Ljava/lang/Object;

    const-string/jumbo v5, "TaobaoLiveStream sdk version"

    aput-object v5, v4, v6

    const-string/jumbo v5, "1.0.0"

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 748
    iput-boolean v6, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l:Z

    .line 749
    iput-boolean v6, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->m:Z

    .line 750
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    if-eqz v2, :cond_2

    .line 751
    iput-boolean v6, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->n:Z

    .line 2660
    const-string/jumbo v2, "TBLiveStreamEngineImpl"

    const-string/jumbo v3, "initTBLiveStreamEngine enter!"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2661
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    if-eqz v2, :cond_1

    .line 2662
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    iget-boolean v3, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->z:Z

    invoke-virtual {v2, v3}, Lcom/taobao/taolive/TaoLive;->init(Z)I

    .line 2663
    invoke-direct {p0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a()V

    .line 2664
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    iget-object v3, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    invoke-virtual {v2, v3}, Lcom/taobao/taolive/TaoLive;->setConfig(Lcom/taobao/taolive/TaoLive$TaoLiveConfig;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 2665
    const-string/jumbo v2, "TBLiveStreamEngineImpl"

    const-string/jumbo v3, "rtmpEngine.setConfig error"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/living/utils/TBLSLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 785
    :cond_1
    :goto_1
    iput-boolean v7, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->k:Z

    .line 786
    iput-object p0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->D:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    goto :goto_0

    .line 753
    :cond_2
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    if-eqz v2, :cond_1

    .line 754
    invoke-direct {p0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a()V

    .line 755
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/taobao/artc/api/ArtcEngine;->unInitialize2(Ljava/lang/String;)V

    .line 756
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    iget-object v3, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->P:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    invoke-virtual {v2, v3}, Lcom/taobao/artc/api/ArtcEngine;->registerHandler(Lcom/taobao/artc/api/ArtcEngineEventHandler;)V

    .line 757
    new-instance v2, Lcom/taobao/artc/api/ArtcConfig$Builder;

    invoke-direct {v2}, Lcom/taobao/artc/api/ArtcConfig$Builder;-><init>()V

    iget-object v3, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget-object v3, v3, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->appKey:Ljava/lang/String;

    .line 758
    invoke-virtual {v2, v3}, Lcom/taobao/artc/api/ArtcConfig$Builder;->setAppKey(Ljava/lang/String;)Lcom/taobao/artc/api/ArtcConfig$Builder;

    move-result-object v2

    iget v3, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->i:I

    .line 759
    invoke-virtual {v2, v3}, Lcom/taobao/artc/api/ArtcConfig$Builder;->setEnvironment(I)Lcom/taobao/artc/api/ArtcConfig$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget-object v3, v3, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->serviveName:Ljava/lang/String;

    .line 760
    invoke-virtual {v2, v3}, Lcom/taobao/artc/api/ArtcConfig$Builder;->setServiceName(Ljava/lang/String;)Lcom/taobao/artc/api/ArtcConfig$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget-object v3, v3, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->deviceId:Ljava/lang/String;

    .line 761
    invoke-virtual {v2, v3}, Lcom/taobao/artc/api/ArtcConfig$Builder;->setDeviceID(Ljava/lang/String;)Lcom/taobao/artc/api/ArtcConfig$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget-object v3, v3, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->localUserId:Ljava/lang/String;

    .line 762
    invoke-virtual {v2, v3}, Lcom/taobao/artc/api/ArtcConfig$Builder;->setLocalUserId(Ljava/lang/String;)Lcom/taobao/artc/api/ArtcConfig$Builder;

    move-result-object v2

    .line 763
    invoke-virtual {v2, v6}, Lcom/taobao/artc/api/ArtcConfig$Builder;->setLoadBeautyResource(Z)Lcom/taobao/artc/api/ArtcConfig$Builder;

    move-result-object v2

    .line 764
    invoke-virtual {v2, v6}, Lcom/taobao/artc/api/ArtcConfig$Builder;->setPreferBlueTooth(Z)Lcom/taobao/artc/api/ArtcConfig$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->Q:Lcom/taobao/artc/lwp/ArtcLWPChannel$a;

    .line 765
    invoke-virtual {v2, v3}, Lcom/taobao/artc/api/ArtcConfig$Builder;->setLWPSender(Lcom/taobao/artc/lwp/ArtcLWPChannel$a;)Lcom/taobao/artc/api/ArtcConfig$Builder;

    move-result-object v2

    const-string/jumbo v3, "lwp"

    .line 766
    invoke-virtual {v2, v3}, Lcom/taobao/artc/api/ArtcConfig$Builder;->setProtocal(Ljava/lang/String;)Lcom/taobao/artc/api/ArtcConfig$Builder;

    move-result-object v2

    const/16 v3, 0x1e

    .line 767
    invoke-virtual {v2, v3}, Lcom/taobao/artc/api/ArtcConfig$Builder;->setCallTimeoutSec(I)Lcom/taobao/artc/api/ArtcConfig$Builder;

    move-result-object v2

    .line 768
    invoke-virtual {v2, v8}, Lcom/taobao/artc/api/ArtcConfig$Builder;->setVideoEncodeMode(I)Lcom/taobao/artc/api/ArtcConfig$Builder;

    move-result-object v0

    .line 769
    .local v0, "builder":Lcom/taobao/artc/api/ArtcConfig$Builder;
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcConfig$Builder;->build()Lcom/taobao/artc/api/ArtcConfig;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/taobao/artc/api/ArtcEngine;->initialize2(Lcom/taobao/artc/api/ArtcConfig;Ljava/lang/String;)V

    .line 771
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    invoke-virtual {v2, v7}, Lcom/taobao/artc/api/ArtcEngine;->setEnableSpeakerphone(Z)V

    .line 773
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    iget-object v3, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget-object v3, v3, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->localUserId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/taobao/artc/api/ArtcEngine;->registUser(Ljava/lang/String;)V

    .line 775
    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;->ARTC_CHANNEL_PROFILE_COMMUNICATION:Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

    .line 776
    .local v1, "cprof":Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->C:Lcom/taobao/living/api/TBConstants$Role;

    sget-object v3, Lcom/taobao/living/api/TBConstants$Role;->ANCHOR:Lcom/taobao/living/api/TBConstants$Role;

    if-ne v2, v3, :cond_3

    .line 777
    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;->ARTC_CHANNEL_PROFILE_BROADCAST:Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

    .line 779
    :cond_3
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    invoke-virtual {v2, v1, v7}, Lcom/taobao/artc/api/ArtcEngine;->setChannelProfile(Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;Z)V

    .line 781
    iget-object v3, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    iget-boolean v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->B:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_720P_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    :goto_2
    iget-boolean v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->y:Z

    invoke-virtual {v3, v2, v4}, Lcom/taobao/artc/api/ArtcEngine;->setVideoProfile(Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;Z)V

    goto/16 :goto_1

    :cond_4
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->C:Lcom/taobao/living/api/TBConstants$Role;

    sget-object v4, Lcom/taobao/living/api/TBConstants$Role;->ANCHOR:Lcom/taobao/living/api/TBConstants$Role;

    if-ne v2, v4, :cond_5

    sget-object v2, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_360P_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    goto :goto_2

    :cond_5
    sget-object v2, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_240P_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    goto :goto_2
.end method

.method public isBackCameraAvaliable()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 878
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    if-eqz v2, :cond_0

    .line 879
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    invoke-virtual {v2}, Lcom/taobao/taolive/TaoLive;->getCameraStatus()I

    move-result v0

    .line 880
    .local v0, "flag":I
    and-int/lit8 v0, v0, 0x2

    .line 881
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 885
    .end local v0    # "flag":I
    :cond_0
    :goto_0
    return v1

    .line 881
    .restart local v0    # "flag":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFacebeautyEnable()Z
    .locals 1

    .prologue
    .line 1056
    iget-boolean v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->v:Z

    return v0
.end method

.method public isFacebeautySupported()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1031
    :try_start_0
    iget-object v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1032
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    new-instance v1, Ljava/util/zip/ZipFile;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 1033
    .local v1, "file":Ljava/util/zip/ZipFile;
    const-string/jumbo v4, "lib/armeabi/libAliEffectModule.so"

    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1034
    .local v3, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_0

    .line 1035
    const/4 v4, 0x1

    .line 1040
    .end local v1    # "file":Ljava/util/zip/ZipFile;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "zipEntry":Ljava/util/zip/ZipEntry;
    :goto_0
    return v4

    .line 1037
    :catch_0
    move-exception v0

    .line 1038
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1040
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isFrontCameraAvaliable()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 866
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    if-eqz v2, :cond_0

    .line 867
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    invoke-virtual {v2}, Lcom/taobao/taolive/TaoLive;->getCameraStatus()I

    move-result v0

    .line 868
    .local v0, "flag":I
    and-int/lit8 v0, v0, 0x1

    .line 869
    if-ne v0, v1, :cond_1

    .line 873
    .end local v0    # "flag":I
    :cond_0
    :goto_0
    return v1

    .line 869
    .restart local v0    # "flag":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFrontCameraInUse()Z
    .locals 1

    .prologue
    .line 890
    iget-boolean v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->t:Z

    return v0
.end method

.method public isFrontFacingCamera()Z
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    if-eqz v0, :cond_0

    .line 909
    iget-boolean v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->t:Z

    .line 913
    :goto_0
    return v0

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    if-eqz v0, :cond_1

    .line 911
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcEngine;->isFrontFacingCamera()Z

    move-result v0

    goto :goto_0

    .line 913
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onReceiveLWPData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 1121
    invoke-static {p1}, Lcom/taobao/artc/lwp/ArtcLWPChannel;->a([B)V

    .line 1122
    return-void
.end method

.method public reconnectServerAsync()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1103
    const-string/jumbo v1, "TBLiveStreamEngineImpl"

    const-string/jumbo v2, "reconnectServerAsync"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1104
    const/4 v0, -0x1

    .line 1105
    .local v0, "ret":I
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    if-eqz v1, :cond_0

    .line 1106
    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    invoke-virtual {v1}, Lcom/taobao/taolive/TaoLive;->reconnectServer()I

    move-result v0

    .line 1108
    :cond_0
    return v0
.end method

.method public respondToLinkLiveCall(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8
    .param p1, "peerID"    # Ljava/lang/String;
    .param p2, "isAccept"    # Z
    .param p3, "extension"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1003
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v1, "respondToLinkLiveCall"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1004
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "this.peerChannelString:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->H:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", this.callIdString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->F:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", this.peerUserIdString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->G:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isAccept:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mRole:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->C:Lcom/taobao/living/api/TBConstants$Role;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1008
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->H:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->H:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->F:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->F:Ljava/lang/String;

    .line 1009
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->G:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->G:Ljava/lang/String;

    .line 1010
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->H:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->F:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->G:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->C:Lcom/taobao/living/api/TBConstants$Role;

    sget-object v7, Lcom/taobao/living/api/TBConstants$Role;->ANCHOR:Lcom/taobao/living/api/TBConstants$Role;

    if-ne v4, v7, :cond_1

    move v4, v5

    :goto_0
    if-eqz p2, :cond_2

    :goto_1
    const-string/jumbo v6, ""

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/artc/api/ArtcEngine;->answer2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1014
    :cond_0
    return-void

    :cond_1
    move v4, v6

    .line 1011
    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1
.end method

.method public setFacebeautyEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1018
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v1, "setFacebeautyEnable"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1019
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    if-eqz v0, :cond_1

    .line 1020
    iput-boolean p1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->v:Z

    .line 1021
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    invoke-virtual {v0, p1}, Lcom/taobao/taolive/TaoLive;->setBeautyswitch(Z)I

    .line 1026
    :cond_0
    :goto_0
    return-void

    .line 1022
    :cond_1
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    if-eqz v0, :cond_0

    .line 1023
    iput-boolean p1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->v:Z

    .line 1024
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    invoke-virtual {v0, p1}, Lcom/taobao/artc/api/ArtcEngine;->enableFaceBeauty(Z)V

    goto :goto_0
.end method

.method public setFrontCameraMirrored(Z)V
    .locals 3
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 949
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v1, "setFrontCameraMirrored"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 950
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    if-eqz v0, :cond_1

    .line 951
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    invoke-virtual {v0, p1}, Lcom/taobao/taolive/TaoLive;->setViewerMirror(Z)V

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 952
    :cond_1
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    invoke-virtual {v0, p1}, Lcom/taobao/artc/api/ArtcEngine;->setVideoMirror(Z)V

    goto :goto_0
.end method

.method public setNSAGCEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 941
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v1, "setNSAGCEnable"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 942
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    invoke-virtual {v0, p1}, Lcom/taobao/taolive/TaoLive;->setNSAGCEnable(Z)V

    .line 945
    :cond_0
    return-void
.end method

.method public setRemoteRenderView(Landroid/widget/RelativeLayout;)V
    .locals 4
    .param p1, "remoteRenderView"    # Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 967
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->s:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 968
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 970
    :cond_0
    iput-object p1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->s:Landroid/widget/RelativeLayout;

    .line 971
    if-eqz p1, :cond_1

    .line 972
    new-instance v1, Lorg/webrtc/SurfaceViewRenderer;

    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/webrtc/SurfaceViewRenderer;-><init>(Landroid/content/Context;)V

    .line 974
    .local v1, "remoteRender":Lorg/webrtc/SurfaceViewRenderer;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/webrtc/SurfaceViewRenderer;->setEnableHardwareScaler(Z)V

    .line 975
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    invoke-virtual {v2, v1}, Lcom/taobao/artc/api/ArtcEngine;->setRemoteView(Lorg/webrtc/SurfaceViewRenderer;)V

    .line 976
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 979
    .local v0, "params1":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 980
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 984
    .end local v0    # "params1":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "remoteRender":Lorg/webrtc/SurfaceViewRenderer;
    :goto_0
    return-void

    .line 982
    :cond_1
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/taobao/artc/api/ArtcEngine;->setRemoteView(Lorg/webrtc/SurfaceViewRenderer;)V

    goto :goto_0
.end method

.method public setVideoEncoderBitrate(J)V
    .locals 3
    .param p1, "bitrate"    # J

    .prologue
    .line 1113
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setVideoEncoderBitrate:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1114
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->m:Z

    if-eqz v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/taolive/TaoLive;->setAdaptiveBitrate(J)V

    .line 1117
    :cond_0
    return-void
.end method

.method public setmOnLinkMicEventListener(Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;)V
    .locals 0
    .param p1, "mOnLinkMicEventListener"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->L:Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;

    .line 119
    return-void
.end method

.method public setmOnNetworkStatusListener(Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;)V
    .locals 0
    .param p1, "mOnNetworkStatusListener"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->J:Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;

    .line 111
    return-void
.end method

.method public setmOnTBLiveStreamStateListener(Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;)V
    .locals 0
    .param p1, "mOnTBLiveStreamStateListener"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->K:Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    .line 115
    return-void
.end method

.method public startLinkLiveWithPeer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "peerID"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 959
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v1, "startLinkLiveWithPeer"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 960
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->E:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->C:Lcom/taobao/living/api/TBConstants$Role;

    sget-object v3, Lcom/taobao/living/api/TBConstants$Role;->ANCHOR:Lcom/taobao/living/api/TBConstants$Role;

    if-ne v2, v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    const-string/jumbo v4, ""

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/artc/api/ArtcEngine;->call2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 963
    :cond_0
    return-void

    .line 961
    :cond_1
    const/4 v3, 0x2

    goto :goto_0
.end method

.method public startLive(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "roomId"    # Ljava/lang/String;
    .param p2, "rtmpUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/living/api/TBLiveStreamException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 819
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v1, "startLive"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 820
    iget-boolean v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->k:Z

    if-nez v0, :cond_0

    .line 821
    invoke-virtual {p0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->init()V

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    if-eqz v0, :cond_5

    .line 824
    iget-boolean v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->m:Z

    if-eqz v0, :cond_2

    .line 825
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    if-eqz v0, :cond_1

    .line 826
    iget-boolean v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->n:Z

    if-nez v0, :cond_1

    .line 827
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v1, "startSendAudio startSendVideo"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 828
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    invoke-virtual {v0}, Lcom/taobao/taolive/TaoLive;->startSendAudio()I

    .line 829
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    invoke-virtual {v0}, Lcom/taobao/taolive/TaoLive;->startSendVideo()I

    .line 830
    iput-boolean v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->n:Z

    .line 847
    :cond_1
    :goto_0
    return-void

    .line 835
    :cond_2
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/taolive/TaoLive;->prepareAsync(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 836
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v1, "rtmpEngine.prepare error"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 842
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->K:Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    if-eqz v0, :cond_4

    .line 843
    sget-object v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStateStarting:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    invoke-direct {p0, v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V

    .line 844
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->K:Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->o:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    invoke-interface {v0, v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;->a(Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V

    .line 846
    :cond_4
    iput-boolean v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->m:Z

    goto :goto_0

    .line 838
    :cond_5
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    if-eqz v0, :cond_3

    .line 839
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    invoke-virtual {v0, p2}, Lcom/taobao/artc/api/ArtcEngine;->setBroadcast(Ljava/lang/String;)V

    .line 840
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    invoke-virtual {v0, p1}, Lcom/taobao/artc/api/ArtcEngine;->createChannel(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public startPreview(Landroid/widget/RelativeLayout;)V
    .locals 5
    .param p1, "preView"    # Landroid/widget/RelativeLayout;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/living/api/TBLiveStreamException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 791
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v1, "startPreview"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 792
    iput-object p1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->r:Landroid/widget/RelativeLayout;

    .line 793
    iget-boolean v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l:Z

    if-nez v0, :cond_2

    .line 794
    iget-boolean v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->k:Z

    if-nez v0, :cond_0

    .line 795
    invoke-virtual {p0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->init()V

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    if-eqz v0, :cond_3

    .line 798
    invoke-direct {p0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b()V

    .line 813
    :cond_1
    :goto_0
    iput-boolean v4, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l:Z

    .line 815
    :cond_2
    return-void

    .line 799
    :cond_3
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    if-eqz v0, :cond_1

    .line 800
    iget-boolean v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->y:Z

    if-eqz v0, :cond_4

    .line 801
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    invoke-virtual {v0, v3, v3}, Lcom/taobao/artc/api/ArtcEngine;->setVideoRotation(ZI)V

    .line 805
    :goto_1
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->C:Lcom/taobao/living/api/TBConstants$Role;

    sget-object v1, Lcom/taobao/living/api/TBConstants$Role;->ANCHOR:Lcom/taobao/living/api/TBConstants$Role;

    if-ne v0, v1, :cond_5

    .line 806
    invoke-direct {p0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d()V

    .line 807
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcEngine;->startPreview()V

    goto :goto_0

    .line 803
    :cond_4
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    invoke-virtual {v0, v4, v3}, Lcom/taobao/artc/api/ArtcEngine;->setVideoRotation(ZI)V

    goto :goto_1

    .line 808
    :cond_5
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->C:Lcom/taobao/living/api/TBConstants$Role;

    sget-object v1, Lcom/taobao/living/api/TBConstants$Role;->FANS:Lcom/taobao/living/api/TBConstants$Role;

    if-ne v0, v1, :cond_1

    .line 809
    invoke-direct {p0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d()V

    .line 810
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcEngine;->startPreview()V

    goto :goto_0
.end method

.method public stopLive()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/living/api/TBLiveStreamException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1061
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v1, "stopLive"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1062
    iget-boolean v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->C:Lcom/taobao/living/api/TBConstants$Role;

    sget-object v1, Lcom/taobao/living/api/TBConstants$Role;->ANCHOR:Lcom/taobao/living/api/TBConstants$Role;

    if-ne v0, v1, :cond_1

    .line 1083
    :cond_0
    :goto_0
    return-void

    .line 1064
    :cond_1
    iput-boolean v3, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->m:Z

    .line 1065
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    if-eqz v0, :cond_4

    .line 1066
    iget-boolean v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->n:Z

    if-eqz v0, :cond_2

    .line 1067
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v1, "stopSendAudio stopSendVideo"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1068
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    invoke-virtual {v0}, Lcom/taobao/taolive/TaoLive;->stopSendAudio()I

    .line 1069
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    invoke-virtual {v0}, Lcom/taobao/taolive/TaoLive;->stopSendVideo()I

    .line 1070
    iput-boolean v3, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->n:Z

    .line 1072
    :cond_2
    iget-boolean v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->k:Z

    if-eqz v0, :cond_3

    .line 1073
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    invoke-virtual {v0}, Lcom/taobao/taolive/TaoLive;->deInit()I

    .line 1074
    iput-boolean v3, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->k:Z

    .line 1079
    :cond_3
    :goto_1
    sget-object v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStateEnded:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    invoke-direct {p0, v0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->a(Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V

    .line 1080
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->K:Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->K:Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;

    iget-object v1, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->o:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    invoke-interface {v0, v1}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;->a(Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V

    goto :goto_0

    .line 1076
    :cond_4
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    if-eqz v0, :cond_3

    .line 1077
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/taobao/artc/api/ArtcEngine;->leaveChannel2(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public stopPreview()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1087
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v1, "stopPreview"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1088
    iget-boolean v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l:Z

    if-eqz v0, :cond_0

    .line 1089
    iput-boolean v3, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->l:Z

    .line 1090
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    if-eqz v0, :cond_1

    .line 1091
    invoke-direct {p0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c()V

    .line 1092
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->t:Z

    .line 1099
    :cond_0
    :goto_0
    return-void

    .line 1093
    :cond_1
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcEngine;->stopPreview()V

    .line 1095
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/artc/api/ArtcEngine;->setLocalView(Lorg/webrtc/SurfaceViewRenderer;)V

    .line 1096
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    goto :goto_0
.end method

.method public switchCamera()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 895
    const-string/jumbo v2, "TBLiveStreamEngineImpl"

    const-string/jumbo v3, "switchCamera"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 896
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    if-eqz v2, :cond_2

    .line 897
    invoke-direct {p0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->c()V

    .line 898
    iget-boolean v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->t:Z

    if-nez v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->t:Z

    .line 899
    invoke-direct {p0}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b()V

    .line 904
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 898
    goto :goto_0

    .line 900
    :cond_2
    iget-object v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    if-eqz v2, :cond_0

    .line 901
    iget-boolean v2, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->t:Z

    if-nez v2, :cond_3

    :goto_2
    iput-boolean v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->t:Z

    .line 902
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->d:Lcom/taobao/artc/api/ArtcEngine;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcEngine;->switchCamera()V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 901
    goto :goto_2
.end method

.method public updateFaceBeautyParam(FFFFFFFFF)V
    .locals 10
    .param p1, "param0"    # F
    .param p2, "param1"    # F
    .param p3, "param2"    # F
    .param p4, "param3"    # F
    .param p5, "param4"    # F
    .param p6, "param5"    # F
    .param p7, "param6"    # F
    .param p8, "param7"    # F
    .param p9, "param8"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1047
    const-string/jumbo v0, "TBLiveStreamEngineImpl"

    const-string/jumbo v1, "updateFaceBeautyParam"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1048
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->b:Lcom/taobao/taolive/TaoLive;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/taobao/taolive/TaoLive;->updateFaceBeautyParam(FFFFFFFFF)I

    .line 1052
    :cond_0
    return-void
.end method
