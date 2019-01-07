.class public final Lcom/alibaba/alimei/oauth/widget/OAuthWebView;
.super Landroid/webkit/WebView;
.source "OAuthWebView.java"


# instance fields
.field private a:Lafq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0}, Lcom/alibaba/alimei/oauth/widget/OAuthWebView;->a()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0}, Lcom/alibaba/alimei/oauth/widget/OAuthWebView;->a()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    invoke-direct {p0}, Lcom/alibaba/alimei/oauth/widget/OAuthWebView;->a()V

    .line 21
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/oauth/widget/OAuthWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 35
    new-instance v0, Lafq;

    invoke-direct {v0, p0}, Lafq;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebView;->a:Lafq;

    .line 36
    return-void
.end method


# virtual methods
.method protected final onDetachedFromWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebView;->a:Lafq;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebView;->a:Lafq;

    invoke-virtual {v0}, Lafq;->a()V

    .line 53
    iput-object v1, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebView;->a:Lafq;

    .line 55
    :cond_0
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/oauth/widget/OAuthWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 56
    return-void
.end method
