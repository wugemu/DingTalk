.class public Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Screenshot.java"


# instance fields
.field private mDetectorListener:Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$a;

.field private mScreenshotDialog:Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;

.field private mTipAction:Ljava/lang/String;

.field private mTipContent:Ljava/lang/String;

.field private mTipTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->mScreenshotDialog:Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;)Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->mScreenshotDialog:Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->mTipTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->mTipContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->mTipAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->showLoadingDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->doUploadImage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->dismissLoadingDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/json/JSONObject;

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->dispatchEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private dismissLoadingDialog()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 237
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v2, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 239
    .local v0, "baseActivity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 241
    .end local v0    # "baseActivity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    :cond_0
    return-void
.end method

.method private doUploadImage(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 185
    invoke-static {}, Lify;->a()Lify;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$2;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)V

    invoke-virtual {v0, p1, v1}, Lify;->a(Ljava/lang/String;Lifv;)V

    .line 225
    return-void
.end method

.method private showLoadingDialog()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 229
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v2, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 231
    .local v0, "baseActivity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 233
    .end local v0    # "baseActivity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    :cond_0
    return-void
.end method


# virtual methods
.method public startMonitor(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 60
    .local v0, "args":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 61
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x2

    const-string/jumbo v5, "invalid args"

    .line 62
    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 162
    :goto_0
    return-object v2

    .line 65
    :cond_0
    const-string/jumbo v2, "tipTitle"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->mTipTitle:Ljava/lang/String;

    .line 66
    const-string/jumbo v2, "tipContent"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->mTipContent:Ljava/lang/String;

    .line 67
    const-string/jumbo v2, "tipAction"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->mTipAction:Ljava/lang/String;

    .line 69
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->mDetectorListener:Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$a;

    if-nez v2, :cond_2

    .line 70
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)V

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->mDetectorListener:Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$a;

    .line 157
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;

    .line 158
    .local v1, "baseActivity":Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->mDetectorListener:Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$a;

    .line 1346
    if-eqz v2, :cond_2

    .line 1347
    iget-object v3, v1, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->l:Ljava/util/List;

    monitor-enter v3

    .line 1348
    :try_start_0
    iget-object v4, v1, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->l:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1349
    iget-object v4, v1, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->l:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1351
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .end local v1    # "baseActivity":Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;
    :cond_2
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_0

    .line 1351
    .restart local v1    # "baseActivity":Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public stopMonitor(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 167
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 169
    .local v0, "args":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 170
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x2

    const-string/jumbo v5, "invalid args"

    .line 171
    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 181
    :goto_0
    return-object v2

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->mDetectorListener:Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$a;

    if-eqz v2, :cond_2

    .line 175
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;

    .line 176
    .local v1, "baseActivity":Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->mDetectorListener:Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$a;

    .line 1356
    if-eqz v2, :cond_1

    .line 1357
    iget-object v3, v1, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->l:Ljava/util/List;

    monitor-enter v3

    .line 1358
    :try_start_0
    iget-object v4, v1, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->l:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1359
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->mDetectorListener:Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$a;

    .line 181
    .end local v1    # "baseActivity":Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;
    :cond_2
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_0

    .line 1359
    .restart local v1    # "baseActivity":Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
