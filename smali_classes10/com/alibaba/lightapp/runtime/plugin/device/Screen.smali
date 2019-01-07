.class public Lcom/alibaba/lightapp/runtime/plugin/device/Screen;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Screen.java"


# instance fields
.field private mContext:Landroid/app/Activity;

.field private mNavBarDelegate:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Screen;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Screen;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->showStatusBar()V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/device/Screen;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Screen;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->hideStatusBar()V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/device/Screen;)Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Screen;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->mNavBarDelegate:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/device/Screen;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Screen;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method private hideStatusBar()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v3, 0x400

    .line 81
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->mContext:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->mContext:Landroid/app/Activity;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->mContext:Landroid/app/Activity;

    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getImmersiveStatusBarPlaceholderId()I

    move-result v0

    .line 85
    .local v0, "statusBarId":I
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .end local v0    # "statusBarId":I
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 92
    :cond_1
    return-void
.end method

.method private showStatusBar()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 95
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->mContext:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->mContext:Landroid/app/Activity;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->mContext:Landroid/app/Activity;

    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getImmersiveStatusBarPlaceholderId()I

    move-result v0

    .line 98
    .local v0, "statusBarId":I
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .end local v0    # "statusBarId":I
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 104
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 28
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 29
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->mContext:Landroid/app/Activity;

    .line 30
    new-instance v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->mNavBarDelegate:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .line 31
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->mNavBarDelegate:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a()V

    .line 32
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 37
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->mNavBarDelegate:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->mNavBarDelegate:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->b()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->mNavBarDelegate:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .line 41
    :cond_0
    return-void
.end method

.method public resetView(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 2
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->mContext:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/device/Screen$2;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Screen$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Screen;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 130
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v0
.end method

.method public rotateView(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 2
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->mContext:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/device/Screen$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Screen$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Screen;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 77
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v0
.end method
