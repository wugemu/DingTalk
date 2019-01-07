.class public final Lhdx;
.super Lhdu;
.source "DrawerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhdx$a;,
        Lhdx$c;,
        Lhdx$b;
    }
.end annotation


# instance fields
.field public b:Lhdx$c;

.field c:Landroid/support/v4/widget/DrawerLayout;

.field d:Landroid/widget/FrameLayout;

.field e:Landroid/widget/FrameLayout;

.field public f:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

.field public g:Z

.field h:Lhht;

.field public i:Ljava/lang/String;

.field public j:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

.field public k:Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;

.field private l:Z

.field private m:Lhdx$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1}, Lhdu;-><init>(Landroid/app/Activity;)V

    .line 49
    iput-boolean v0, p0, Lhdx;->l:Z

    .line 50
    iput-boolean v0, p0, Lhdx;->g:Z

    .line 280
    new-instance v0, Lhdx$3;

    invoke-direct {v0, p0}, Lhdx$3;-><init>(Lhdx;)V

    iput-object v0, p0, Lhdx;->k:Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;

    .line 62
    return-void
.end method

.method static synthetic a(Lhdx;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lhdx;

    .prologue
    .line 34
    iget-object v0, p0, Lhdx;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lhdx;)V
    .locals 4
    .param p0, "x0"    # Lhdx;

    .prologue
    const/4 v3, 0x1

    .line 34
    .line 1190
    iget-boolean v0, p0, Lhdx;->l:Z

    if-nez v0, :cond_1

    .line 1191
    iget-object v0, p0, Lhdx;->a:Landroid/app/Activity;

    sget v1, Lhdn$h;->drawer_stub_layout:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1192
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1194
    iget-object v0, p0, Lhdx;->a:Landroid/app/Activity;

    sget v1, Lhdn$h;->drawer_container:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lhdx;->e:Landroid/widget/FrameLayout;

    .line 1195
    iget-object v0, p0, Lhdx;->a:Landroid/app/Activity;

    sget v1, Lhdn$h;->wv_drawer:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    iput-object v0, p0, Lhdx;->f:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 1196
    iget-object v0, p0, Lhdx;->f:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    new-instance v1, Lhdx$2;

    invoke-direct {v1, p0}, Lhdx$2;-><init>(Lhdx;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 1230
    iget-object v0, p0, Lhdx;->f:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lhdx;->f:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1234
    :cond_0
    iget-object v0, p0, Lhdx;->f:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    new-instance v1, Lhdx$b;

    invoke-direct {v1, p0}, Lhdx$b;-><init>(Lhdx;)V

    sget-object v2, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper$a;Ljava/lang/String;)V

    .line 1236
    iput-boolean v3, p0, Lhdx;->l:Z

    .line 34
    :cond_1
    return-void
.end method

.method static synthetic c(Lhdx;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lhdx;

    .prologue
    .line 34
    iget-object v0, p0, Lhdx;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lhdx;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lhdx;

    .prologue
    .line 34
    iget-object v0, p0, Lhdx;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lhdx;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lhdx;

    .prologue
    .line 34
    iget-object v0, p0, Lhdx;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic f(Lhdx;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lhdx;

    .prologue
    .line 34
    iget-object v0, p0, Lhdx;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g(Lhdx;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lhdx;

    .prologue
    .line 34
    iget-object v0, p0, Lhdx;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic h(Lhdx;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lhdx;

    .prologue
    .line 34
    iget-object v0, p0, Lhdx;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic i(Lhdx;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lhdx;

    .prologue
    .line 34
    iget-object v0, p0, Lhdx;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic j(Lhdx;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lhdx;

    .prologue
    .line 34
    iget-object v0, p0, Lhdx;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic k(Lhdx;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lhdx;

    .prologue
    .line 34
    iget-object v0, p0, Lhdx;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic l(Lhdx;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lhdx;

    .prologue
    .line 34
    iget-object v0, p0, Lhdx;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic m(Lhdx;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lhdx;

    .prologue
    .line 34
    iget-object v0, p0, Lhdx;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 72
    iget-object v1, p0, Lhdx;->a:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lhdx;->b:Lhdx$c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lhdx;->b:Lhdx$c;

    invoke-interface {v1}, Lhdx$c;->f()Lcom/alibaba/lightapp/runtime/INuvaContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lhdx;->b:Lhdx$c;

    .line 75
    invoke-interface {v1}, Lhdx$c;->f()Lcom/alibaba/lightapp/runtime/INuvaContext;

    move-result-object v1

    const-class v2, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-interface {v1, v2}, Lcom/alibaba/lightapp/runtime/INuvaContext;->provideDelegateModel(Ljava/lang/Class;)Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    .line 76
    .local v0, "delegate":Lcom/alibaba/lightapp/runtime/Component$a;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    if-eqz v1, :cond_0

    .line 77
    new-instance v1, Lhht;

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .end local v0    # "delegate":Lcom/alibaba/lightapp/runtime/Component$a;
    invoke-direct {v1, v0}, Lhht;-><init>(Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;)V

    iput-object v1, p0, Lhdx;->h:Lhht;

    .line 81
    :cond_0
    new-instance v2, Lhdx$a;

    iget-object v1, p0, Lhdx;->b:Lhdx$c;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lhdx;->b:Lhdx$c;

    .line 82
    invoke-interface {v1}, Lhdx$c;->f()Lcom/alibaba/lightapp/runtime/INuvaContext;

    move-result-object v1

    :goto_0
    invoke-direct {v2, p0, v1}, Lhdx$a;-><init>(Lhdx;Lcom/alibaba/lightapp/runtime/INuvaContext;)V

    iput-object v2, p0, Lhdx;->m:Lhdx$a;

    .line 84
    iget-object v1, p0, Lhdx;->a:Landroid/app/Activity;

    sget v2, Lhdn$h;->drawer_layout:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout;

    iput-object v1, p0, Lhdx;->c:Landroid/support/v4/widget/DrawerLayout;

    .line 85
    iget-object v1, p0, Lhdx;->a:Landroid/app/Activity;

    sget v2, Lhdn$h;->main:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lhdx;->d:Landroid/widget/FrameLayout;

    .line 86
    iget-object v1, p0, Lhdx;->c:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 87
    iget-object v1, p0, Lhdx;->c:Landroid/support/v4/widget/DrawerLayout;

    new-instance v2, Lhdx$1;

    invoke-direct {v2, p0}, Lhdx$1;-><init>(Lhdx;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$c;)V

    .line 128
    :cond_1
    return-void

    .line 82
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lhdx;->f:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lhdx;->f:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->d()V

    .line 136
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 141
    invoke-virtual {p0}, Lhdx;->e()V

    .line 142
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 147
    invoke-virtual {p0}, Lhdx;->f()V

    .line 148
    return-void
.end method

.method e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 170
    iget-object v0, p0, Lhdx;->h:Lhht;

    invoke-virtual {v0}, Lhht;->a()V

    .line 171
    iget-object v0, p0, Lhdx;->f:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lhdx;->b:Lhdx$c;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lhdx;->f:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    iget-object v1, p0, Lhdx;->m:Lhdx$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setNuvaProvider(Lcom/alibaba/lightapp/runtime/INuvaContext;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lhdx;->f:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->onResume()V

    .line 177
    :cond_1
    return-void
.end method

.method f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 181
    iget-object v0, p0, Lhdx;->f:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lhdx;->f:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->onPause()V

    .line 183
    iget-object v0, p0, Lhdx;->f:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setNuvaProvider(Lcom/alibaba/lightapp/runtime/INuvaContext;)V

    .line 186
    :cond_0
    return-void
.end method
