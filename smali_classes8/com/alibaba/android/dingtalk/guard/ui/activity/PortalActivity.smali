.class public Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "PortalActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity$MyWebViewClient;
    }
.end annotation


# instance fields
.field private a:Landroid/view/MenuItem;

.field private b:Landroid/content/Context;

.field private c:Landroid/webkit/WebView;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 39
    iput-object p0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->b:Landroid/content/Context;

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->e:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 71
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "params_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->a:Landroid/view/MenuItem;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 47
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget v1, Lbrx$g;->dt_alpha_setting_protal:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    sget v1, Lbrx$e;->activity_portal:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->setContentView(I)V

    .line 51
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->setPageShowing(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "params_url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->d:Ljava/lang/String;

    .line 55
    sget v1, Lbrx$d;->webview:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->c:Landroid/webkit/WebView;

    .line 57
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 58
    .local v0, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 59
    const-string/jumbo v1, "%1$s %2$s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 60
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 59
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->c:Landroid/webkit/WebView;

    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity$MyWebViewClient;

    invoke-direct {v2, p0, v5}, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity$MyWebViewClient;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;B)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 64
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->c:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 67
    :cond_0
    const-string/jumbo v1, "PortalActivity"

    const-string/jumbo v2, "alpha_net_config_portal"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 68
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->a:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x1

    sget v1, Lbrx$g;->dt_alpha_portal_refresh:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->a:Landroid/view/MenuItem;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->a:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 126
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->a:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 127
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->a:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 128
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 149
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 150
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->setPageShowing(Z)V

    .line 151
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->f:Z

    if-nez v0, :cond_0

    .line 152
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->startAlphaServer()Z

    .line 154
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 133
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 144
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 135
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->c:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->e:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->a:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 140
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
