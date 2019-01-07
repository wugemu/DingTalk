.class final Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$12;
.super Lcom/uc/webview/export/WebViewClient;
.source "OrgHomePageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$12;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-direct {p0}, Lcom/uc/webview/export/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 364
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$12;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->g(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V

    .line 366
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_org_home_share"

    .line 1083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 366
    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$12;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->h(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 371
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$12;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->h(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 375
    invoke-super {p0, p1, p2, p3}, Lcom/uc/webview/export/WebViewClient;->onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 376
    return-void
.end method
