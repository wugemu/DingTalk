.class public Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;
.super Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceCircleFragment;
.source "NavigationFragment.java"


# instance fields
.field private a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

.field private b:Ljava/lang/String;

.field private c:Landroid/webkit/WebView;

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceCircleFragment;-><init>()V

    .line 35
    const-string/jumbo v0, "a"

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->b:Ljava/lang/String;

    .line 119
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment$1;-><init>(Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;)Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->c:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 43
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    const-class v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    .line 44
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_ENTER_GUIDE_PAGE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;)V

    .line 49
    :cond_0
    :try_start_0
    sget v1, Ligf$d;->face_circle_navigate:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 56
    .local v0, "v":Landroid/view/View;
    sget v1, Ligf$c;->face_circle_nav_webView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->c:Landroid/webkit/WebView;

    .line 59
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->mFaceCircleCallBack:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    invoke-interface {v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->getRemoteConfig()Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->e:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 61
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->e:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getNavi()Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->d:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->c:Landroid/webkit/WebView;

    .line 1069
    const-string/jumbo v2, "searchBoxJavaBridge_"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1070
    const-string/jumbo v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1071
    const-string/jumbo v2, "accessibilityTraversal"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1072
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 1073
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1074
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1075
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 1076
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 1078
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 1079
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 1080
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1081
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1082
    new-instance v2, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavWebChromeClient;

    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->f:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavWebChromeClient;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 65
    .end local v0    # "v":Landroid/view/View;
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v1

    new-instance v1, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;

    invoke-direct {v1}, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;-><init>()V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->forward(Lcom/alipay/mobile/security/bio/workspace/BioFragment;)V

    .line 53
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 86
    invoke-super {p0}, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceCircleFragment;->onResume()V

    .line 88
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->c:Landroid/webkit/WebView;

    const-string/jumbo v2, "file:///android_asset/html/nav/facewelcome.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 107
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->d:Ljava/lang/String;

    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    .line 96
    const-string/jumbo v1, "%1$s&os=android&abtest=%2$s"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->b:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "url":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    .end local v0    # "url":Ljava/lang/String;
    :cond_3
    const-string/jumbo v1, "%1$s?os=android&abtest=%2$s"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->b:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "url":Ljava/lang/String;
    goto :goto_1
.end method

.method public ontActivityEvent(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "type"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 110
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v1, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_EXIT_GUIDE_PAGE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->mFaceCircleCallBack:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    const/16 v1, 0xca

    invoke-interface {v0, v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->sendResponse(I)V

    .line 116
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceCircleFragment;->ontActivityEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
