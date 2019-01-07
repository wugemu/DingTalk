.class public Lcom/taobao/windmill/bundle/WMLActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "WMLActivity.java"

# interfaces
.implements Ljqd;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private destoryed:Z

.field private mActionSheetMenu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mAppCode:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

.field private mAppId:Ljava/lang/String;

.field private mAppInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

.field private mDrawerInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFileLoader:Ljqw;

.field private mLauncher:Ljqh;

.field private mLoadingView:Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;

.field private mMemoryStorage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPageDuration:J

.field private mPendingTransition:Lft;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lft",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPerfLog:Ljpm;

.field private mRuntimeInstance:Ljrz;

.field private mShareInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/windmill/bundle/container/common/ShareInfoModel;",
            ">;"
        }
    .end annotation
.end field

.field private mWMLAppManifest:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

.field private mWMLRouter:Ljqr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/windmill/bundle/WMLActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->destoryed:Z

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/windmill/bundle/WMLActivity;)Ljpm;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/WMLActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mPerfLog:Ljpm;

    return-object v0
.end method

.method static synthetic access$100(Lcom/taobao/windmill/bundle/WMLActivity;)Lcom/taobao/windmill/bundle/container/core/AppInfoModel;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/WMLActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mAppInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    return-object v0
.end method

.method static synthetic access$102(Lcom/taobao/windmill/bundle/WMLActivity;Lcom/taobao/windmill/bundle/container/core/AppInfoModel;)Lcom/taobao/windmill/bundle/container/core/AppInfoModel;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/WMLActivity;
    .param p1, "x1"    # Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mAppInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    return-object p1
.end method

.method static synthetic access$200(Lcom/taobao/windmill/bundle/WMLActivity;)Ljrz;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/WMLActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mRuntimeInstance:Ljrz;

    return-object v0
.end method

.method static synthetic access$202(Lcom/taobao/windmill/bundle/WMLActivity;Ljrz;)Ljrz;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/WMLActivity;
    .param p1, "x1"    # Ljrz;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mRuntimeInstance:Ljrz;

    return-object p1
.end method

.method static synthetic access$300(Lcom/taobao/windmill/bundle/WMLActivity;)Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/WMLActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mLoadingView:Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;

    return-object v0
.end method

.method static synthetic access$402(Lcom/taobao/windmill/bundle/WMLActivity;Ljqw;)Ljqw;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/WMLActivity;
    .param p1, "x1"    # Ljqw;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mFileLoader:Ljqw;

    return-object p1
.end method

.method static synthetic access$502(Lcom/taobao/windmill/bundle/WMLActivity;Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;)Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/WMLActivity;
    .param p1, "x1"    # Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mWMLAppManifest:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    return-object p1
.end method

.method static synthetic access$600(Lcom/taobao/windmill/bundle/WMLActivity;)Ljqr;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/WMLActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mWMLRouter:Ljqr;

    return-object v0
.end method

.method static synthetic access$602(Lcom/taobao/windmill/bundle/WMLActivity;Ljqr;)Ljqr;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/WMLActivity;
    .param p1, "x1"    # Ljqr;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mWMLRouter:Ljqr;

    return-object p1
.end method

.method static synthetic access$700(Lcom/taobao/windmill/bundle/WMLActivity;)Lcom/taobao/windmill/bundle/container/core/AppCodeModel;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/WMLActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mAppCode:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    return-object v0
.end method

.method static synthetic access$800(Lcom/taobao/windmill/bundle/WMLActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/WMLActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/taobao/windmill/bundle/WMLActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/WMLActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/taobao/windmill/bundle/WMLActivity;->addFootPrint(Ljava/lang/String;)V

    return-void
.end method

.method private addFootPrint(Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 297
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v1

    .line 8133
    iget-object v1, v1, Ljpo;->c:Ljpo$a;

    iget-object v0, v1, Ljpo$a;->d:Ljqa;

    .line 298
    .local v0, "appAdapter":Ljqa;
    if-eqz v0, :cond_0

    .line 299
    invoke-interface {v0, p1}, Ljqa;->onAppLaunched(Ljava/lang/String;)V

    .line 301
    :cond_0
    return-void
.end method


# virtual methods
.method public addPerLog(Ljava/lang/String;)Ljpm;
    .locals 1
    .param p1, "logType"    # Ljava/lang/String;

    .prologue
    .line 510
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mPerfLog:Ljpm;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mPerfLog:Ljpm;

    invoke-virtual {v0, p1}, Ljpm;->a(Ljava/lang/String;)V

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mPerfLog:Ljpm;

    return-object v0
.end method

.method public addShareInfo(Ljava/lang/String;Lcom/taobao/windmill/bundle/container/common/ShareInfoModel;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "shareInfo"    # Lcom/taobao/windmill/bundle/container/common/ShareInfoModel;

    .prologue
    .line 559
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mShareInfoMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 560
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mShareInfoMap:Ljava/util/Map;

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mShareInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    return-void
.end method

.method public buildBundleUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "https://snipcode.taobao.com/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 407
    iget-object v1, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mWMLRouter:Ljqr;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mWMLRouter:Ljqr;

    .line 13356
    iget-object v1, v1, Ljqr;->a:Ljqo;

    invoke-virtual {v1}, Ljqo;->b()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 407
    if-eqz v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mWMLRouter:Ljqr;

    .line 14356
    iget-object v1, v1, Ljqr;->a:Ljqo;

    invoke-virtual {v1}, Ljqo;->b()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 409
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v1, v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    if-eqz v1, :cond_0

    .line 410
    check-cast v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .line 14402
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    iget-object v1, v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->c:Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;

    if-eqz v1, :cond_0

    .line 14403
    iget-object v1, v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->c:Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;

    invoke-virtual {v1, p1}, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a(Landroid/view/MotionEvent;)V

    .line 413
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public findShareInfo(Ljava/lang/String;)Lcom/taobao/windmill/bundle/container/common/ShareInfoModel;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 567
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mShareInfoMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 568
    const/4 v0, 0x0

    .line 570
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mShareInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/windmill/bundle/container/common/ShareInfoModel;

    goto :goto_0
.end method

.method public finish()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 605
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    .line 606
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mPendingTransition:Lft;

    if-eqz v0, :cond_0

    .line 607
    sget v1, Ljrg$a;->wml_temp:I

    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mPendingTransition:Lft;

    iget-object v0, v0, Lft;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/taobao/windmill/bundle/WMLActivity;->overridePendingTransition(II)V

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mRuntimeInstance:Ljrz;

    if-eqz v0, :cond_1

    .line 610
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/taobao/windmill/bundle/WMLActivity$2;

    invoke-direct {v1, p0}, Lcom/taobao/windmill/bundle/WMLActivity$2;-><init>(Lcom/taobao/windmill/bundle/WMLActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 619
    :cond_1
    return-void
.end method

.method public getActionSheet()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 554
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mActionSheetMenu:Ljava/util/Map;

    return-object v0
.end method

.method public getAppCode()Lcom/taobao/windmill/bundle/container/core/AppCodeModel;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mAppCode:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mAppInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    return-object v0
.end method

.method public getAppLoadingView()Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mLoadingView:Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;

    return-object v0
.end method

.method public getCurrentPageFrame()Ljqe;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 500
    iget-object v2, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mWMLRouter:Ljqr;

    .line 15356
    iget-object v2, v2, Ljqr;->a:Ljqo;

    invoke-virtual {v2}, Ljqo;->b()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 501
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v2, v0, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 502
    check-cast v1, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;

    .line 503
    .local v1, "wmlBaseFragment":Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;
    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->a()Ljqe;

    move-result-object v2

    .line 505
    .end local v1    # "wmlBaseFragment":Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDrawerInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 544
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mDrawerInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getFileLoader()Ljqw;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mFileLoader:Ljqw;

    return-object v0
.end method

.method public getManifest()Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mWMLAppManifest:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    return-object v0
.end method

.method public getMemoryStorage(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 531
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mMemoryStorage:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 532
    const/4 v0, 0x0

    .line 534
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mMemoryStorage:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getRouter()Ljqr;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mWMLRouter:Ljqr;

    return-object v0
.end method

.method public getRuntimeInstance()Ljrz;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mRuntimeInstance:Ljrz;

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 623
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 624
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->isDestroyed()Z

    move-result v0

    .line 626
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->destoryed:Z

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 392
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 394
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mWMLRouter:Ljqr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mWMLRouter:Ljqr;

    .line 11356
    iget-object v0, v0, Ljqr;->a:Ljqo;

    invoke-virtual {v0}, Ljqo;->b()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mWMLRouter:Ljqr;

    .line 12356
    iget-object v0, v0, Ljqr;->a:Ljqo;

    invoke-virtual {v0}, Ljqo;->b()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 395
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mRuntimeInstance:Ljrz;

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mRuntimeInstance:Ljrz;

    invoke-interface {v0}, Ljrz;->d()Ljrz$a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljrz$a;->a(IILandroid/content/Intent;)V

    .line 403
    :cond_1
    return-void
.end method

.method public onAppOpen(Landroid/content/Intent;)Lcom/taobao/windmill/bundle/container/core/AppCodeModel;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 588
    invoke-static {p1}, Ljqg;->a(Landroid/content/Intent;)Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    move-result-object v0

    .line 589
    .local v0, "appCodeModel":Lcom/taobao/windmill/bundle/container/core/AppCodeModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getFrameTempType()Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    move-result-object v1

    sget-object v2, Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;->PriArea:Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    if-ne v1, v2, :cond_0

    .line 590
    new-instance v1, Lft;

    sget v2, Ljrg$a;->wml_pri_enter_up_in:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Ljrg$a;->wml_pri_exit_down_out:I

    .line 591
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lft;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mPendingTransition:Lft;

    .line 593
    iget-object v1, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mPendingTransition:Lft;

    iget-object v1, v1, Lft;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Ljrg$a;->wml_temp:I

    invoke-virtual {p0, v1, v2}, Lcom/taobao/windmill/bundle/WMLActivity;->overridePendingTransition(II)V

    .line 595
    :cond_0
    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 305
    iget-object v1, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mWMLRouter:Ljqr;

    if-eqz v1, :cond_2

    .line 306
    iget-object v1, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mWMLRouter:Ljqr;

    .line 8356
    iget-object v1, v1, Ljqr;->a:Ljqo;

    invoke-virtual {v1}, Ljqo;->b()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 306
    instance-of v1, v1, Ljqs;

    if-eqz v1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mWMLRouter:Ljqr;

    .line 9356
    iget-object v1, v1, Ljqr;->a:Ljqo;

    invoke-virtual {v1}, Ljqo;->b()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 307
    check-cast v1, Ljqs;

    check-cast v1, Ljqs;

    .line 308
    invoke-interface {v1}, Ljqs;->M_()Z

    move-result v0

    .line 309
    .local v0, "canBack":Z
    if-nez v0, :cond_0

    .line 310
    iget-object v1, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mWMLRouter:Ljqr;

    invoke-virtual {v1}, Ljqr;->a()Z

    .line 318
    .end local v0    # "canBack":Z
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v1, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mWMLRouter:Ljqr;

    invoke-virtual {v1}, Ljqr;->a()Z

    goto :goto_0

    .line 316
    :cond_2
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onBackToExternalPage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "toExternalUrl"    # Ljava/lang/String;

    .prologue
    .line 600
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x3

    const/4 v13, 0x2

    const/4 v10, 0x1

    const/4 v12, -0x1

    const/4 v11, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-static {p0}, Ljre;->a(Landroid/app/Activity;)V

    .line 1091
    invoke-static {}, Ljre;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 1092
    invoke-static {}, Ljre;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1094
    :cond_0
    invoke-static {}, Ljre;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v1, Ljpm;

    invoke-direct {v1}, Ljpm;-><init>()V

    iput-object v1, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mPerfLog:Ljpm;

    .line 102
    sget v1, Ljrg$c;->wml_activity_main:I

    invoke-virtual {p0, v1}, Lcom/taobao/windmill/bundle/WMLActivity;->setContentView(I)V

    .line 104
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/WMLActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 105
    .local v6, "intent":Landroid/content/Intent;
    if-eqz v6, :cond_7

    invoke-static {}, Ljpo;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 107
    invoke-virtual {p0, v6}, Lcom/taobao/windmill/bundle/WMLActivity;->onAppOpen(Landroid/content/Intent;)Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mAppCode:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    .line 109
    iget-object v1, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mAppCode:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    if-nez v1, :cond_2

    .line 111
    sget-object v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->BAD_APP_CODE:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    invoke-virtual {p0, v0}, Lcom/taobao/windmill/bundle/WMLActivity;->showErrorFragment(Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;)V

    .line 113
    const-string/jumbo v0, "appCode"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2057
    sget-object v1, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->INITIALIZER:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    const-string/jumbo v2, "FAIL_BAD_APP_CODE"

    const-string/jumbo v3, ""

    new-array v4, v13, [Ljava/lang/String;

    const-string/jumbo v5, "appCode"

    aput-object v5, v4, v11

    aput-object v0, v4, v10

    .line 2289
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2290
    const-string/jumbo v5, "stage"

    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2291
    const-string/jumbo v1, "code"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2292
    const-string/jumbo v1, "msg"

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2293
    const-string/jumbo v1, "data"

    invoke-static {v4}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils;->a([Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2294
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v1

    .line 3129
    iget-object v1, v1, Ljpo;->c:Ljpo$a;

    iget-object v1, v1, Ljpo$a;->c:Ljpt;

    .line 2295
    if-eqz v1, :cond_1

    .line 2303
    const-string/jumbo v2, "windmill"

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljpt;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_1
    :goto_0
    return-void

    .line 118
    :cond_2
    iget-object v2, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mAppCode:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    .line 4042
    new-instance v8, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v8}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 4043
    const-string/jumbo v1, "version"

    invoke-virtual {v2}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4044
    const-string/jumbo v3, "runMode"

    iget-object v1, v2, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->runMode:Lcom/taobao/windmill/bundle/container/core/RunMode;

    if-nez v1, :cond_4

    const-string/jumbo v1, ""

    :goto_1
    invoke-virtual {v8, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4045
    const-string/jumbo v1, "orgUrl"

    iget-object v3, v2, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->orgUrl:Ljava/lang/String;

    invoke-virtual {v8, v1, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4046
    const-string/jumbo v1, "startPath"

    iget-object v3, v2, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->startPath:Ljava/lang/String;

    invoke-virtual {v8, v1, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4047
    const-string/jumbo v1, "query"

    iget-object v3, v2, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->query:Ljava/lang/String;

    invoke-virtual {v8, v1, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4048
    const-string/jumbo v1, "zCacheKey"

    invoke-virtual {v2}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getZCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4049
    const-string/jumbo v3, "status"

    invoke-virtual {v2}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getStatus()Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;

    move-result-object v1

    if-nez v1, :cond_5

    const-string/jumbo v1, ""

    :goto_2
    invoke-virtual {v8, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4050
    invoke-virtual {v2}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->INITIALIZER:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    const-string/jumbo v3, "SUCESSS"

    const-string/jumbo v4, ""

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v9, "platform"

    aput-object v9, v5, v11

    const-string/jumbo v9, "Android"

    aput-object v9, v5, v10

    const-string/jumbo v9, "model"

    aput-object v9, v5, v13

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 4051
    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v0

    const/4 v9, 0x4

    const-string/jumbo v10, "appVersion"

    aput-object v10, v5, v9

    const/4 v9, 0x5

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v10, v5, v9

    const/4 v9, 0x6

    const-string/jumbo v10, "appCode"

    aput-object v10, v5, v9

    const/4 v9, 0x7

    .line 4053
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v9

    .line 4050
    invoke-static/range {v0 .. v5}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils;->a(ILjava/lang/String;Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mAppCode:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mAppId:Ljava/lang/String;

    .line 122
    sget v0, Ljrg$c;->wml_activity_main:I

    invoke-virtual {p0, v0}, Lcom/taobao/windmill/bundle/WMLActivity;->setContentView(I)V

    .line 124
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mAppCode:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getFrameTempType()Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    move-result-object v0

    .line 5014
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v1

    .line 5149
    iget-object v1, v1, Ljpo;->c:Ljpo$a;

    iget-object v1, v1, Ljpo$a;->h:Ljpz;

    .line 5014
    if-eqz v1, :cond_6

    .line 5015
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v1

    .line 6149
    iget-object v1, v1, Ljpo;->c:Ljpo$a;

    iget-object v1, v1, Ljpo$a;->h:Ljpz;

    .line 5015
    invoke-interface {v1, p0, v0}, Ljpz;->getAppLoadingPrompt(Landroid/app/Activity;Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;)Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;

    move-result-object v0

    .line 5016
    if-eqz v0, :cond_6

    .line 124
    :goto_3
    iput-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mLoadingView:Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;

    .line 126
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mLoadingView:Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;

    invoke-interface {v0}, Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;->getView()Landroid/view/View;

    move-result-object v7

    .line 128
    .local v7, "loading":Landroid/view/View;
    sget v0, Ljrg$b;->contentView:I

    invoke-virtual {p0, v0}, Lcom/taobao/windmill/bundle/WMLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mLoadingView:Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;

    iget-object v1, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mAppCode:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-interface {v0, v1}, Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;->show(Lcom/taobao/windmill/bundle/container/core/AppCodeModel;)V

    .line 134
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mPerfLog:Ljpm;

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mPerfLog:Ljpm;

    const-string/jumbo v1, "runtimeReady"

    invoke-virtual {v0, v1}, Ljpm;->a(Ljava/lang/String;)V

    .line 138
    :cond_3
    new-instance v0, Ljqh;

    iget-object v1, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mRuntimeInstance:Ljrz;

    iget-object v2, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mPerfLog:Ljpm;

    invoke-direct {v0, p0, v1, v2}, Ljqh;-><init>(Landroid/content/Context;Ljrz;Ljpm;)V

    iput-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mLauncher:Ljqh;

    .line 140
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mLauncher:Ljqh;

    iget-object v1, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mAppCode:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    new-instance v2, Lcom/taobao/windmill/bundle/WMLActivity$1;

    invoke-direct {v2, p0}, Lcom/taobao/windmill/bundle/WMLActivity$1;-><init>(Lcom/taobao/windmill/bundle/WMLActivity;)V

    .line 7081
    new-instance v3, Ljqh$1;

    invoke-direct {v3, v0, v1, v2}, Ljqh$1;-><init>(Ljqh;Lcom/taobao/windmill/bundle/container/core/AppCodeModel;Ljqh$b;)V

    iput-object v3, v0, Ljqh;->a:Landroid/os/AsyncTask;

    .line 7751
    iget-object v0, v0, Ljqh;->a:Landroid/os/AsyncTask;

    new-array v1, v11, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 4044
    .end local v7    # "loading":Landroid/view/View;
    :cond_4
    iget-object v1, v2, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->runMode:Lcom/taobao/windmill/bundle/container/core/RunMode;

    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/container/core/RunMode;->name()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 4049
    :cond_5
    invoke-virtual {v2}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getStatus()Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;->name()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 5020
    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    .line 283
    :cond_7
    invoke-static {}, Ljqy;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 284
    const-string/jumbo v0, "\u542f\u52a8\u5f02\u5e38\uff0c\u672a\u521d\u59cb\u5316\u6216\u53c2\u6570\u4e0d\u6b63\u786e"

    invoke-static {p0, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 286
    :cond_8
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/WMLActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 322
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 324
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mLauncher:Ljqh;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mLauncher:Ljqh;

    .line 9755
    iget-object v1, v0, Ljqh;->a:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    .line 9756
    iget-object v0, v0, Ljqh;->a:Landroid/os/AsyncTask;

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mRuntimeInstance:Ljrz;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mRuntimeInstance:Ljrz;

    invoke-interface {v0}, Ljrz;->d()Ljrz$a;

    move-result-object v0

    invoke-interface {v0}, Ljrz$a;->e()V

    .line 332
    :cond_1
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v0

    .line 10161
    iget-object v0, v0, Ljpo;->c:Ljpo$a;

    iget-object v0, v0, Ljpo$a;->k:Ljpq;

    .line 332
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mAppCode:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mAppInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    if-eqz v0, :cond_2

    .line 333
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v0

    .line 11161
    iget-object v0, v0, Ljpo;->c:Ljpo$a;

    iget-object v0, v0, Ljpo$a;->k:Ljpq;

    .line 333
    iget-object v1, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mAppCode:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mAppInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->zCacheKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljpq;->closeApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mRuntimeInstance:Ljrz;

    if-eqz v0, :cond_3

    .line 337
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mRuntimeInstance:Ljrz;

    invoke-interface {v0}, Ljrz;->i()V

    .line 340
    :cond_3
    iput-boolean v3, p0, Lcom/taobao/windmill/bundle/WMLActivity;->destoryed:Z

    .line 341
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 363
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 364
    return-void
.end method

.method protected onPause()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 378
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 380
    invoke-static {p0}, Ljre;->b(Landroid/app/Activity;)V

    .line 381
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mRuntimeInstance:Ljrz;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mRuntimeInstance:Ljrz;

    invoke-interface {v0}, Ljrz;->d()Ljrz$a;

    move-result-object v0

    invoke-interface {v0}, Ljrz$a;->b()V

    .line 384
    :cond_0
    iget-wide v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mPageDuration:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_2

    .line 385
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mPageDuration:J

    sub-long/2addr v0, v2

    .line 11205
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 11206
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 11207
    const-string/jumbo v4, "wml-id"

    invoke-interface {p0}, Ljqd;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11208
    invoke-interface {p0}, Ljqd;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 11209
    invoke-interface {p0}, Ljqd;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v4

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    if-eqz v4, :cond_1

    .line 11210
    const-string/jumbo v4, "wml-version"

    invoke-interface {p0}, Ljqd;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v5

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->version:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11211
    const-string/jumbo v4, "wml-template-id"

    invoke-interface {p0}, Ljqd;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v5

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->templateAppId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11213
    :cond_1
    const-string/jumbo v4, "time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11214
    const-string/jumbo v0, "windmill"

    const-string/jumbo v1, "app_duration"

    invoke-static {v0, v1, v2, v3}, Ljre$b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;)V

    .line 387
    :cond_2
    iput-wide v6, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mPageDuration:J

    .line 388
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 419
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 426
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mRuntimeInstance:Ljrz;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mRuntimeInstance:Ljrz;

    invoke-interface {v0}, Ljrz;->d()Ljrz$a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljrz$a;->a(I[Ljava/lang/String;[I)V

    .line 430
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 368
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 370
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mPageDuration:J

    .line 371
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mRuntimeInstance:Ljrz;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mRuntimeInstance:Ljrz;

    invoke-interface {v0}, Ljrz;->d()Ljrz$a;

    move-result-object v0

    invoke-interface {v0}, Ljrz$a;->c()V

    .line 374
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 293
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 345
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 347
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mRuntimeInstance:Ljrz;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mRuntimeInstance:Ljrz;

    invoke-interface {v0}, Ljrz;->d()Ljrz$a;

    move-result-object v0

    invoke-interface {v0}, Ljrz$a;->a()V

    .line 350
    :cond_0
    return-void
.end method

.method public onStartActivityByUrl(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 579
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v1

    .line 16137
    iget-object v1, v1, Ljpo;->c:Ljpo$a;

    iget-object v0, v1, Ljpo$a;->e:Ljpw;

    .line 580
    .local v0, "adapter":Ljpw;
    if-eqz v0, :cond_0

    .line 581
    invoke-interface {v0, p0, p1}, Ljpw;->openURL(Landroid/content/Context;Ljava/lang/String;)V

    .line 582
    const/4 v1, 0x1

    .line 584
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 354
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 356
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mRuntimeInstance:Ljrz;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mRuntimeInstance:Ljrz;

    invoke-interface {v0}, Ljrz;->d()Ljrz$a;

    move-result-object v0

    invoke-interface {v0}, Ljrz$a;->d()V

    .line 359
    :cond_0
    return-void
.end method

.method public putMemoryStorage(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 523
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mMemoryStorage:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 524
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mMemoryStorage:Ljava/util/Map;

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mMemoryStorage:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    return-void
.end method

.method public setActionSheet(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 549
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mActionSheetMenu:Ljava/util/Map;

    .line 550
    return-void
.end method

.method public setDrawerInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 539
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/taobao/windmill/bundle/WMLActivity;->mDrawerInfo:Ljava/util/Map;

    .line 540
    return-void
.end method

.method public showErrorFragment(Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;)V
    .locals 4
    .param p1, "errorType"    # Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/WMLActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ljrg$d;->wml_default_error_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u4e00\u5b9a\u662f\u54ea\u91cc\u51fa\u4e86\u95ee\u9898\uff0c\u518d\u8bd5\u8bd5"

    iget-object v2, p1, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorMsg:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/taobao/windmill/bundle/WMLActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public showErrorFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "errorTitle"    # Ljava/lang/String;
    .param p2, "errorDesc"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 439
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 440
    .local v0, "args":Landroid/os/Bundle;
    sget-object v5, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    sget-object v5, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->d:Ljava/lang/String;

    invoke-virtual {v0, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    sget-object v5, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    sget-object v5, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v5, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    sget-object v5, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->g:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 445
    const-class v5, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 447
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v5, v2, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;

    if-eqz v5, :cond_0

    move-object v4, v2

    .line 448
    check-cast v4, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;

    .line 449
    .local v4, "ipf":Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;
    invoke-virtual {v4, p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->a(Landroid/app/Activity;)V

    .line 451
    .end local v4    # "ipf":Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/WMLActivity;->getSupportFragmentManager()Lcn;

    move-result-object v5

    invoke-virtual {v5}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 452
    .local v3, "ft":Landroid/support/v4/app/FragmentTransaction;
    sget v5, Ljrg$a;->wml_fade_in:I

    sget v6, Ljrg$a;->wml_fade_out:I

    sget v7, Ljrg$a;->wml_push_right_in:I

    sget v8, Ljrg$a;->wml_push_right_out:I

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/support/v4/app/FragmentTransaction;->a(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 454
    sget v5, Ljrg$b;->tab_page_container:I

    invoke-virtual {v3, v5, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 456
    :try_start_0
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->c()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v1

    .line 458
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/taobao/windmill/bundle/WMLActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "commitAllowingStateLoss error"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
