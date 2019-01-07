.class public Lcom/alipay/mobile/nebulacore/ui/H5Activity;
.super Lcom/alipay/mobile/nebula/activity/H5BaseActivity;
.source "H5Activity.java"

# interfaces
.implements Lipi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/ui/H5Activity$H5Activity5;,
        Lcom/alipay/mobile/nebulacore/ui/H5Activity$H5Activity4;,
        Lcom/alipay/mobile/nebulacore/ui/H5Activity$H5Activity3;,
        Lcom/alipay/mobile/nebulacore/ui/H5Activity$H5Activity2;,
        Lcom/alipay/mobile/nebulacore/ui/H5Activity$H5Activity1;
    }
.end annotation


# static fields
.field public static final FILE_CHOOSER_REQUEST_CODE:I = 0x1

.field private static final savedInstanceStateKey:Ljava/lang/String; = "savedInstanceStateKey"


# instance fields
.field public TAG:Ljava/lang/String;

.field private appPause:Ljava/lang/String;

.field private fragmentManager:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

.field private fullScreenLoading:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

.field private h5LoadingViewProvider:Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;

.field private h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

.field private hasSendResumeFromOnNewIntent:Z

.field private hasShowTab:Z

.field private isBetweenResumePause:Z

.field private isOnSavedInstanceStateInTinyProcess:Z

.field private isResumeFirst:Z

.field private loadingView:Landroid/view/View;

.field private needAnimInTiny:Z

.field private openPreRenderByPlugin:Z

.field private pageParamListener:Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private savedInstanceParam:Landroid/os/Bundle;

.field private sessionTabContainer:Landroid/widget/RelativeLayout;

.field private showLoading:Z

.field private startParams:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;-><init>()V

    .line 70
    const-string/jumbo v0, "H5Activity"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    .line 76
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->receiver:Landroid/content/BroadcastReceiver;

    .line 78
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startParams:Landroid/os/Bundle;

    .line 80
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->pageParamListener:Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;

    .line 82
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->showLoading:Z

    .line 84
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->loadingView:Landroid/view/View;

    .line 94
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->hasShowTab:Z

    .line 96
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->openPreRenderByPlugin:Z

    .line 98
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isBetweenResumePause:Z

    .line 100
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isResumeFirst:Z

    .line 102
    const-string/jumbo v0, "appPause"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->appPause:Ljava/lang/String;

    .line 104
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->hasSendResumeFromOnNewIntent:Z

    .line 108
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isOnSavedInstanceStateInTinyProcess:Z

    .line 110
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->needAnimInTiny:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/ui/H5Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->onPageParamReady(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->fragmentManager:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startParams:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->initPageContent()V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebulacore/ui/H5Activity;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->showTabBar(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->showDefaultSessionTab()V

    return-void
.end method

.method static synthetic access$600(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->showSessionTabErrorDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->showSessionTabErrorToast()V

    return-void
.end method

.method static synthetic access$901(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .prologue
    .line 68
    invoke-super {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->finish()V

    return-void
.end method

.method private addFullView(Z)V
    .locals 5
    .param p1, "showTransAnimate"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, -0x1

    .line 345
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 348
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 349
    .local v0, "mainLayout":Landroid/widget/RelativeLayout;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " showTransAnimate : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    if-eqz p1, :cond_1

    const-string/jumbo v2, "no"

    const-string/jumbo v3, "h5_open_transparent_bg"

    .line 351
    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 352
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 357
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startParams:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->notNeedInitUc(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 358
    new-instance v2, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->fullScreenLoading:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    .line 359
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->fullScreenLoading:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->show()V

    .line 360
    if-eqz p1, :cond_0

    const-string/jumbo v2, "no"

    const-string/jumbo v3, "h5_open_transparent_bg"

    .line 361
    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->fullScreenLoading:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    new-instance v3, Lcom/alipay/mobile/nebulacore/ui/H5Activity$2;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$2;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 370
    :cond_0
    sget v2, Lcom/alipay/mobile/nebula/R$id;->h5_fragment:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    return-void

    .line 354
    :cond_1
    const-string/jumbo v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private addWhiteBg()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 288
    sget v2, Lcom/alipay/mobile/nebula/R$id;->h5_fragment:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 289
    .local v0, "container":Landroid/view/ViewGroup;
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 290
    .local v1, "whiteBg":Landroid/view/View;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 295
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 296
    return-void
.end method

.method private getFrameworkLoadingViewConfig()Z
    .locals 1

    .prologue
    .line 330
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method private getIntentParam()Landroid/os/Bundle;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1017
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isOnSavedInstanceStateInTinyProcess:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "no"

    const-string/jumbo v1, "h5_isOnSavedInstanceInTinyProcess"

    .line 1018
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1019
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->savedInstanceParam:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getIntentParam  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->savedInstanceParam:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->savedInstanceParam:Landroid/os/Bundle;

    .line 1046
    :goto_0
    return-object v0

    .line 1023
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    .line 1025
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getIntentParam "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method private getTimeout4Degrade()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 528
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->useSysWebWillCrash()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 529
    const/4 v2, -0x1

    .line 544
    :goto_0
    return v2

    .line 532
    :cond_0
    const v2, 0xafc8

    .line 534
    .local v2, "time":I
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v3

    const-class v4, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 535
    .local v1, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v1, :cond_1

    .line 536
    const-string/jumbo v3, "h5WaitUCConfig"

    .line 537
    invoke-interface {v1, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 538
    .local v0, "configObj":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 539
    const-string/jumbo v3, "waitTime"

    const/16 v4, 0x2ee0

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v2

    .line 540
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getTimeout from configservice "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    .end local v0    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getTimeout final "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getTopPage()Liop;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 574
    const/4 v0, 0x0

    .line 575
    .local v0, "h5Page":Liop;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-eqz v1, :cond_0

    .line 576
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getTopPage()Liop;

    move-result-object v0

    .line 580
    :goto_0
    return-object v0

    .line 578
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "h5Session==null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initPageContent()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 644
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "initPageContent"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->fragmentManager:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    if-nez v4, :cond_0

    .line 649
    new-instance v4, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->fragmentManager:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    .line 651
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->hideLoadingView()V

    .line 653
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startParams:Landroid/os/Bundle;

    const-string/jumbo v5, "enableTabBar"

    .line 654
    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 655
    .local v1, "enableTabBar":Ljava/lang/String;
    const-string/jumbo v4, "YES"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 656
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startParams:Landroid/os/Bundle;

    const-string/jumbo v5, "tabBarJson"

    .line 657
    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 658
    .local v3, "tabBarJsonUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 659
    new-instance v4, Lcom/alipay/mobile/nebulacore/ui/H5Activity$7;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$7;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startParams:Landroid/os/Bundle;

    const-string/jumbo v6, "appId"

    .line 675
    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 659
    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser;->getOnlineData(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;Ljava/lang/String;)V

    .line 699
    .end local v3    # "tabBarJsonUrl":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startParams:Landroid/os/Bundle;

    const-string/jumbo v5, "isH5app"

    invoke-static {v4, v5, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    .line 700
    .local v2, "isH5App":Z
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startParams:Landroid/os/Bundle;

    const-string/jumbo v5, "appId"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 701
    .local v0, "appId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isH5ContainerAppId(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 702
    invoke-static {p0, v0}, Lcom/alipay/mobile/nebulacore/Nebula;->checkOffline(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 677
    .end local v0    # "appId":Ljava/lang/String;
    .end local v2    # "isH5App":Z
    .restart local v3    # "tabBarJsonUrl":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    new-instance v5, Lcom/alipay/mobile/nebulacore/ui/H5Activity$8;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$8;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startParams:Landroid/os/Bundle;

    const-string/jumbo v7, "appId"

    .line 693
    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 677
    invoke-static {v4, v5, v6}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser;->getOfflineData(Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;Ljava/lang/String;)V

    goto :goto_1

    .line 696
    .end local v3    # "tabBarJsonUrl":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->fragmentManager:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startParams:Landroid/os/Bundle;

    invoke-virtual {v4, v5, v8, v8}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->addFragment(Landroid/os/Bundle;ZZ)V

    goto :goto_1
.end method

.method private initPageParams()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 425
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startParams:Landroid/os/Bundle;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->pageParamListener:Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;

    if-eqz v3, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    new-instance v3, Lcom/alipay/mobile/nebulacore/ui/H5Activity$3;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$3;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->pageParamListener:Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;

    .line 442
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getIntentParam()Landroid/os/Bundle;

    move-result-object v1

    .line 443
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_2

    .line 444
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->finish()V

    goto :goto_0

    .line 447
    :cond_2
    const-string/jumbo v3, "landscape"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 449
    .local v2, "landscape":Ljava/lang/String;
    const-string/jumbo v3, "landscape"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 450
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getRequestedOrientation()I

    move-result v3

    if-eqz v3, :cond_3

    .line 451
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->setRequestedOrientation(I)V

    .line 458
    :cond_3
    :goto_1
    const-string/jumbo v3, "asyncIndex"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "asyncIndex":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 460
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->pageParamListener:Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;->retrievePageParam(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;)V

    goto :goto_0

    .line 453
    .end local v0    # "asyncIndex":Ljava/lang/String;
    :cond_4
    const-string/jumbo v3, "auto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 454
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getRequestedOrientation()I

    move-result v3

    if-eq v3, v4, :cond_3

    .line 455
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 462
    .restart local v0    # "asyncIndex":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->pageParamListener:Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;

    invoke-interface {v3, v1}, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;->onPageParam(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private initUcReceiver()V
    .locals 3

    .prologue
    .line 611
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 641
    :goto_0
    return-void

    .line 614
    :cond_0
    new-instance v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity$6;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$6;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->receiver:Landroid/content/BroadcastReceiver;

    .line 638
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 639
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "h5_action_uc_init_finish"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 640
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method

.method private onPageParamReady(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 467
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPageParamReady"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startParams:Landroid/os/Bundle;

    .line 469
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startParams:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->notNeedInitUc(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->initPageContent()V

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->initUcReceiver()V

    .line 473
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getTimeout4Degrade()I

    move-result v0

    .line 474
    .local v0, "time4Degrade":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startParams:Landroid/os/Bundle;

    const-string/jumbo v2, "firstInitAndroidWebview"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 477
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "FIRST_INIT_USE_ANDROID_WEBVIEW"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->initPageContent()V

    goto :goto_0

    .line 480
    :cond_2
    new-instance v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$4;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 500
    const-string/jumbo v1, "NORMAL"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/ui/H5Activity$5;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$5;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private showDefaultSessionTab()V
    .locals 1

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    :goto_0
    return-void

    .line 713
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$9;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$9;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private declared-synchronized showLoadingView(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 235
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->showLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 282
    :goto_0
    monitor-exit p0

    return-void

    .line 238
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->showLoading:Z

    .line 240
    const-string/jumbo v4, "NebulaWalletAppName"

    invoke-static {p1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "title":Ljava/lang/String;
    const-string/jumbo v4, "NebulaWalletAppIcon"

    invoke-static {p1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "icon":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "show loading view."

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->h5LoadingViewProvider:Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;

    .line 245
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->h5LoadingViewProvider:Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;

    if-eqz v4, :cond_1

    .line 246
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "got H5LoadingViewProvider: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->h5LoadingViewProvider:Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->h5LoadingViewProvider:Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;

    invoke-interface {v4, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;->getContentView(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->loadingView:Landroid/view/View;

    .line 250
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->loadingView:Landroid/view/View;

    if-nez v4, :cond_2

    .line 251
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "loadingView == null, use nebula LoadingView"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    new-instance v4, Lion;

    invoke-direct {v4}, Lion;-><init>()V

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->h5LoadingViewProvider:Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;

    .line 253
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->h5LoadingViewProvider:Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;

    invoke-interface {v4, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;->getContentView(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->loadingView:Landroid/view/View;

    .line 256
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->loadingView:Landroid/view/View;

    .line 257
    .local v3, "view":Landroid/view/View;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 258
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->h5LoadingViewProvider:Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;

    invoke-interface {v4, v2}, Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;->setTitle(Ljava/lang/String;)V

    .line 260
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 261
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->h5LoadingViewProvider:Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;

    invoke-interface {v4, v0}, Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;->setIcon(Ljava/lang/String;)V

    .line 264
    :cond_4
    if-eqz v3, :cond_5

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->isSupport()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 265
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->isConfigSupport()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 266
    const/4 v4, 0x0

    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 267
    const/high16 v4, 0x33000000

    .line 268
    invoke-static {p0, v4}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->setTransparentColor(Landroid/app/Activity;I)V

    .line 271
    :cond_5
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getFrameworkLoadingViewConfig()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 272
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->addWhiteBg()V

    .line 273
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->showFrameworkLoadingView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 235
    .end local v0    # "icon":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "view":Landroid/view/View;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 276
    .restart local v0    # "icon":Ljava/lang/String;
    .restart local v2    # "title":Ljava/lang/String;
    .restart local v3    # "view":Landroid/view/View;
    :cond_6
    :try_start_2
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->addWhiteBg()V

    .line 277
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 280
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_fragment:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private showSessionTabErrorDialog()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 775
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showSessionTabErrorDialog"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string/jumbo v1, "showSessionTabErrorDialog"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 777
    .local v7, "configStr":Ljava/lang/String;
    const-string/jumbo v1, "YES"

    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 778
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    .line 779
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    .line 780
    .local v0, "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    if-eqz v0, :cond_1

    .line 782
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_sessiontab_notice_failtitle:I

    .line 783
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 784
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_sessiontab_notice_failmsg:I

    .line 785
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 786
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_default_confirm:I

    .line 787
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v6, v5

    .line 781
    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->createDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v8

    .line 788
    .local v8, "dialog":Landroid/app/Dialog;
    new-instance v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity$11;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$11;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->setPositiveListener(Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickPositiveListener;)V

    .line 804
    if-eqz v8, :cond_0

    .line 805
    new-instance v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity$12;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$12;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 816
    :cond_0
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->showDialog()V

    .line 819
    .end local v0    # "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    .end local v8    # "dialog":Landroid/app/Dialog;
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startParams:Landroid/os/Bundle;

    const-string/jumbo v2, "H5_AL_TABBAR_WARN"

    const-string/jumbo v3, "H5-VM"

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5Logger;->reportTabBarLog(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    return-void
.end method

.method private showSessionTabErrorToast()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 764
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showSessionTabErrorToast"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 767
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$string;->h5_sessiontab_toast:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 766
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 768
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startParams:Landroid/os/Bundle;

    const-string/jumbo v1, "H5_AL_TABBAR_ERROR"

    const-string/jumbo v2, "H5-EM"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5Logger;->reportTabBarLog(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    return-void
.end method

.method private showTabBar(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1
    .param p1, "data"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->hasShowTab:Z

    if-nez v0, :cond_0

    .line 735
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->hasShowTab:Z

    .line 736
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$10;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$10;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public canUsePreRender()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 882
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startParams:Landroid/os/Bundle;

    const-string/jumbo v3, "isTinyApp"

    .line 883
    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 884
    .local v0, "isTinyApp":Z
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->openPreRenderByPlugin:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 982
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->canUsePreRender()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 983
    invoke-static {}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->isIntercept()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 985
    :goto_0
    return v0

    .line 983
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 985
    :cond_2
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public finish()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 927
    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->needAnimInTiny:Z

    if-eqz v4, :cond_0

    .line 928
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "finish needAnimInTiny true"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    invoke-super {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->finish()V

    .line 930
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "tiny_fading_in"

    const-string/jumbo v6, "anim"

    .line 931
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 932
    .local v0, "animIn":I
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "tiny_push_down_out"

    const-string/jumbo v6, "anim"

    .line 933
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 934
    .local v1, "animOut":I
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->overridePendingTransition(II)V

    .line 974
    .end local v0    # "animIn":I
    .end local v1    # "animOut":I
    :goto_0
    return-void

    .line 937
    :cond_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startParams:Landroid/os/Bundle;

    const-string/jumbo v5, "closeAllActivityAnimation"

    invoke-static {v4, v5, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 938
    invoke-super {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->finish()V

    goto :goto_0

    .line 941
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startParams:Landroid/os/Bundle;

    const-string/jumbo v5, "nebula_showActivityFinishAnimation"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    .line 942
    const-string/jumbo v4, "h5_showActivityFinishAnimation"

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 943
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v4, "no"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 944
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 945
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 946
    .local v2, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/alipay/mobile/nebulacore/ui/H5Activity$13;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$13;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    const-wide/16 v6, 0x1

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 958
    .end local v2    # "handler":Landroid/os/Handler;
    :cond_2
    invoke-super {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->finish()V

    .line 959
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "finish:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 964
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    invoke-super {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->finish()V

    .line 965
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "finish:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startParams:Landroid/os/Bundle;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isShowTransAnimate(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 967
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->setActivityFadingFinish()V

    goto/16 :goto_0

    .line 968
    :cond_4
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startParams:Landroid/os/Bundle;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->presentWithAnimation(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 969
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setActivityPresentFinish finish"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->setActivityPresentFinish()V

    goto/16 :goto_0

    .line 972
    :cond_5
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startParams:Landroid/os/Bundle;

    invoke-static {p0, v4}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->setActivityFinish(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public getCurrentFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->fragmentManager:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getExtParam()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 998
    const/4 v0, 0x0

    return-object v0
.end method

.method public getH5FragmentManager()Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->fragmentManager:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    return-object v0
.end method

.method public getH5Session()Lipc;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    return-object v0
.end method

.method public getPageSpmId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 993
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionTabContainer()Landroid/view/View;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 862
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->sessionTabContainer:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    .line 863
    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_sessiontab_stub:I

    .line 864
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 865
    .local v0, "tabStub":Landroid/view/ViewStub;
    if-eqz v0, :cond_1

    .line 866
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->sessionTabContainer:Landroid/widget/RelativeLayout;

    .line 871
    .end local v0    # "tabStub":Landroid/view/ViewStub;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->sessionTabContainer:Landroid/widget/RelativeLayout;

    return-object v1

    .line 868
    .restart local v0    # "tabStub":Landroid/view/ViewStub;
    :cond_1
    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_sessiontabcontainer:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->sessionTabContainer:Landroid/widget/RelativeLayout;

    goto :goto_0
.end method

.method public getStartParams()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public hideLoadingView()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 823
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hide loading view"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->h5LoadingViewProvider:Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->loadingView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 825
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->h5LoadingViewProvider:Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;

    invoke-interface {v1, p0}, Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;->stopLoading(Landroid/app/Activity;)V

    .line 826
    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_fragment:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 827
    .local v0, "rootView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 828
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->loadingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 830
    :cond_0
    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->loadingView:Landroid/view/View;

    .line 832
    .end local v0    # "rootView":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->stopLoading()V

    .line 834
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->fullScreenLoading:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    if-eqz v1, :cond_2

    .line 835
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->fullScreenLoading:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->dismiss()V

    .line 836
    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->fullScreenLoading:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    .line 838
    :cond_2
    return-void
.end method

.method public isBetweenResumePause()Z
    .locals 1

    .prologue
    .line 892
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isBetweenResumePause:Z

    return v0
.end method

.method public isTabContainerVisible()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 853
    sget v2, Lcom/alipay/mobile/nebula/R$id;->h5_sessiontab_stub:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 857
    :cond_0
    :goto_0
    return v1

    .line 856
    :cond_1
    sget v2, Lcom/alipay/mobile/nebula/R$id;->h5_sessiontabcontainer:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 857
    .local v0, "container":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isTrackPage()Z
    .locals 1

    .prologue
    .line 1003
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 114
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "requestCode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;->getInstance()Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;->sendResult(IILandroid/content/Intent;)V

    .line 117
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-super/range {p0 .. p1}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->onH5ActivityCreated(Landroid/app/Activity;)V

    .line 126
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onCreate "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    .line 131
    :try_start_0
    const-string/jumbo v2, "android.os.AsyncTask"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    if-eqz p1, :cond_2

    .line 137
    const-string/jumbo v2, "savedInstanceStateKey"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 138
    .local v15, "save":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "yes"

    const-string/jumbo v3, "h5_savedInstanceState"

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " savedInstanceState "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v1

    .line 141
    .local v1, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v1, :cond_1

    .line 142
    const-string/jumbo v2, "h5_savedInstanceState"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "isInTinyProcess="

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isOnSavedInstanceStateInTinyProcess:Z

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "not handler savedInstanceState in isInTinyProcess"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .end local v1    # "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .end local v15    # "save":Ljava/lang/String;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getIntentParam()Landroid/os/Bundle;

    move-result-object v10

    .line 158
    .local v10, "bundle":Landroid/os/Bundle;
    if-nez v10, :cond_4

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->finish()V

    .line 228
    .end local v10    # "bundle":Landroid/os/Bundle;
    :goto_1
    return-void

    .line 132
    :catch_0
    move-exception v13

    .line 133
    .local v13, "ignored":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Exception"

    invoke-static {v2, v3, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 150
    .end local v13    # "ignored":Ljava/lang/Throwable;
    .restart local v1    # "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .restart local v15    # "save":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->finish()V

    goto :goto_1

    .line 162
    .end local v1    # "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .end local v15    # "save":Ljava/lang/String;
    .restart local v10    # "bundle":Landroid/os/Bundle;
    :cond_4
    const/4 v12, 0x0

    .line 164
    .local v12, "fullScreen":Z
    const-string/jumbo v2, "snapshot"

    invoke-static {v10, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 166
    .local v16, "snapshot":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v2, "fullscreen"

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v12

    .line 170
    :goto_2
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "no"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "snapshot "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 176
    :cond_5
    const/4 v2, 0x1

    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->requestWindowFeature(I)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 182
    :goto_3
    if-eqz v12, :cond_6

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    const/16 v4, 0x400

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setFlags(II)V

    .line 187
    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->setContext(Landroid/content/Context;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "h5_activity "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    sget v2, Lcom/alipay/mobile/nebula/R$layout;->h5_activity:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->setContentView(I)V

    .line 193
    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyMiniService(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "needAnimInTiny"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "needAnimInTiny"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "create needAnimInTiny true"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->needAnimInTiny:Z

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "tiny_push_up_in"

    const-string/jumbo v4, "anim"

    .line 197
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 198
    .local v7, "animIn":I
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "tiny_fading_out"

    const-string/jumbo v4, "anim"

    .line 199
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 200
    .local v8, "animOut":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->overridePendingTransition(II)V

    .line 203
    .end local v7    # "animIn":I
    .end local v8    # "animOut":I
    :cond_7
    const-string/jumbo v2, "showLoadingView"

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v14

    .line 204
    .local v14, "isTransparent":Z
    if-nez v14, :cond_8

    if-nez v12, :cond_8

    .line 206
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->showLoadingView(Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 213
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startParams:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->notNeedInitUc(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 214
    if-nez v14, :cond_9

    if-eqz v12, :cond_a

    .line 215
    :cond_9
    invoke-static {v10}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isShowTransAnimate(Landroid/os/Bundle;)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->addFullView(Z)V

    .line 218
    :cond_a
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lipc;

    move-result-object v2

    instance-of v2, v2, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-eqz v2, :cond_b

    .line 219
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lipc;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 221
    :cond_b
    const-string/jumbo v2, "appId"

    invoke-static {v10, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 222
    .local v9, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v9, v0}, Lcom/alipay/mobile/nebulacore/Nebula;->initInfo(Ljava/lang/String;Landroid/app/Activity;)V

    .line 224
    :try_start_4
    move-object/from16 v0, p0

    invoke-static {v0, v9, v10, v14}, Lcom/alipay/mobile/nebulacore/Nebula;->setWindowSoftInputMode(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 225
    :catch_1
    move-exception v11

    .line 226
    .local v11, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    invoke-static {v2, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 167
    .end local v9    # "appId":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v14    # "isTransparent":Z
    :catch_2
    move-exception v11

    .line 168
    .restart local v11    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    invoke-static {v2, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 177
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v17

    .line 178
    .local v17, "throwable":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 207
    .end local v17    # "throwable":Ljava/lang/Throwable;
    .restart local v14    # "isTransparent":Z
    :catch_4
    move-exception v17

    .line 208
    .restart local v17    # "throwable":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 376
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->canUsePreRender()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    invoke-static {}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    move-result-object v6

    .line 378
    .local v6, "h5PreRenderPool":Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->release()V

    .line 380
    .end local v6    # "h5PreRenderPool":Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onDestroy()V

    .line 381
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 383
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 384
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->receiver:Landroid/content/BroadcastReceiver;

    .line 386
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->pageParamListener:Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;

    .line 391
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onDestroy "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :cond_2
    :goto_0
    return-void

    .line 392
    :catch_0
    move-exception v7

    .line 393
    .local v7, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "destroy exception."

    invoke-static {v1, v2, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 395
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 396
    .local v0, "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v0, :cond_2

    .line 397
    const-string/jumbo v1, "H5_DESTROY_EXCEPTION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->secAppId:Ljava/lang/String;

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "intent"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 898
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    if-eqz v1, :cond_0

    .line 899
    check-cast v0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 901
    :goto_0
    return v1

    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 549
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 552
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onNewIntent"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getTopPage()Liop;

    move-result-object v1

    .line 554
    .local v1, "h5Page":Liop;
    if-eqz v1, :cond_0

    .line 556
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->hasSendResumeFromOnNewIntent:Z

    .line 557
    if-nez p1, :cond_1

    move-object v0, v3

    .line 558
    .local v0, "bundle":Landroid/os/Bundle;
    :goto_0
    if-eqz v0, :cond_2

    const-string/jumbo v4, "hasSendAppResume"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 559
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "has send app resume, return"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "h5Page":Liop;
    :cond_0
    :goto_1
    return-void

    .line 557
    .restart local v1    # "h5Page":Liop;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 562
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    invoke-interface {v1}, Liop;->getBridge()Linx;

    move-result-object v4

    if-nez p1, :cond_3

    :goto_2
    invoke-static {v4, v3}, Lcom/alipay/mobile/nebulacore/Nebula;->sendAppResume(Linx;Landroid/os/Bundle;)V

    .line 563
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "appResume form onNewIntent"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 565
    const-string/jumbo v3, "keepAlivePagePerformance"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 568
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "h5Page":Liop;
    :catch_0
    move-exception v2

    .line 569
    .local v2, "throwable":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 562
    .end local v2    # "throwable":Ljava/lang/Throwable;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "h5Page":Liop;
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_2
.end method

.method public onPause()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 843
    :try_start_0
    invoke-super {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onPause()V

    .line 844
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isBetweenResumePause:Z

    .line 845
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onPause "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    :goto_0
    return-void

    .line 846
    :catch_0
    move-exception v0

    .line 847
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 586
    :try_start_0
    invoke-super {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onResume()V

    .line 587
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onResume "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isBetweenResumePause:Z

    .line 589
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->initPageParams()V

    .line 590
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isResumeFirst:Z

    if-nez v2, :cond_0

    .line 591
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->hasSendResumeFromOnNewIntent:Z

    if-eqz v2, :cond_1

    .line 592
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "hasSendResumeFromOnNewIntent"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->hasSendResumeFromOnNewIntent:Z

    .line 604
    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isResumeFirst:Z

    .line 608
    :goto_1
    return-void

    .line 595
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getTopPage()Liop;

    move-result-object v0

    .line 596
    .local v0, "h5Page":Liop;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 597
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "appResume form onResume"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/Nebula;->sendAppResume(Linx;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 605
    .end local v0    # "h5Page":Liop;
    :catch_0
    move-exception v1

    .line 606
    .local v1, "throwable":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 600
    .end local v1    # "throwable":Ljava/lang/Throwable;
    .restart local v0    # "h5Page":Liop;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "h5page==null"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 914
    if-eqz p1, :cond_0

    .line 915
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onSaveInstanceState "

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    :try_start_0
    const-string/jumbo v1, "savedInstanceStateKey"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startParams:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    :cond_0
    :goto_0
    return-void

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 405
    invoke-super {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onStart()V

    .line 406
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onStart "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method public onStop()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 411
    invoke-super {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onStop()V

    .line 412
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onStop "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getTopPage()Liop;

    move-result-object v0

    .line 415
    .local v0, "h5Page":Liop;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "appPause form onStop"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->appPause:Ljava/lang/String;

    invoke-interface {v1, v2, v4, v4}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 421
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "h5page==null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openPreRenderByPlugin(Z)V
    .locals 0
    .param p1, "openPreRenderByPlugin"    # Z

    .prologue
    .line 888
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->openPreRenderByPlugin:Z

    .line 889
    return-void
.end method

.method public setStartParams(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "startParams"    # Landroid/os/Bundle;

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startParams:Landroid/os/Bundle;

    .line 1012
    return-void
.end method

.method public showFrameworkLoadingView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, -0x1

    .line 299
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "show framework loading view."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    instance-of v2, p1, Lcom/alipay/mobile/framework/loading/LoadingView;

    if-eqz v2, :cond_0

    .line 301
    check-cast p1, Lcom/alipay/mobile/framework/loading/LoadingView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->addLoadingView(Landroid/view/View;)V

    .line 326
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startLoading()V

    .line 327
    return-void

    .line 303
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 306
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$1;

    invoke-direct {v0, p0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$1;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;Landroid/content/Context;)V

    .line 322
    .local v0, "loadingView":Lcom/alipay/mobile/framework/loading/LoadingView;
    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/framework/loading/LoadingView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->addLoadingView(Landroid/view/View;)V

    goto :goto_0
.end method
