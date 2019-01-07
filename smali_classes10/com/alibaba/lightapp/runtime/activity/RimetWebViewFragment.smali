.class public Lcom/alibaba/lightapp/runtime/activity/RimetWebViewFragment;
.super Landroid/support/v4/app/Fragment;
.source "RimetWebViewFragment.java"


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/RimetWebViewFragment;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(IILandroid/content/Intent;)V

    .line 80
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 41
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/RimetWebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/RimetWebViewFragment;->a:Landroid/widget/FrameLayout;

    .line 43
    new-instance v1, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/RimetWebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/RimetWebViewFragment;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 44
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 46
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/RimetWebViewFragment;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v1, v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/RimetWebViewFragment;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/RimetWebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "index"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->loadUrl(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/RimetWebViewFragment;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 51
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/RimetWebViewFragment;->a:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/RimetWebViewFragment;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 52
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/RimetWebViewFragment;->a:Landroid/widget/FrameLayout;

    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/RimetWebViewFragment;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->d()V

    .line 73
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 74
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/RimetWebViewFragment;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b()V

    .line 66
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 67
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 59
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/RimetWebViewFragment;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->c()V

    .line 60
    return-void
.end method
