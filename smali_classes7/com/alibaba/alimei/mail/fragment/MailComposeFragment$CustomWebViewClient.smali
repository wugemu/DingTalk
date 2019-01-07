.class Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$CustomWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MailComposeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomWebViewClient"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2305
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 2305
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$CustomWebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 2308
    const/4 v0, 0x1

    return v0
.end method
