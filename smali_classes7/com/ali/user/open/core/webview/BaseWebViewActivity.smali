.class public Lcom/ali/user/open/core/webview/BaseWebViewActivity;
.super Landroid/support/v7/app/AppCompatActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/user/open/core/webview/BaseWebViewActivity$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public canReceiveTitle:Z

.field protected memberWebView:Lcom/ali/user/open/core/webview/MemberWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ali/user/open/core/webview/BaseWebViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    sget v0, Lcom/ali/user/open/core/R$layout;->ali_user_activity_webview:I

    invoke-virtual {p0, v0}, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->setContentView(I)V

    sget v0, Lcom/ali/user/open/core/R$id;->ali_user_webview:I

    invoke-virtual {p0, v0}, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/webview/MemberWebView;

    iput-object v0, p0, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->memberWebView:Lcom/ali/user/open/core/webview/MemberWebView;

    iget-object v0, p0, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->memberWebView:Lcom/ali/user/open/core/webview/MemberWebView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->memberWebView:Lcom/ali/user/open/core/webview/MemberWebView;

    invoke-virtual {p0}, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->createWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/open/core/webview/MemberWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->memberWebView:Lcom/ali/user/open/core/webview/MemberWebView;

    invoke-virtual {p0}, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->createWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/open/core/webview/MemberWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/ali/user/open/core/trace/SDKLogger;->isDebugEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/ali/user/open/core/webview/MemberWebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_1
    sget v0, Lcom/ali/user/open/core/R$id;->ali_user_webview_toolbar:I

    invoke-virtual {p0, v0}, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    new-instance v1, Lcom/ali/user/open/core/webview/BaseWebViewActivity$1;

    invoke-direct {v1, p0}, Lcom/ali/user/open/core/webview/BaseWebViewActivity$1;-><init>(Lcom/ali/user/open/core/webview/BaseWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "ui_contextParams"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    :goto_1
    instance-of v3, v1, Ljava/util/Map;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->memberWebView:Lcom/ali/user/open/core/webview/MemberWebView;

    invoke-virtual {v3}, Lcom/ali/user/open/core/webview/MemberWebView;->getContextParameters()Ljava/util/HashMap;

    move-result-object v3

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_2
    if-eqz p1, :cond_8

    const-string/jumbo v1, "title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "title"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iput-boolean v4, p0, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->canReceiveTitle:Z

    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    sget-object v0, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCreate url="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ali/user/open/core/context/KernelContext;->checkServiceValid()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/ali/user/open/core/webview/BaseWebViewActivity$a;

    invoke-direct {v0, p0}, Lcom/ali/user/open/core/webview/BaseWebViewActivity$a;-><init>(Lcom/ali/user/open/core/webview/BaseWebViewActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v4, [Ljava/lang/String;

    aput-object v2, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/ali/user/open/core/webview/BaseWebViewActivity$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_5
    if-eqz p1, :cond_9

    const-string/jumbo v1, "ui_contextParams"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    goto :goto_1

    :cond_6
    iput-boolean v5, p0, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->canReceiveTitle:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->finish()V

    goto/16 :goto_0

    :cond_8
    move-object v1, v2

    goto :goto_2

    :cond_9
    move-object v1, v2

    goto/16 :goto_1
.end method


# virtual methods
.method public createWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    new-instance v0, Lcom/ali/user/open/core/webview/BaseWebViewActivity$2;

    invoke-direct {v0, p0}, Lcom/ali/user/open/core/webview/BaseWebViewActivity$2;-><init>(Lcom/ali/user/open/core/webview/BaseWebViewActivity;)V

    return-object v0
.end method

.method public createWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    new-instance v0, Lcom/ali/user/open/core/webview/BaseWebViewClient;

    invoke-direct {v0}, Lcom/ali/user/open/core/webview/BaseWebViewClient;-><init>()V

    return-object v0
.end method

.method public initParams(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackHistory()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/ali/user/open/core/model/ResultCode;->USER_CANCEL:Lcom/ali/user/open/core/model/ResultCode;

    iget v1, v1, Lcom/ali/user/open/core/model/ResultCode;->code:I

    invoke-virtual {p0, v1, v0}, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->onBackHistory()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->initParams(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    iget-object v0, p0, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->memberWebView:Lcom/ali/user/open/core/webview/MemberWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->memberWebView:Lcom/ali/user/open/core/webview/MemberWebView;

    invoke-virtual {v0}, Lcom/ali/user/open/core/webview/MemberWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->memberWebView:Lcom/ali/user/open/core/webview/MemberWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->memberWebView:Lcom/ali/user/open/core/webview/MemberWebView;

    invoke-virtual {v0}, Lcom/ali/user/open/core/webview/MemberWebView;->removeAllViews()V

    iget-object v0, p0, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->memberWebView:Lcom/ali/user/open/core/webview/MemberWebView;

    invoke-virtual {v0}, Lcom/ali/user/open/core/webview/MemberWebView;->destroy()V

    :cond_1
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onFailure(Lcom/ali/user/open/core/model/ResultCode;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    iget-object v0, p0, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->memberWebView:Lcom/ali/user/open/core/webview/MemberWebView;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->memberWebView:Lcom/ali/user/open/core/webview/MemberWebView;

    invoke-virtual {v0}, Lcom/ali/user/open/core/webview/MemberWebView;->resumeTimers()V

    iget-object v0, p0, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->memberWebView:Lcom/ali/user/open/core/webview/MemberWebView;

    invoke-virtual {v0}, Lcom/ali/user/open/core/webview/MemberWebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "url"

    iget-object v1, p0, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->memberWebView:Lcom/ali/user/open/core/webview/MemberWebView;

    invoke-virtual {v1}, Lcom/ali/user/open/core/webview/MemberWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-virtual {p0}, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ui_contextParams"

    iget-object v1, p0, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->memberWebView:Lcom/ali/user/open/core/webview/MemberWebView;

    invoke-virtual {v1}, Lcom/ali/user/open/core/webview/MemberWebView;->getContextParameters()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public setResult(Lcom/ali/user/open/core/model/ResultCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->onFailure(Lcom/ali/user/open/core/model/ResultCode;)V

    return-void
.end method
