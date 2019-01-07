.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebView$17;
.super Ljava/lang/Object;
.source "RimetWebView.java"

# interfaces
.implements Lcom/uc/webview/export/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setDownloadListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$17;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$17;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 645
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$17;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$17;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v3, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->c(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 648
    const-string/jumbo v2, "video"

    invoke-virtual {p4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "audio"

    invoke-virtual {p4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 649
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 650
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$17;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$17;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 657
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$17;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lhrf;->a(Landroid/content/Context;Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 664
    :cond_1
    :goto_1
    return-void

    .line 652
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$17;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 661
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 662
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
