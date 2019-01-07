.class public final Lbwq;
.super Ljava/lang/Object;
.source "LivePlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lbwv$a;
.implements Lbwy$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbwq$a;
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/view/ViewParent;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/widget/TextView;

.field f:Z

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/taolive/sdk/model/common/UrlInfo;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

.field public k:Landroid/app/Activity;

.field public l:Lbwy;

.field public m:Lbwv;

.field n:Lbxc;

.field public o:Lbyu;

.field public p:Lbwf;

.field public q:Lbtv;

.field public r:Lbts;

.field public s:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompatAdapter;

.field private t:Landroid/view/ViewGroup;

.field private u:I

.field private v:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lbwq$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lbwq$1;-><init>(Lbwq;Landroid/os/Looper;)V

    iput-object v0, p0, Lbwq;->v:Landroid/os/Handler;

    .line 704
    return-void
.end method

.method static synthetic a(Lbwq;)V
    .locals 7
    .param p0, "x0"    # Lbwq;

    .prologue
    .line 65
    .line 11393
    iget-object v0, p0, Lbwq;->v:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11394
    invoke-virtual {p0}, Lbwq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11395
    iget-object v0, p0, Lbwq;->k:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbwq;->j:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    if-eqz v0, :cond_0

    .line 11396
    iget-object v1, p0, Lbwq;->k:Landroid/app/Activity;

    iget-object v2, p0, Lbwq;->h:Ljava/lang/String;

    iget-object v0, p0, Lbwq;->j:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->uuid:Ljava/lang/String;

    iget-object v0, p0, Lbwq;->j:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->anchor:J

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lbwp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 11400
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lbwq;->a(I)V

    .line 11401
    invoke-direct {p0}, Lbwq;->i()V

    .line 65
    return-void
.end method

.method static synthetic a(Lbwq;Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;)V
    .locals 2
    .param p0, "x0"    # Lbwq;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;

    .prologue
    .line 65
    .line 12405
    if-eqz p1, :cond_0

    .line 12409
    iget v0, p1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->type:I

    const/16 v1, 0x2712

    if-ne v0, v1, :cond_0

    .line 12410
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->data:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 12411
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/msg/PowerMessageUtils;->parseLiveSystemMessageType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12413
    const-string/jumbo v1, "liveVideoStreamBreak"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12415
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lbwq;->a(I)V

    .line 12416
    invoke-direct {p0}, Lbwq;->j()V

    :cond_0
    :goto_0
    return-void

    .line 12417
    :cond_1
    const-string/jumbo v1, "liveVideoStreamRestore"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12419
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lbwq;->a(I)V

    .line 12420
    invoke-virtual {p0}, Lbwq;->f()V

    .line 12421
    invoke-direct {p0}, Lbwq;->k()V

    .line 12422
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0}, Lbws;->c()V

    goto :goto_0
.end method

.method static synthetic a(Lbwq;Z)Z
    .locals 1
    .param p0, "x0"    # Lbwq;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbwq;->f:Z

    return v0
.end method

.method static synthetic b(Lbwq;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lbwq;

    .prologue
    .line 65
    iget-object v0, p0, Lbwq;->k:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lbwq;)Z
    .locals 1
    .param p0, "x0"    # Lbwq;

    .prologue
    .line 65
    invoke-virtual {p0}, Lbwq;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lbwq;)Landroid/view/ViewParent;
    .locals 1
    .param p0, "x0"    # Lbwq;

    .prologue
    .line 65
    iget-object v0, p0, Lbwq;->b:Landroid/view/ViewParent;

    return-object v0
.end method

.method static synthetic e(Lbwq;)Lbwv;
    .locals 1
    .param p0, "x0"    # Lbwq;

    .prologue
    .line 65
    iget-object v0, p0, Lbwq;->m:Lbwv;

    return-object v0
.end method

.method static synthetic f(Lbwq;)V
    .locals 1
    .param p0, "x0"    # Lbwq;

    .prologue
    .line 65
    .line 11495
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0}, Lbws;->e()V

    .line 11496
    invoke-virtual {p0}, Lbwq;->f()V

    .line 65
    return-void
.end method

.method static synthetic g(Lbwq;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lbwq;

    .prologue
    .line 65
    iget-object v0, p0, Lbwq;->v:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lbwq;)Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;
    .locals 1
    .param p0, "x0"    # Lbwq;

    .prologue
    .line 65
    iget-object v0, p0, Lbwq;->j:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lbwq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lbwq;->m:Lbwv;

    invoke-virtual {v0}, Lbwv;->k()V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lbwq;->l:Lbwy;

    invoke-virtual {v0}, Lbwy;->a()V

    goto :goto_0
.end method

.method private i()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 461
    .line 1540
    invoke-direct {p0}, Lbwq;->j()V

    .line 1541
    iget-object v0, p0, Lbwq;->m:Lbwv;

    iget-object v1, p0, Lbwq;->b:Landroid/view/ViewParent;

    invoke-virtual {v0, v1, v2}, Lbwv;->a(Landroid/view/ViewParent;Z)V

    .line 1542
    iget-object v0, p0, Lbwq;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1543
    iget-object v0, p0, Lbwq;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1545
    iget-object v0, p0, Lbwq;->o:Lbyu;

    if-eqz v0, :cond_0

    .line 1546
    iget-object v0, p0, Lbwq;->o:Lbyu;

    invoke-interface {v0}, Lbyu;->a()V

    .line 463
    :cond_0
    iget-object v0, p0, Lbwq;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lbwq;->o:Lbyu;

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lbwq;->o:Lbyu;

    invoke-interface {v0}, Lbyu;->b()V

    .line 469
    :cond_1
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v0

    const/4 v1, 0x0

    .line 2063
    iput-object v1, v0, Lbwr;->a:Lcom/taobao/taolive/sdk/model/common/UrlInfo;

    .line 470
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbws;->c(Z)V

    .line 471
    return-void
.end method

.method static synthetic i(Lbwq;)V
    .locals 0
    .param p0, "x0"    # Lbwq;

    .prologue
    .line 65
    invoke-direct {p0}, Lbwq;->i()V

    return-void
.end method

.method static synthetic j(Lbwq;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lbwq;

    .prologue
    .line 65
    iget-object v0, p0, Lbwq;->c:Landroid/view/View;

    return-object v0
.end method

.method private j()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 622
    iput-boolean v2, p0, Lbwq;->f:Z

    .line 624
    iget-object v0, p0, Lbwq;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 625
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0}, Lbws;->d()V

    .line 626
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbws;->b(Z)V

    .line 627
    invoke-direct {p0}, Lbwq;->h()V

    .line 628
    return-void
.end method

.method private k()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 692
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v0

    .line 7059
    iget-object v6, v0, Lbwr;->a:Lcom/taobao/taolive/sdk/model/common/UrlInfo;

    .line 693
    .local v6, "currentUrlInfo":Lcom/taobao/taolive/sdk/model/common/UrlInfo;
    if-nez v6, :cond_0

    .line 702
    :goto_0
    return-void

    .line 7371
    :cond_0
    iget-object v0, p0, Lbwq;->n:Lbxc;

    if-nez v0, :cond_1

    .line 7372
    new-instance v0, Lbwq$a;

    invoke-direct {v0, p0, v3}, Lbwq$a;-><init>(Lbwq;B)V

    iput-object v0, p0, Lbwq;->n:Lbxc;

    .line 7373
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    iget-object v1, p0, Lbwq;->n:Lbxc;

    invoke-virtual {v0, v1}, Lbws;->a(Lbwz;)V

    .line 697
    :cond_1
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v0

    .line 8063
    iput-object v6, v0, Lbwr;->a:Lcom/taobao/taolive/sdk/model/common/UrlInfo;

    .line 698
    iget-object v0, v6, Lcom/taobao/taolive/sdk/model/common/UrlInfo;->url:Ljava/lang/String;

    iget-object v1, p0, Lbwq;->j:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    iget-object v2, p0, Lbwq;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/taobao/taolive/sdk/utils/DingTalkUtils;->getUrl(Ljava/lang/String;Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 699
    .local v7, "path":Ljava/lang/String;
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0, v3}, Lbws;->b(Z)V

    .line 700
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v8

    iget-object v0, p0, Lbwq;->k:Landroid/app/Activity;

    .line 8327
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v1

    .line 9051
    iget-object v1, v1, Lbwr;->d:Ljava/lang/String;

    .line 8328
    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 8331
    iget-object v1, v8, Lbws;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v1, :cond_4

    .line 9343
    iget-boolean v1, v8, Lbws;->f:Z

    if-nez v1, :cond_3

    .line 9346
    const/4 v1, 0x1

    iput-boolean v1, v8, Lbws;->f:Z

    .line 9369
    new-instance v5, Lbup;

    invoke-direct {v5}, Lbup;-><init>()V

    .line 9370
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v1

    .line 10043
    iget-object v1, v1, Lbwr;->c:Ljava/lang/String;

    .line 9370
    iput-object v1, v5, Lbup;->a:Ljava/lang/String;

    .line 9371
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v1

    invoke-virtual {v1}, Lbwr;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lbup;->b:Ljava/lang/String;

    .line 9372
    new-instance v2, Lbws$2;

    invoke-direct {v2, v8}, Lbws$2;-><init>(Lbws;)V

    .line 9402
    if-eqz v0, :cond_2

    .line 9403
    const-class v1, Lcom/alibaba/wukong/Callback;

    invoke-static {v2, v1, v0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    move-object v2, v0

    .line 9405
    :cond_2
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v1

    .line 10403
    new-instance v0, Lbxe$19;

    iget-object v4, v1, Lbxe;->a:Ljava/util/concurrent/Executor;

    invoke-direct/range {v0 .. v5}, Lbxe$19;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lbup;)V

    .line 10409
    invoke-virtual {v0}, Lbxe$19;->start()V

    .line 9348
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 9349
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v1

    invoke-virtual {v1}, Lbwr;->b()Ljava/lang/String;

    move-result-object v1

    .line 9350
    invoke-static {v0, v3, v1, v9}, Lcom/alibaba/android/dingtalk/live/msg/PowerMessageUtils;->subscribe(Landroid/content/Context;ILjava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 9351
    const-string/jumbo v0, "PlayerManager.subscribe"

    .line 11013
    const-string/jumbo v1, "live"

    invoke-static {v1, v9, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9352
    const-string/jumbo v0, "Live_GroupPlay"

    invoke-static {v0}, Lbym;->b(Ljava/lang/String;)V

    .line 8336
    :cond_3
    iget-object v0, v8, Lbws;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, v7}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 8337
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v0

    .line 11055
    iput-object v7, v0, Lbwr;->d:Ljava/lang/String;

    .line 8338
    iget-object v0, v8, Lbws;->c:Lbxb;

    invoke-virtual {v0}, Lbxb;->b()V

    .line 8339
    iget-object v0, v8, Lbws;->d:Lbxa;

    invoke-virtual {v0}, Lbxa;->a()V

    .line 701
    :cond_4
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0}, Lbws;->c()V

    goto/16 :goto_0
.end method

.method static synthetic k(Lbwq;)Z
    .locals 1
    .param p0, "x0"    # Lbwq;

    .prologue
    .line 65
    iget-boolean v0, p0, Lbwq;->f:Z

    return v0
.end method

.method static synthetic l(Lbwq;)V
    .locals 0
    .param p0, "x0"    # Lbwq;

    .prologue
    .line 65
    invoke-virtual {p0}, Lbwq;->f()V

    return-void
.end method

.method static synthetic m(Lbwq;)V
    .locals 0
    .param p0, "x0"    # Lbwq;

    .prologue
    .line 65
    invoke-virtual {p0}, Lbwq;->g()V

    return-void
.end method

.method static synthetic n(Lbwq;)V
    .locals 0
    .param p0, "x0"    # Lbwq;

    .prologue
    .line 65
    invoke-direct {p0}, Lbwq;->k()V

    return-void
.end method

.method static synthetic o(Lbwq;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lbwq;

    .prologue
    .line 65
    iget-object v0, p0, Lbwq;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic p(Lbwq;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lbwq;

    .prologue
    .line 65
    iget-object v0, p0, Lbwq;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic q(Lbwq;)I
    .locals 1
    .param p0, "x0"    # Lbwq;

    .prologue
    .line 65
    iget v0, p0, Lbwq;->u:I

    return v0
.end method

.method static synthetic r(Lbwq;)Lbwy;
    .locals 1
    .param p0, "x0"    # Lbwq;

    .prologue
    .line 65
    iget-object v0, p0, Lbwq;->l:Lbwy;

    return-object v0
.end method

.method static synthetic s(Lbwq;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lbwq;

    .prologue
    .line 65
    iget-object v0, p0, Lbwq;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lbwq;)V
    .locals 0
    .param p0, "x0"    # Lbwq;

    .prologue
    .line 65
    invoke-direct {p0}, Lbwq;->j()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6
    .param p1, "state"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 428
    iget-object v2, p0, Lbwq;->j:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    if-eqz v2, :cond_0

    iget v2, p0, Lbwq;->u:I

    if-ne v2, p1, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    iput p1, p0, Lbwq;->u:I

    .line 432
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 433
    .local v0, "context":Landroid/content/Context;
    sget v2, Lbtp$g;->dt_lv_live_status_living:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "status":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 452
    :goto_1
    iget-object v2, p0, Lbwq;->l:Lbwy;

    .line 1113
    iget-object v2, v2, Lbwy;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v2, p0, Lbwq;->m:Lbwv;

    .line 1324
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    .line 1325
    packed-switch p1, :pswitch_data_1

    .line 1339
    :cond_2
    :goto_2
    :pswitch_0
    iget-object v2, v2, Lbwv;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 436
    :pswitch_1
    sget v2, Lbtp$g;->dt_lv_live_status_living:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 437
    goto :goto_1

    .line 439
    :pswitch_2
    sget v2, Lbtp$g;->dt_lv_live_status_living:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 440
    goto :goto_1

    .line 442
    :pswitch_3
    invoke-direct {p0}, Lbwq;->h()V

    .line 443
    iget-object v2, p0, Lbwq;->d:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 444
    sget v2, Lbtp$g;->dt_lv_live_pause:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 445
    goto :goto_1

    .line 447
    :pswitch_4
    sget v2, Lbtp$g;->dt_lv_live_ended:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1327
    :pswitch_5
    iget-object v4, v2, Lbwv;->l:Lcom/taobao/taolive/sdk/component/ChatFrame;

    if-eqz v4, :cond_2

    .line 1328
    iget-object v4, v2, Lbwv;->l:Lcom/taobao/taolive/sdk/component/ChatFrame;

    sget v5, Lbtp$g;->dt_lv_anchor_back:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/taobao/taolive/sdk/component/ChatFrame;->addMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 1332
    :pswitch_6
    iget-object v4, v2, Lbwv;->l:Lcom/taobao/taolive/sdk/component/ChatFrame;

    if-eqz v4, :cond_2

    .line 1333
    iget-object v4, v2, Lbwv;->l:Lcom/taobao/taolive/sdk/component/ChatFrame;

    sget v5, Lbtp$g;->dt_lv_anchor_left:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/taobao/taolive/sdk/component/ChatFrame;->addMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 434
    .line 1325
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_6
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Landroid/view/ViewParent;)V
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewParent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 501
    iput-object p1, p0, Lbwq;->b:Landroid/view/ViewParent;

    .line 502
    iget-object v2, p0, Lbwq;->m:Lbwv;

    .line 2426
    invoke-virtual {v2}, Lbwv;->k()V

    .line 2901
    iget-object v0, v2, Lbwv;->p:Landroid/app/Activity;

    invoke-static {v0}, Lbyf;->c(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2902
    invoke-static {}, Lcoj;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 2903
    :goto_0
    if-eqz v0, :cond_5

    iget-object v0, v2, Lbwv;->p:Landroid/app/Activity;

    invoke-static {v0}, Lbyf;->a(Landroid/content/Context;)I

    move-result v0

    .line 2904
    :goto_1
    iget-object v3, v2, Lbwv;->b:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 2905
    iget-object v3, v2, Lbwv;->p:Landroid/app/Activity;

    invoke-static {v3}, Lbyf;->c(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2906
    iget-object v3, v2, Lbwv;->b:Landroid/view/View;

    invoke-virtual {v3, v0, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 2911
    :cond_0
    :goto_2
    iget-object v3, v2, Lbwv;->c:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 2912
    iget-object v3, v2, Lbwv;->p:Landroid/app/Activity;

    invoke-static {v3}, Lbyf;->c(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2913
    iget-object v3, v2, Lbwv;->c:Landroid/view/View;

    invoke-virtual {v3, v0, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 2921
    :cond_1
    :goto_3
    iget-object v0, v2, Lbwv;->j:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;

    if-eqz v0, :cond_2

    .line 2922
    iget-object v0, v2, Lbwv;->p:Landroid/app/Activity;

    invoke-static {v0}, Lbyf;->d(Landroid/app/Activity;)I

    move-result v0

    .line 2923
    iget-object v3, v2, Lbwv;->p:Landroid/app/Activity;

    invoke-static {v3}, Lbyf;->c(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2924
    iget-object v3, v2, Lbwv;->j:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;

    invoke-virtual {v3, v1, v1, v0, v1}, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->setPadding(IIII)V

    .line 2429
    :cond_2
    :goto_4
    iget-object v0, v2, Lbwv;->p:Landroid/app/Activity;

    iget-object v1, v2, Lbwv;->i:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 2431
    iget-object v0, v2, Lbwv;->r:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2433
    iget-object v0, v2, Lbwv;->r:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 503
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 2902
    goto :goto_0

    :cond_5
    move v0, v1

    .line 2903
    goto :goto_1

    .line 2908
    :cond_6
    iget-object v3, v2, Lbwv;->b:Landroid/view/View;

    invoke-virtual {v3, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 2915
    :cond_7
    iget-object v3, v2, Lbwv;->c:Landroid/view/View;

    invoke-virtual {v3, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 2926
    :cond_8
    iget-object v3, v2, Lbwv;->j:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;

    invoke-virtual {v3, v1, v1, v1, v0}, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->setPadding(IIII)V

    goto :goto_4
.end method

.method public final a(Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;)V
    .locals 6
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 675
    if-nez p1, :cond_0

    .line 689
    :goto_0
    return-void

    .line 678
    :cond_0
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;->liveInfo:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    if-eqz v2, :cond_1

    .line 679
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;->liveInfo:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget v2, v2, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->status:I

    invoke-virtual {p0, v2}, Lbwq;->a(I)V

    .line 681
    :cond_1
    const/4 v1, 0x0

    .line 682
    .local v1, "uv":I
    const/4 v0, 0x0

    .line 683
    .local v0, "praiseCount":I
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;->statistics:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    if-eqz v2, :cond_2

    .line 684
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;->statistics:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    iget v1, v2, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->uv:I

    .line 685
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;->statistics:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    iget v0, v2, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->praiseCount:I

    .line 687
    :cond_2
    iget-object v2, p0, Lbwq;->m:Lbwv;

    invoke-virtual {v2, v1}, Lbwv;->a(I)V

    .line 688
    iget-object v2, p0, Lbwq;->m:Lbwv;

    int-to-long v4, v0

    .line 6257
    iget-object v3, v2, Lbwv;->m:Lcom/taobao/taolive/sdk/ui/component/FavorFrame;

    invoke-virtual {v3, v4, v5}, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->initBizCount(J)V

    .line 6258
    iget-object v2, v2, Lbwv;->n:Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;

    invoke-virtual {v2, v4, v5}, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->updateFavorCount(J)V

    goto :goto_0
.end method

.method public final a(Lcom/taobao/taolive/sdk/model/common/UrlInfo;)V
    .locals 3
    .param p1, "urlInfo"    # Lcom/taobao/taolive/sdk/model/common/UrlInfo;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 517
    if-nez p1, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v1

    .line 4059
    iget-object v0, v1, Lbwr;->a:Lcom/taobao/taolive/sdk/model/common/UrlInfo;

    .line 521
    .local v0, "currentUrlInfo":Lcom/taobao/taolive/sdk/model/common/UrlInfo;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/taobao/taolive/sdk/model/common/UrlInfo;->url:Ljava/lang/String;

    iget-object v2, p1, Lcom/taobao/taolive/sdk/model/common/UrlInfo;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 524
    :cond_2
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v1

    .line 4063
    iput-object p1, v1, Lbwr;->a:Lcom/taobao/taolive/sdk/model/common/UrlInfo;

    .line 525
    invoke-virtual {p0}, Lbwq;->f()V

    .line 526
    invoke-direct {p0}, Lbwq;->k()V

    .line 528
    iget-object v1, p1, Lcom/taobao/taolive/sdk/model/common/UrlInfo;->clarity:Ljava/lang/String;

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lbwq;->m:Lbwv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbwq;->m:Lbwv;

    invoke-virtual {v0}, Lbwv;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lbwq;->l:Lbwy;

    .line 3167
    invoke-virtual {v0}, Lbwy;->a()V

    .line 508
    return-void
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/taolive/sdk/model/common/UrlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 512
    iget-object v0, p0, Lbwq;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final d()Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lbwq;->b:Landroid/view/ViewParent;

    return-object v0
.end method

.method public final e()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 564
    iget-object v0, p0, Lbwq;->j:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    if-nez v0, :cond_0

    .line 596
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Lbwq;->j:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->isLiveAbord()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbwq;->k:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lbwq;->k:Landroid/app/Activity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 571
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lbwq;->k:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lbtp$g;->dt_lv_for_local_only:I

    .line 572
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lbtp$g;->dt_common_i_know:I

    const/4 v2, 0x0

    .line 573
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 574
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 578
    :cond_1
    iget-object v0, p0, Lbwq;->k:Landroid/app/Activity;

    new-instance v1, Lbwq$6;

    invoke-direct {v1, p0}, Lbwq$6;-><init>(Lbwq;)V

    invoke-static {v0, v1}, Lbyi;->a(Landroid/app/Activity;Lcjn$a;)V

    goto :goto_0
.end method

.method public f()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 599
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 602
    :cond_0
    sget v0, Lbtp$g;->dt_lv_live_voip_ongoing:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 603
    const-string/jumbo v0, "live"

    const-string/jumbo v1, "play live failed due to dt-tel is ongoing"

    invoke-static {v0, v8, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :cond_1
    :goto_0
    return-void

    .line 607
    :cond_2
    iget-object v0, p0, Lbwq;->j:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    if-eqz v0, :cond_1

    .line 611
    iput-boolean v7, p0, Lbwq;->f:Z

    .line 613
    iget-object v0, p0, Lbwq;->l:Lbwy;

    .line 4132
    invoke-virtual {v0}, Lbwy;->e()V

    .line 614
    iget-object v1, p0, Lbwq;->m:Lbwv;

    .line 4351
    invoke-virtual {v1}, Lbwv;->m()V

    .line 4361
    iget-object v0, v1, Lbwv;->l:Lcom/taobao/taolive/sdk/component/ChatFrame;

    if-nez v0, :cond_3

    .line 4362
    iget-object v0, v1, Lbwv;->a:Landroid/view/View;

    sget v2, Lbtp$e;->layout_chat:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 4363
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v2

    .line 5043
    iget-object v2, v2, Lbwr;->c:Ljava/lang/String;

    .line 4364
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v3

    invoke-virtual {v3}, Lbwr;->b()Ljava/lang/String;

    move-result-object v3

    .line 4365
    new-instance v4, Lcom/taobao/taolive/sdk/component/ChatFrame;

    iget-object v5, v1, Lbwv;->p:Landroid/app/Activity;

    invoke-direct {v4, v5, v2, v3, v8}, Lcom/taobao/taolive/sdk/component/ChatFrame;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;)V

    iput-object v4, v1, Lbwv;->l:Lcom/taobao/taolive/sdk/component/ChatFrame;

    .line 4366
    iget-object v2, v1, Lbwv;->l:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-virtual {v2, v0}, Lcom/taobao/taolive/sdk/component/ChatFrame;->onCreateView(Landroid/view/ViewStub;)V

    .line 4367
    iget-object v0, v1, Lbwv;->l:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-virtual {v0, v7}, Lcom/taobao/taolive/sdk/component/ChatFrame;->startListenMessage(Z)V

    .line 4353
    :cond_3
    iget-object v0, v1, Lbwv;->o:Lbwt$a;

    invoke-interface {v0}, Lbwt$a;->a()V

    .line 616
    invoke-static {}, Lbyi;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5631
    iget-object v0, p0, Lbwq;->t:Landroid/view/ViewGroup;

    if-nez v0, :cond_4

    .line 5632
    iget-object v0, p0, Lbwq;->a:Landroid/view/View;

    sget v1, Lbtp$e;->stub_video:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 5633
    sget v1, Lbtp$f;->taolive_frame_video:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 5634
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbwq;->t:Landroid/view/ViewGroup;

    .line 5636
    :cond_4
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0}, Lbws;->g()Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    move-result-object v1

    .line 5637
    invoke-virtual {v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 5638
    iget-object v2, p0, Lbwq;->t:Landroid/view/ViewGroup;

    if-eq v0, v2, :cond_1

    .line 5639
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_5

    .line 5640
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5642
    :cond_5
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 5645
    iget-object v2, p0, Lbwq;->t:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public g()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 651
    new-instance v0, Lbwq$7;

    invoke-direct {v0, p0}, Lbwq$7;-><init>(Lbwq;)V

    .line 668
    .local v0, "callback":Lcom/alibaba/wukong/Callback;
    iget-object v1, p0, Lbwq;->k:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 669
    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lbwq;->k:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 671
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;
    :cond_0
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v1

    iget-object v2, p0, Lbwq;->h:Ljava/lang/String;

    iget-object v3, p0, Lbwq;->j:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lbxe;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 672
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 533
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 534
    .local v0, "id":I
    sget v1, Lbtp$e;->tv_play:I

    if-ne v0, v1, :cond_0

    .line 535
    invoke-virtual {p0}, Lbwq;->e()V

    .line 537
    :cond_0
    return-void
.end method
