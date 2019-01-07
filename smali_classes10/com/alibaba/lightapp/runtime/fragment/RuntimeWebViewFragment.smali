.class public Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;
.super Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
.source "RuntimeWebViewFragment.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lhdt;

.field private d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

.field private e:Lhht;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->f:Z

    return-void
.end method

.method public static a(Lcom/alibaba/lightapp/runtime/model/WebViewModel;)Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;
    .locals 3
    .param p0, "webViewModel"    # Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    .prologue
    .line 48
    new-instance v1, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;

    invoke-direct {v1}, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;-><init>()V

    .line 49
    .local v1, "webViewFragment":Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "webview_model_key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 51
    invoke-virtual {v1, v0}, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    return-object v1
.end method

.method private b(Lcom/alibaba/lightapp/runtime/model/WebViewModel;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    .locals 7
    .param p1, "webViewModel"    # Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    .line 1122
    if-eqz p1, :cond_0

    .line 1123
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->getPreloadModel()Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;

    move-result-object v4

    .line 1124
    if-eqz v4, :cond_0

    .line 1125
    const/4 v4, 0x1

    .line 85
    :goto_0
    if-eqz v4, :cond_4

    .line 86
    invoke-static {}, Lhqi;->a()Lhqi;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->getPreloadModel()Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;

    move-result-object v5

    .line 2072
    iget-object v6, v4, Lhqi;->a:Lhqj;

    if-eqz v6, :cond_1

    .line 2073
    iget-object v4, v4, Lhqi;->a:Lhqj;

    .line 3020
    iget-object v4, v4, Lhqj;->a:Lhqh;

    .line 2074
    if-eqz v4, :cond_1

    .line 2075
    invoke-interface {v4, v5}, Lhqh;->c(Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;)Landroid/view/View;

    move-result-object v2

    .line 86
    :goto_1
    check-cast v2, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .line 87
    .local v2, "runtimeWebViewLayout":Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    if-eqz v2, :cond_3

    .line 89
    :try_start_0
    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/content/MutableContextWrapper;

    .line 90
    .local v1, "mutableContextWrapper":Landroid/content/MutableContextWrapper;
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->b:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v1    # "mutableContextWrapper":Landroid/content/MutableContextWrapper;
    :goto_2
    return-object v2

    .line 1129
    .end local v2    # "runtimeWebViewLayout":Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2079
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 91
    .restart local v2    # "runtimeWebViewLayout":Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getWebView()Lcom/uc/webview/export/WebView;

    move-result-object v3

    .line 95
    .local v3, "webView":Lcom/uc/webview/export/WebView;
    if-eqz v3, :cond_2

    .line 96
    invoke-virtual {v3}, Lcom/uc/webview/export/WebView;->destroy()V

    .line 98
    :cond_2
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->c(Lcom/alibaba/lightapp/runtime/model/WebViewModel;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    move-result-object v2

    .line 99
    goto :goto_2

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "webView":Lcom/uc/webview/export/WebView;
    :cond_3
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->c(Lcom/alibaba/lightapp/runtime/model/WebViewModel;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    move-result-object v2

    goto :goto_2

    .line 105
    .end local v2    # "runtimeWebViewLayout":Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    :cond_4
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->c(Lcom/alibaba/lightapp/runtime/model/WebViewModel;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    move-result-object v2

    .restart local v2    # "runtimeWebViewLayout":Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    goto :goto_2
.end method

.method private c(Lcom/alibaba/lightapp/runtime/model/WebViewModel;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    .locals 2
    .param p1, "webViewModel"    # Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    new-instance v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;-><init>(Landroid/content/Context;)V

    .line 113
    .local v0, "runtimeWebViewLayout":Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(Lcom/alibaba/lightapp/runtime/model/WebViewModel;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .line 114
    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->f()V

    .line 118
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/lightapp/runtime/Component$a;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/lightapp/runtime/Component$a;",
            ">;)",
            "Lcom/alibaba/lightapp/runtime/Component$a;"
        }
    .end annotation

    .prologue
    .line 492
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/lightapp/runtime/Component$a;>;"
    const-class v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->e:Lhht;

    .line 496
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 324
    const-string/jumbo v2, "RuntimeStart"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "RuntimeWebViewFragment getTitle"

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v6, "mRuntimeWebViewLayout isNull="

    aput-object v6, v5, v0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-nez v0, :cond_1

    const-string/jumbo v0, "true"

    :goto_0
    aput-object v0, v5, v6

    const/4 v0, 0x2

    const-string/jumbo v6, "title="

    aput-object v6, v5, v0

    const/4 v6, 0x3

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .line 328
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v5, v6

    .line 324
    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 333
    :cond_0
    return-object v1

    .line 324
    :cond_1
    const-string/jumbo v0, "false"

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 328
    goto :goto_1
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 403
    const-string/jumbo v1, "RuntimeStart"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "RuntimeWebViewFragment handleActivityResult"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v5, "mRuntimeWebViewLayout isNull="

    aput-object v5, v4, v0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-nez v0, :cond_1

    const-string/jumbo v0, "true"

    :goto_0
    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(IILandroid/content/Intent;)V

    .line 411
    :cond_0
    return-void

    .line 403
    :cond_1
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->b:Landroid/content/Context;

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "webview_model_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    .line 63
    .local v1, "webViewModel":Lcom/alibaba/lightapp/runtime/model/WebViewModel;
    if-eqz p1, :cond_1

    .line 1074
    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->b(Lcom/alibaba/lightapp/runtime/model/WebViewModel;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .line 1076
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->c:Lhdt;

    if-eqz v2, :cond_0

    .line 1077
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->c:Lhdt;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getWebViewWrapper()Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-result-object v3

    invoke-interface {v2, v3}, Lhdt;->a(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V

    .line 1080
    :cond_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v2, p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->setIWebViewListener(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;)V

    .line 67
    :cond_1
    const-string/jumbo v3, "RuntimeStart"

    if-eqz v1, :cond_2

    .line 68
    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->getUrl()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string/jumbo v4, "RuntimeWebViewFragment preLoad"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "RuntimeWebViewFragment preLoad completed"

    aput-object v7, v5, v6

    .line 67
    invoke-static {v3, v2, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    return-void

    .line 68
    :cond_2
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "extras"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 301
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(Landroid/os/Bundle;)V

    .line 304
    :cond_0
    const-string/jumbo v1, "RuntimeStart"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "RuntimeWebViewFragment handleRightClickForShare"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v5, "mRuntimeWebViewLayout isNull="

    aput-object v5, v4, v0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-nez v0, :cond_1

    const-string/jumbo v0, "true"

    :goto_0
    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    return-void

    .line 304
    :cond_1
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public final a(Lhdt;)V
    .locals 3
    .param p1, "iContext"    # Lhdt;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 135
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->c:Lhdt;

    .line 136
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->c:Lhdt;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->c:Lhdt;

    .line 137
    invoke-interface {v1}, Lhdt;->f()Lcom/alibaba/lightapp/runtime/INuvaContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->c:Lhdt;

    .line 139
    invoke-interface {v1}, Lhdt;->f()Lcom/alibaba/lightapp/runtime/INuvaContext;

    move-result-object v1

    const-class v2, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-interface {v1, v2}, Lcom/alibaba/lightapp/runtime/INuvaContext;->provideDelegateModel(Ljava/lang/Class;)Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    .line 140
    .local v0, "delegate":Lcom/alibaba/lightapp/runtime/Component$a;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    if-eqz v1, :cond_0

    .line 141
    new-instance v1, Lhht;

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .end local v0    # "delegate":Lcom/alibaba/lightapp/runtime/Component$a;
    invoke-direct {v1, v0}, Lhht;-><init>(Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->e:Lhht;

    .line 144
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "loadUrlId"    # Ljava/lang/String;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->setGroupNavId(Ljava/lang/String;)V

    .line 418
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->c:Lhdt;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->c:Lhdt;

    invoke-interface {v0, p2}, Lhdt;->c(Ljava/lang/String;)V

    .line 467
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "extras"    # Lorg/json/JSONObject;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->c:Lhdt;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->c:Lhdt;

    invoke-interface {v0, p1, p3, p4}, Lhdt;->a(Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 481
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 312
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 316
    :cond_0
    const-string/jumbo v1, "RuntimeStart"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "RuntimeWebViewFragment dispatchEvent"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v5, "mRuntimeWebViewLayout isNull="

    aput-object v5, v4, v0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-nez v0, :cond_1

    const-string/jumbo v0, "true"

    :goto_0
    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    return-void

    .line 316
    :cond_1
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    .line 485
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->c:Lhdt;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->c:Lhdt;

    invoke-interface {v0, p2}, Lhdt;->a(Z)V

    .line 488
    :cond_0
    return-void
.end method

.method public final a(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 352
    const-string/jumbo v2, "RuntimeStart"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "RuntimeWebViewFragment handleKeyDown"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "mRuntimeWebViewLayout isNull="

    aput-object v0, v5, v1

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-nez v0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 360
    :goto_1
    return v0

    .line 352
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0

    :cond_1
    move v0, v1

    .line 360
    goto :goto_1
.end method

.method public final b()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 338
    const-string/jumbo v2, "RuntimeStart"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "RuntimeWebViewFragment getUrl"

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v6, "mRuntimeWebViewLayout isNull="

    aput-object v6, v5, v0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-nez v0, :cond_1

    const-string/jumbo v0, "true"

    :goto_0
    aput-object v0, v5, v6

    const/4 v0, 0x2

    const-string/jumbo v6, "url="

    aput-object v6, v5, v0

    const/4 v6, 0x3

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .line 342
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v5, v6

    .line 338
    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 347
    :cond_0
    return-object v1

    .line 338
    :cond_1
    const-string/jumbo v0, "false"

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 342
    goto :goto_1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 471
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->e:Lhht;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->e:Lhht;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v2, v2, v1}, Lhht;->setActionBarTitle(Ljava/lang/String;ZZZ)V

    .line 474
    :cond_0
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getGroupNavId()Ljava/lang/String;

    move-result-object v0

    .line 425
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    return-object v0
.end method

.method public final e()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    return-object v0
.end method

.method public final f()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 440
    const-string/jumbo v1, "RuntimeStart"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "RuntimeWebViewFragment handleActivityOnPause"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v5, "mRuntimeWebViewLayout isNull="

    aput-object v5, v4, v0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-nez v0, :cond_1

    const-string/jumbo v0, "true"

    :goto_0
    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->b()V

    .line 447
    :cond_0
    return-void

    .line 440
    :cond_1
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public final g()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 451
    const-string/jumbo v1, "RuntimeStart"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "RuntimeWebViewFragment handleActivityOnDestroy"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v5, "mRuntimeWebViewLayout isNull="

    aput-object v5, v4, v0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-nez v0, :cond_1

    const-string/jumbo v0, "true"

    :goto_0
    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->d()V

    .line 458
    :cond_0
    return-void

    .line 451
    :cond_1
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public final h()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 365
    const-string/jumbo v2, "RuntimeStart"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "RuntimeWebViewFragment handleBackPressed"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "mRuntimeWebViewLayout isNull="

    aput-object v0, v5, v1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-nez v0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v0, v6}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(Z)Z

    move-result v0

    .line 373
    :goto_1
    return v0

    .line 365
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0

    :cond_1
    move v0, v1

    .line 373
    goto :goto_1
.end method

.method public final i()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 378
    const-string/jumbo v2, "RuntimeStart"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "RuntimeWebViewFragment handleGoBack"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "mRuntimeWebViewLayout isNull="

    aput-object v0, v5, v1

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-nez v0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(Z)Z

    move-result v0

    .line 385
    :goto_1
    return v0

    .line 378
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0

    :cond_1
    move v0, v1

    .line 385
    goto :goto_1
.end method

.method public final j()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 255
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->f:Z

    if-nez v0, :cond_0

    .line 256
    iput-boolean v6, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->f:Z

    .line 262
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->b()V

    .line 266
    :cond_0
    const-string/jumbo v1, "RuntimeStart"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "RuntimeWebViewFragment handleNavPause"

    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v5, "mRuntimeWebViewLayout isNull="

    aput-object v5, v4, v0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-nez v0, :cond_1

    const-string/jumbo v0, "true"

    :goto_0
    aput-object v0, v4, v6

    const/4 v0, 0x2

    const-string/jumbo v5, "isPaused="

    aput-object v5, v4, v0

    const/4 v5, 0x3

    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->f:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "true"

    :goto_1
    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    return-void

    .line 266
    :cond_1
    const-string/jumbo v0, "false"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "false"

    goto :goto_1
.end method

.method public final k()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 276
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->f:Z

    if-eqz v0, :cond_2

    .line 277
    iput-boolean v5, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->f:Z

    .line 278
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->e:Lhht;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->e:Lhht;

    invoke-virtual {v0}, Lhht;->a()V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v0, :cond_2

    .line 283
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->c:Lhdt;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->c:Lhdt;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lhdt;->c(Ljava/lang/String;)V

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a()V

    .line 291
    :cond_2
    const-string/jumbo v1, "RuntimeStart"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "RuntimeWebViewFragment handleNavResume"

    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "mRuntimeWebViewLayout isNull="

    aput-object v0, v4, v5

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-nez v0, :cond_3

    const-string/jumbo v0, "true"

    :goto_0
    aput-object v0, v4, v5

    const/4 v0, 0x2

    const-string/jumbo v5, "isPaused="

    aput-object v5, v4, v0

    const/4 v5, 0x3

    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->f:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "true"

    :goto_1
    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    return-void

    .line 291
    :cond_3
    const-string/jumbo v0, "false"

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "false"

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->onCreate(Landroid/os/Bundle;)V

    .line 179
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .line 3237
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e()V

    .line 182
    :cond_0
    const-string/jumbo v1, "RuntimeStart"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "RuntimeWebViewFragment onCreate"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v5, "mRuntimeWebViewLayout isNull="

    aput-object v5, v4, v0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-nez v0, :cond_1

    const-string/jumbo v0, "true"

    :goto_0
    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    return-void

    .line 182
    :cond_1
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 148
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 150
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 152
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    const-string/jumbo v1, "lightapp"

    sget-object v2, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->a:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/String;

    const-string/jumbo v4, "cannot be removed from parent: "

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .line 156
    invoke-virtual {v4}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 155
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->b()V

    .line 159
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->b:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->a(Landroid/content/Context;)V

    .line 168
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    const-string/jumbo v2, "RuntimeStart"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "RuntimeWebViewFragment onCreateView"

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v1, "mRuntimeWebViewLayout isNull="

    aput-object v1, v5, v6

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-nez v1, :cond_2

    const-string/jumbo v1, "true"

    :goto_1
    aput-object v1, v5, v7

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    return-object v1

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->b:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 168
    :cond_2
    const-string/jumbo v1, "false"

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 190
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->onDestroy()V

    .line 191
    const-string/jumbo v0, "RuntimeStart"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "RuntimeWebViewFragment onDestroy"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "RuntimeWebViewFragment onDestroy completed"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    return-void
.end method

.method public onDestroyView()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 242
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->onDestroyView()V

    .line 243
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v0, :cond_0

    .line 244
    invoke-static {}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->c()V

    .line 246
    :cond_0
    const-string/jumbo v1, "RuntimeStart"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "RuntimeWebViewFragment onDestroyView"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v5, "mRuntimeWebViewLayout isNull="

    aput-object v5, v4, v0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-nez v0, :cond_1

    const-string/jumbo v0, "true"

    :goto_0
    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    return-void

    .line 246
    :cond_1
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public onPause()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 232
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->onPause()V

    .line 233
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->j()V

    .line 234
    const-string/jumbo v0, "RuntimeStart"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "RuntimeWebViewFragment onPause"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "RuntimeWebViewFragment onPause completed"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    return-void
.end method

.method public onResume()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 223
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->onResume()V

    .line 224
    const-string/jumbo v0, "RuntimeStart"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "RuntimeWebViewFragment onResume"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "RuntimeWebViewFragment onResume completed"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    return-void
.end method

.method public onStart()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 199
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->onStart()V

    .line 200
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .line 4217
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4218
    const-string/jumbo v2, "url"

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4219
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->d:Landroid/content/Context;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->d:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->enterPage(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 203
    :cond_0
    const-string/jumbo v1, "RuntimeStart"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "RuntimeWebViewFragment onStart"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v5, "mRuntimeWebViewLayout isNull="

    aput-object v5, v4, v0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-nez v0, :cond_1

    const-string/jumbo v0, "true"

    :goto_0
    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    return-void

    .line 203
    :cond_1
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public onStop()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 211
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->onStop()V

    .line 212
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .line 4226
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4227
    const-string/jumbo v2, "url"

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4228
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->d:Landroid/content/Context;

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->d:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->leavePage(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 4233
    iput-boolean v5, v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->f:Z

    .line 215
    :cond_0
    const-string/jumbo v1, "RuntimeStart"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "RuntimeWebViewFragment onStop"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "mRuntimeWebViewLayout isNull="

    aput-object v0, v4, v5

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->d:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-nez v0, :cond_1

    const-string/jumbo v0, "true"

    :goto_0
    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    return-void

    .line 215
    :cond_1
    const-string/jumbo v0, "false"

    goto :goto_0
.end method
