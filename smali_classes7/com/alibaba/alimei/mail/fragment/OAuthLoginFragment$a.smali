.class final Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$a;
.super Lcom/uc/webview/export/WebViewClient;
.source "OAuthLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;


# direct methods
.method private constructor <init>(Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$a;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    invoke-direct {p0}, Lcom/uc/webview/export/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    .prologue
    .line 410
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$a;-><init>(Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;)V

    return-void
.end method


# virtual methods
.method public final shouldInterceptRequest(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/WebResourceRequest;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "request"    # Lcom/uc/webview/export/WebResourceRequest;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 420
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->shouldInterceptRequest(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/WebResourceRequest;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public final shouldInterceptRequest(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 414
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->shouldInterceptRequest(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public final shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/WebResourceRequest;)Z
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "request"    # Lcom/uc/webview/export/WebResourceRequest;

    .prologue
    .line 425
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/WebResourceRequest;)Z

    move-result v0

    return v0
.end method

.method public final shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 430
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$a;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->a(Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;)Lcom/alibaba/alimei/mail/oauth/Configuration;

    move-result-object v0

    .line 1156
    iget-object v0, v0, Lcom/alibaba/alimei/mail/oauth/Configuration;->g:Landroid/net/Uri;

    .line 431
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$a;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    invoke-static {v0, p2}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->a(Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;Ljava/lang/String;)V

    .line 433
    const/4 v0, 0x1

    .line 436
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
