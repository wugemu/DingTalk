.class public Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
.super Ljava/lang/Object;
.source "H5FragmentManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5FragmentManager"


# instance fields
.field private activity:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

.field private contentId:I

.field private currentFragment:Landroid/support/v4/app/Fragment;

.field private enableTranslateAnimForUser:Z

.field private enableTranslateAnimForVIP:Z

.field private fragmentManager:Lcn;

.field private fragmentStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V
    .locals 3
    .param p1, "activity"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->enableTranslateAnimForUser:Z

    .line 55
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->enableTranslateAnimForVIP:Z

    .line 58
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->activity:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 59
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->fragmentManager:Lcn;

    .line 60
    sget v0, Lcom/alipay/mobile/nebula/R$id;->h5_fragment:I

    iput v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->contentId:I

    .line 61
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->fragmentStack:Ljava/util/Stack;

    .line 63
    const-string/jumbo v0, "yes"

    const-string/jumbo v1, "h5_enableFragmentTranslateAnimation"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->enableTranslateAnimForUser:Z

    .line 67
    :cond_0
    const-string/jumbo v0, "yes"

    const-string/jumbo v1, "h5_enableFragmentTranslateAnimationForVIP"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->enableTranslateAnimForVIP:Z

    .line 70
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;)Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->activity:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    return-object v0
.end method

.method private postPreRenderRunnable(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)V
    .locals 4
    .param p1, "fragment"    # Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 326
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$1;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)V

    const-wide/16 v2, 0xbb8

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 391
    return-void
.end method

.method private printTrack(Ljava/lang/String;)V
    .locals 4
    .param p1, "funcName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 556
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u6253\u5370\u8c03\u7528\u5806\u6808\uff08\u4e0d\u662f\u95ea\u9000\uff09\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "H5FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " track "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 560
    return-void
.end method


# virtual methods
.method public addFragment(Landroid/os/Bundle;ZZ)V
    .locals 23
    .param p1, "startParam"    # Landroid/os/Bundle;
    .param p2, "withAnim"    # Z
    .param p3, "useTranslateAnim"    # Z

    .prologue
    .line 82
    :try_start_0
    const-string/jumbo v2, "H5FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "addFragment "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string/jumbo v2, "isTinyApp"

    const/4 v4, 0x0

    .line 84
    move-object/from16 v0, p1

    invoke-static {v0, v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v18

    .line 85
    .local v18, "isTinyApp":Z
    if-eqz v18, :cond_6

    const/16 v19, 0x2

    .line 88
    .local v19, "mode":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->activity:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->canUsePreRender()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 89
    invoke-static {}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    move-result-object v15

    .line 90
    .local v15, "h5PreRenderPool":Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
    invoke-virtual {v15}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 92
    const-string/jumbo v2, "isPrerender"

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    :cond_0
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->containsPoolKey(Landroid/os/Bundle;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 96
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragment(Landroid/os/Bundle;I)Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    move-result-object v3

    .line 97
    .local v3, "h5Fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 98
    const-string/jumbo v2, "H5FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "##h5prerender## get prerender fragment by mode "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string/jumbo v2, "isPrerender"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v20

    .line 102
    .local v20, "preStartParam":Landroid/os/Bundle;
    invoke-virtual {v15, v3}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getCurrentIndex(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)I

    move-result v9

    .line 103
    .local v9, "currentIndex":I
    const-string/jumbo v2, "H5FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "##h5prerender## currentIndex "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v15, v0, v2}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->putPreFragmentBundle(Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 105
    if-eqz v18, :cond_5

    .line 106
    const-string/jumbo v2, "h5_preRenderConfig"

    .line 107
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v12

    .line 108
    .local v12, "enablePrerenderConfig":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "YES"

    const-string/jumbo v4, "shouldUsePreRender"

    .line 109
    invoke-static {v12, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    .line 110
    .local v11, "enablePrerender":Z
    if-eqz v11, :cond_5

    .line 111
    invoke-virtual/range {v20 .. v20}, Landroid/os/Bundle;->clear()V

    .line 112
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getH5Page()Liop;

    move-result-object v14

    .line 115
    .local v14, "h5Page":Liop;
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getRootViewHolder()Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    move-result-object v16

    .line 116
    .local v16, "h5ViewHolder":Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
    if-eqz v16, :cond_3

    if-eqz v14, :cond_3

    .line 117
    invoke-virtual/range {v16 .. v16}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5NavBar()Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    move-result-object v13

    .line 118
    .local v13, "h5NavigationBar":Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    if-eqz v13, :cond_1

    .line 119
    invoke-virtual {v13, v14}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setPage(Liop;)V

    .line 121
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v17

    .line 122
    .local v17, "h5WebContent":Lcom/alipay/mobile/nebulacore/ui/H5WebContent;
    if-eqz v17, :cond_2

    .line 123
    invoke-virtual/range {v17 .. v17}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->refreshView()V

    .line 125
    :cond_2
    invoke-virtual/range {v16 .. v16}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->refreshView()V

    .line 128
    .end local v13    # "h5NavigationBar":Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    .end local v17    # "h5WebContent":Lcom/alipay/mobile/nebulacore/ui/H5WebContent;
    :cond_3
    if-eqz v14, :cond_5

    .line 129
    invoke-interface {v14}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v22

    check-cast v22, Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 130
    .local v22, "webView":Lcom/alipay/mobile/nebulacore/web/H5WebView;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "javascript:location.replace(\'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "url"

    .line 131
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\');"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    .line 132
    move-object v0, v14

    check-cast v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object v2, v0

    .line 133
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getScriptLoader()Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    move-result-object v21

    .line 134
    .local v21, "scriptLoader":Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;
    if-eqz v21, :cond_4

    .line 135
    const-string/jumbo v2, "startupParams"

    .line 136
    invoke-static/range {v20 .. v20}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONObject(Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v4

    .line 135
    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->setParamsToWebPage(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_4
    invoke-interface {v14}, Liop;->getPageData()Lior;

    move-result-object v2

    const-string/jumbo v4, "url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lior;->a(Ljava/lang/String;)V

    .line 139
    invoke-interface {v14}, Liop;->getPageData()Lior;

    move-result-object v2

    .line 2396
    const-string/jumbo v4, "H5PageData"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setCreateScenario : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2397
    const/4 v4, 0x4

    iput v4, v2, Lior;->r:I

    .line 140
    invoke-interface {v14}, Liop;->getPageData()Lior;

    move-result-object v2

    const/4 v4, 0x0

    .line 2482
    iget-object v2, v2, Lior;->bc:[I

    const/4 v5, 0x1

    aput v5, v2, v4

    .line 141
    invoke-virtual/range {v22 .. v22}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static/range {v20 .. v20}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isShowTransAnimate(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 142
    invoke-virtual/range {v22 .. v22}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v2

    const-string/jumbo v4, "backgroundColor"

    .line 143
    move-object/from16 v0, v20

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v4

    .line 142
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 148
    .end local v11    # "enablePrerender":Z
    .end local v12    # "enablePrerenderConfig":Lcom/alibaba/fastjson/JSONObject;
    .end local v14    # "h5Page":Liop;
    .end local v16    # "h5ViewHolder":Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
    .end local v21    # "scriptLoader":Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;
    .end local v22    # "webView":Lcom/alipay/mobile/nebulacore/web/H5WebView;
    :cond_5
    const-string/jumbo v2, "isPrerender"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 149
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->pushFragment(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;ZLandroid/os/Bundle;ZZ)Z

    .line 173
    .end local v3    # "h5Fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .end local v9    # "currentIndex":I
    .end local v15    # "h5PreRenderPool":Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
    .end local v18    # "isTinyApp":Z
    .end local v19    # "mode":I
    .end local v20    # "preStartParam":Landroid/os/Bundle;
    :goto_1
    return-void

    .line 85
    .restart local v18    # "isTinyApp":Z
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 155
    .restart local v19    # "mode":I
    :cond_7
    const-string/jumbo v2, "isPrerender"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 156
    const-string/jumbo v2, "bizType"

    const-string/jumbo v4, ""

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 157
    .local v8, "bizType":Ljava/lang/String;
    const/4 v3, 0x0

    .line 158
    .restart local v3    # "h5Fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    invoke-static {v8}, Lcom/alipay/mobile/h5container/service/RnService;->isRnBiz(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 159
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getRnService()Lcom/alipay/mobile/h5container/service/RnService;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 160
    new-instance v3, Lcom/alipay/mobile/nebulacore/ui/RNFragment;

    .end local v3    # "h5Fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/ui/RNFragment;-><init>()V

    .line 165
    .restart local v3    # "h5Fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    :cond_8
    :goto_2
    if-nez v3, :cond_9

    .line 166
    new-instance v3, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .end local v3    # "h5Fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;-><init>()V

    .line 168
    .restart local v3    # "h5Fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 169
    const/4 v4, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->pushFragment(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;ZLandroid/os/Bundle;ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 170
    .end local v3    # "h5Fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .end local v8    # "bizType":Ljava/lang/String;
    .end local v18    # "isTinyApp":Z
    .end local v19    # "mode":I
    :catch_0
    move-exception v10

    .line 171
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5FragmentManager"

    const-string/jumbo v4, "catch exception "

    invoke-static {v2, v4, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 162
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v3    # "h5Fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .restart local v8    # "bizType":Ljava/lang/String;
    .restart local v18    # "isTinyApp":Z
    .restart local v19    # "mode":I
    :cond_a
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebulacore/ui/RNFragment;->resetToH5FragmentBundle(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public declared-synchronized addPreFragment(Landroid/os/Bundle;I)V
    .locals 8
    .param p1, "startParam"    # Landroid/os/Bundle;
    .param p2, "mode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->activity:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isFinishing()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 205
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 179
    :cond_1
    :try_start_1
    const-string/jumbo v5, "H5FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "addPreFragment "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    move-result-object v2

    .line 181
    .local v2, "h5PreRenderPool":Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
    invoke-virtual {v2, p1, p2}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->containsPoolKey(Landroid/os/Bundle;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 182
    const-string/jumbo v5, "bizType"

    const-string/jumbo v6, ""

    invoke-static {p1, v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "bizType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 184
    .local v1, "h5Fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    invoke-static {v0}, Lcom/alipay/mobile/h5container/service/RnService;->isRnBiz(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 185
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getRnService()Lcom/alipay/mobile/h5container/service/RnService;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 186
    new-instance v1, Lcom/alipay/mobile/nebulacore/ui/RNFragment;

    .end local v1    # "h5Fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    invoke-direct {v1}, Lcom/alipay/mobile/nebulacore/ui/RNFragment;-><init>()V

    .line 191
    .restart local v1    # "h5Fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 192
    new-instance v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .end local v1    # "h5Fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    invoke-direct {v1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;-><init>()V

    .line 194
    .restart local v1    # "h5Fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    :cond_3
    const-string/jumbo v5, "H5FragmentManager"

    const-string/jumbo v6, "##h5prerender## did addPreFragment"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 196
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->fragmentManager:Lcn;

    invoke-virtual {v5}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 198
    .local v4, "transaction":Landroid/support/v4/app/FragmentTransaction;
    :try_start_2
    iget v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->contentId:I

    invoke-virtual {v4, v5, v1}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/app/FragmentTransaction;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 199
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->c()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    :goto_2
    :try_start_3
    invoke-virtual {v2, p1, v1}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->putPreFragment(Landroid/os/Bundle;Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 176
    .end local v0    # "bizType":Ljava/lang/String;
    .end local v1    # "h5Fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .end local v2    # "h5PreRenderPool":Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
    .end local v4    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 188
    .restart local v0    # "bizType":Ljava/lang/String;
    .restart local v1    # "h5Fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .restart local v2    # "h5PreRenderPool":Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
    :cond_4
    :try_start_4
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/ui/RNFragment;->resetToH5FragmentBundle(Landroid/os/Bundle;)V

    goto :goto_1

    .line 200
    .restart local v4    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :catch_0
    move-exception v3

    .line 201
    .local v3, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "H5FragmentManager"

    const-string/jumbo v6, "catch fragment exception "

    invoke-static {v5, v6, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public attachFragment(Landroid/support/v4/app/Fragment;ZZ)Z
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "withAnim"    # Z
    .param p3, "useTranslateAnim"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 394
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->activity:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 395
    const-string/jumbo v2, "H5FragmentManager"

    const-string/jumbo v3, "activity is finishing"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_0
    :goto_0
    return v1

    .line 399
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 403
    const-string/jumbo v2, "attachFragment"

    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->printTrack(Ljava/lang/String;)V

    .line 404
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->fragmentManager:Lcn;

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 405
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    if-eqz p2, :cond_2

    .line 406
    if-eqz p3, :cond_3

    .line 407
    sget v2, Lcom/alipay/mobile/nebula/R$anim;->h5_translate_in_right:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->a(II)Landroid/support/v4/app/FragmentTransaction;

    .line 412
    :cond_2
    :goto_1
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 413
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->currentFragment:Landroid/support/v4/app/Fragment;

    .line 414
    const/4 v1, 0x1

    goto :goto_0

    .line 409
    :cond_3
    sget v1, Lcom/alipay/mobile/nebula/R$anim;->h5_tabswitch_in:I

    sget v2, Lcom/alipay/mobile/nebula/R$anim;->h5_tabswitch_out:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(II)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1
.end method

.method public clearPreFragment(II)V
    .locals 11
    .param p1, "location"    # I
    .param p2, "length"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 532
    invoke-static {}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    move-result-object v0

    .line 533
    .local v0, "h5PreRenderPool":Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
    const-string/jumbo v8, "H5FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "clearPreFragment location "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", length "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentList()Ljava/util/List;

    move-result-object v2

    .line 535
    .local v2, "preFragmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulacore/ui/H5Fragment;>;"
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreParamContentList()Ljava/util/List;

    move-result-object v3

    .line 536
    .local v3, "preParamContentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/JSONObject;>;"
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreUrlList()Ljava/util/List;

    move-result-object v4

    .line 537
    .local v4, "preUrlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_3

    .line 538
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 539
    .local v6, "size4Fragment":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 540
    .local v5, "size4Content":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    .line 541
    .local v7, "size4Url":I
    if-ltz p1, :cond_0

    if-ge p1, v6, :cond_0

    .line 542
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/Fragment;

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->detachFragment(Landroid/support/v4/app/Fragment;Z)Z

    .line 543
    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 545
    :cond_0
    if-ltz p1, :cond_1

    if-ge p1, v5, :cond_1

    .line 546
    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 548
    :cond_1
    if-ltz p1, :cond_2

    if-ge p1, v7, :cond_2

    .line 549
    invoke-interface {v4, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 537
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 552
    .end local v5    # "size4Content":I
    .end local v6    # "size4Fragment":I
    .end local v7    # "size4Url":I
    :cond_3
    return-void
.end method

.method public detachFragment(Landroid/support/v4/app/Fragment;Z)Z
    .locals 6
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "withTranslateAnim"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 418
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->activity:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 419
    const-string/jumbo v4, "H5FragmentManager"

    const-string/jumbo v5, "activity is finishing"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_0
    :goto_0
    return v3

    .line 423
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v4

    if-nez v4, :cond_0

    .line 427
    const-string/jumbo v4, "detachFragment"

    invoke-direct {p0, v4}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->printTrack(Ljava/lang/String;)V

    .line 428
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->fragmentManager:Lcn;

    invoke-virtual {v4}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 429
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 431
    .local v0, "params":Landroid/os/Bundle;
    const-string/jumbo v4, "delayRender"

    invoke-static {v0, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 432
    new-instance v3, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$2;

    invoke-direct {v3, p0, p1, v2}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$2;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentTransaction;)V

    const-wide/16 v4, 0x258

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 452
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 443
    :cond_2
    if-eqz p2, :cond_3

    .line 444
    const/4 v3, 0x0

    :try_start_0
    sget v4, Lcom/alipay/mobile/nebula/R$anim;->h5_translate_out_left:I

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->a(II)Landroid/support/v4/app/FragmentTransaction;

    .line 446
    :cond_3
    invoke-virtual {v2, p1}, Landroid/support/v4/app/FragmentTransaction;->d(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->c()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 447
    :catch_0
    move-exception v1

    .line 448
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "H5FragmentManager"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getCurrentFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->currentFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getEnableTranslateAnimForUser()Z
    .locals 1

    .prologue
    .line 563
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->enableTranslateAnimForUser:Z

    return v0
.end method

.method public getEnableTranslateAnimForVIP()Z
    .locals 1

    .prologue
    .line 567
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->enableTranslateAnimForVIP:Z

    return v0
.end method

.method public getFragmentCount()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->fragmentStack:Ljava/util/Stack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->fragmentStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public peekFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->fragmentStack:Ljava/util/Stack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->fragmentStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    const/4 v0, 0x0

    .line 211
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->fragmentStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    goto :goto_0
.end method

.method public pushFragment(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;ZLandroid/os/Bundle;ZZ)Z
    .locals 16
    .param p1, "t"    # Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .param p2, "isPreRender"    # Z
    .param p3, "param"    # Landroid/os/Bundle;
    .param p4, "withAnim"    # Z
    .param p5, "useTranslateAnim"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 215
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->activity:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v13}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isFinishing()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 216
    const/4 v13, 0x0

    .line 322
    :goto_0
    return v13

    .line 219
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->isAdded()Z

    move-result v13

    if-eqz v13, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->fragmentStack:Ljava/util/Stack;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 220
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 223
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->fragmentStack:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/Stack;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5

    .line 225
    const/4 v10, 0x0

    .line 226
    .local v10, "tabTopFragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    const/4 v9, 0x0

    .line 228
    .local v9, "tabFragments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/alipay/mobile/nebulacore/ui/H5Fragment;>;"
    const-string/jumbo v13, "sessionId"

    move-object/from16 v0, p3

    invoke-static {v0, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 229
    .local v8, "sessionId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v13

    invoke-interface {v13, v8}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSession(Ljava/lang/String;)Lipc;

    move-result-object v5

    .line 230
    .local v5, "h5Session":Lipc;
    instance-of v13, v5, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-eqz v13, :cond_4

    move-object v13, v5

    check-cast v13, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 231
    invoke-virtual {v13}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v13

    if-eqz v13, :cond_4

    move-object v13, v5

    .line 232
    check-cast v13, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 234
    invoke-virtual {v13}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->getCurrentFragment()Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    move-result-object v10

    .line 235
    check-cast v5, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 237
    .end local v5    # "h5Session":Lipc;
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->getTabFragments()Ljava/util/Map;

    move-result-object v9

    .line 241
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->fragmentStack:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/app/Fragment;

    .line 243
    .local v11, "topFragment":Landroid/support/v4/app/Fragment;
    if-eqz v9, :cond_7

    .line 244
    invoke-interface {v9, v11}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 246
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v13}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->detachFragment(Landroid/support/v4/app/Fragment;Z)Z

    .line 257
    .end local v8    # "sessionId":Ljava/lang/String;
    .end local v9    # "tabFragments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/alipay/mobile/nebulacore/ui/H5Fragment;>;"
    .end local v10    # "tabTopFragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .end local v11    # "topFragment":Landroid/support/v4/app/Fragment;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->fragmentStack:Ljava/util/Stack;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 258
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->fragmentStack:Ljava/util/Stack;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->fragmentManager:Lcn;

    invoke-virtual {v13}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v12

    .line 261
    .local v12, "transaction":Landroid/support/v4/app/FragmentTransaction;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->activity:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v13}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->canUsePreRender()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 262
    invoke-static {}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->containsPoolKey(Landroid/os/Bundle;I)Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v2, 0x1

    .line 264
    .local v2, "containPreKey":Z
    :goto_2
    const-string/jumbo v13, "H5FragmentManager"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "preRender:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " isAdded():"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->isAdded()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " isContainKey:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    if-eqz v2, :cond_f

    if-eqz p2, :cond_f

    .line 267
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->activity:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v13}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isFinishing()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 268
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 249
    .end local v2    # "containPreKey":Z
    .end local v12    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    .restart local v8    # "sessionId":Ljava/lang/String;
    .restart local v9    # "tabFragments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/alipay/mobile/nebulacore/ui/H5Fragment;>;"
    .restart local v10    # "tabTopFragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .restart local v11    # "topFragment":Landroid/support/v4/app/Fragment;
    :cond_7
    if-eqz p4, :cond_8

    if-eqz p5, :cond_8

    .line 250
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->detachFragment(Landroid/support/v4/app/Fragment;Z)Z

    goto/16 :goto_1

    .line 252
    :cond_8
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->detachFragment(Landroid/support/v4/app/Fragment;Z)Z

    goto/16 :goto_1

    .line 262
    .end local v8    # "sessionId":Ljava/lang/String;
    .end local v9    # "tabFragments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/alipay/mobile/nebulacore/ui/H5Fragment;>;"
    .end local v10    # "tabTopFragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .end local v11    # "topFragment":Landroid/support/v4/app/Fragment;
    .restart local v12    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_9
    const/4 v2, 0x0

    goto :goto_2

    .line 270
    .restart local v2    # "containPreKey":Z
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getH5Page()Liop;

    move-result-object v4

    .line 271
    .local v4, "h5Page":Liop;
    if-eqz v4, :cond_b

    .line 272
    invoke-interface {v4}, Liop;->getPageData()Lior;

    move-result-object v7

    .line 273
    .local v7, "pageData":Lior;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v7, v14, v15}, Lior;->d(J)V

    .line 275
    .end local v7    # "pageData":Lior;
    :cond_b
    if-eqz p4, :cond_c

    .line 276
    sget v13, Lcom/alipay/mobile/nebula/R$anim;->h5_tabswitch_in:I

    sget v14, Lcom/alipay/mobile/nebula/R$anim;->h5_tabswitch_out:I

    invoke-virtual {v12, v13, v14}, Landroid/support/v4/app/FragmentTransaction;->a(II)Landroid/support/v4/app/FragmentTransaction;

    .line 279
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->setTabbarVisible()V

    .line 280
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/support/v4/app/FragmentTransaction;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 281
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->currentFragment:Landroid/support/v4/app/Fragment;

    .line 282
    invoke-static {}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->removeFragment(Landroid/os/Bundle;)V

    .line 284
    if-eqz v4, :cond_d

    .line 285
    const-string/jumbo v13, "H5FragmentManager"

    const-string/jumbo v14, "injectPageReady when prerender window present"

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    check-cast v4, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .end local v4    # "h5Page":Liop;
    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->injectPageReady()V

    .line 289
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v13

    const-string/jumbo v14, "isTinyApp"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v6

    .line 290
    .local v6, "isTinyApp":Z
    if-eqz v6, :cond_e

    .line 291
    const-string/jumbo v13, "H5_PRERENDER_BINGO"

    invoke-static {v13}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v13

    .line 292
    invoke-virtual {v13}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v13

    .line 291
    invoke-static {v13}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 294
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->postPreRenderRunnable(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)V

    .line 297
    :cond_e
    const-string/jumbo v13, "H5FragmentManager"

    const-string/jumbo v14, " preRender hit show."

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .end local v6    # "isTinyApp":Z
    :goto_3
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 299
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->activity:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v13}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isFinishing()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 300
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 302
    :cond_10
    const-string/jumbo v13, "H5FragmentManager"

    const-string/jumbo v14, " add fragment"

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    if-eqz p4, :cond_11

    .line 308
    if-eqz p5, :cond_12

    .line 309
    :try_start_0
    const-string/jumbo v13, "H5FragmentManager"

    const-string/jumbo v14, "fragment use translate anim."

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->setUseTranslateAnim(Z)V

    .line 311
    sget v13, Lcom/alipay/mobile/nebula/R$anim;->h5_translate_in_left:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/support/v4/app/FragmentTransaction;->a(II)Landroid/support/v4/app/FragmentTransaction;

    .line 316
    :cond_11
    :goto_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->contentId:I

    move-object/from16 v0, p1

    invoke-virtual {v12, v13, v0}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 317
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->currentFragment:Landroid/support/v4/app/Fragment;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 318
    :catch_0
    move-exception v3

    .line 319
    .local v3, "e":Ljava/lang/Throwable;
    const-string/jumbo v13, "H5FragmentManager"

    const-string/jumbo v14, "catch fragment exception "

    invoke-static {v13, v14, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 313
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_12
    :try_start_1
    sget v13, Lcom/alipay/mobile/nebula/R$anim;->h5_tabswitch_in:I

    sget v14, Lcom/alipay/mobile/nebula/R$anim;->h5_tabswitch_out:I

    invoke-virtual {v12, v13, v14}, Landroid/support/v4/app/FragmentTransaction;->a(II)Landroid/support/v4/app/FragmentTransaction;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public removeFragment(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;Landroid/os/Bundle;Z)Z
    .locals 12
    .param p1, "t"    # Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .param p2, "param"    # Landroid/os/Bundle;
    .param p3, "exitTabScene"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 456
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->activity:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isFinishing()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 457
    const-string/jumbo v8, "H5FragmentManager"

    const-string/jumbo v10, "activity is finishing"

    invoke-static {v8, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 528
    :goto_0
    return v8

    .line 460
    :cond_0
    if-nez p1, :cond_1

    move v8, v9

    .line 461
    goto :goto_0

    .line 464
    :cond_1
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->activity:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->canUsePreRender()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 465
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->fragmentStack:Ljava/util/Stack;

    invoke-virtual {v8, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 466
    invoke-static {}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    move-result-object v8

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v8, v11, v10}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->containsPoolKey(Landroid/os/Bundle;I)Z

    move-result v8

    if-nez v8, :cond_2

    move v8, v9

    .line 467
    goto :goto_0

    .line 471
    :cond_2
    const-string/jumbo v8, "sessionId"

    invoke-static {p2, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, "sessionId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v8

    invoke-interface {v8, v2}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSession(Ljava/lang/String;)Lipc;

    move-result-object v1

    .line 474
    .local v1, "h5Session":Lipc;
    const/4 v4, 0x0

    .line 475
    .local v4, "tabTopFragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    const/4 v3, 0x0

    .line 477
    .local v3, "tabFragments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/alipay/mobile/nebulacore/ui/H5Fragment;>;"
    instance-of v8, v1, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-eqz v8, :cond_3

    move-object v8, v1

    check-cast v8, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 478
    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v8

    if-eqz v8, :cond_3

    move-object v8, v1

    .line 479
    check-cast v8, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 480
    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->countTabFragments()I

    move-result v0

    .local v0, "countTabFragments":I
    move-object v8, v1

    .line 481
    check-cast v8, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 483
    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->getCurrentFragment()Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    move-result-object v4

    .line 484
    check-cast v1, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 486
    .end local v1    # "h5Session":Lipc;
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->getTabFragments()Ljava/util/Map;

    move-result-object v3

    .line 487
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->fragmentStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->size()I

    move-result v8

    if-ne v8, v0, :cond_3

    if-nez p3, :cond_3

    move v8, v9

    .line 488
    goto :goto_0

    .line 493
    .end local v0    # "countTabFragments":I
    :cond_3
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->fragmentStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->size()I

    move-result v8

    if-gt v8, v10, :cond_4

    move v8, v9

    .line 495
    goto :goto_0

    .line 497
    :cond_4
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v10

    .line 498
    goto/16 :goto_0

    .line 502
    :cond_5
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->fragmentStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_a

    move v5, v10

    .line 503
    .local v5, "top":Z
    :goto_1
    if-eqz v3, :cond_6

    invoke-interface {v3, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz p3, :cond_8

    .line 505
    :cond_6
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->fragmentManager:Lcn;

    invoke-virtual {v8}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v7

    .line 506
    .local v7, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->isUseTranslateAnim()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 507
    sget v8, Lcom/alipay/mobile/nebula/R$anim;->h5_translate_out_right:I

    invoke-virtual {v7, v9, v8}, Landroid/support/v4/app/FragmentTransaction;->a(II)Landroid/support/v4/app/FragmentTransaction;

    .line 509
    :cond_7
    invoke-virtual {v7, p1}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 510
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->fragmentStack:Ljava/util/Stack;

    invoke-virtual {v8, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 513
    .end local v7    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_8
    if-eqz v5, :cond_9

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->fragmentStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    .line 514
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->fragmentStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/Fragment;

    .line 515
    .local v6, "topFragment":Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_b

    .line 516
    invoke-interface {v3, v6}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 518
    invoke-virtual {p0, v4, v9, v9}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->attachFragment(Landroid/support/v4/app/Fragment;ZZ)Z

    .end local v6    # "topFragment":Landroid/support/v4/app/Fragment;
    :cond_9
    :goto_2
    move v8, v10

    .line 528
    goto/16 :goto_0

    .end local v5    # "top":Z
    :cond_a
    move v5, v9

    .line 502
    goto :goto_1

    .line 521
    .restart local v5    # "top":Z
    .restart local v6    # "topFragment":Landroid/support/v4/app/Fragment;
    :cond_b
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->isUseTranslateAnim()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 522
    invoke-virtual {p0, v6, v10, v10}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->attachFragment(Landroid/support/v4/app/Fragment;ZZ)Z

    goto :goto_2

    .line 524
    :cond_c
    invoke-virtual {p0, v6, v9, v9}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->attachFragment(Landroid/support/v4/app/Fragment;ZZ)Z

    goto :goto_2
.end method
