.class Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$2;
.super Ljava/lang/Object;
.source "H5WebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->onResourceFinishLoad(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .prologue
    .line 593
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$2;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 596
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$2;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$100(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lior;

    move-result-object v2

    .line 1870
    iget-object v2, v2, Lior;->ak:Ljava/lang/String;

    .line 596
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->getResPkgInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, "resPkg":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 598
    .local v0, "mainPkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$2;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$400(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 599
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$2;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$400(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getContentPackageStatus()Ljava/lang/String;

    move-result-object v0

    .line 601
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$2;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$100(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lior;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2198
    const-string/jumbo v4, "H5PageData"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setResPkgInfo : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    iput-object v3, v2, Lior;->aF:Ljava/lang/String;

    .line 602
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$2;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$500(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)V

    .line 603
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$2;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$100(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lior;

    move-result-object v2

    .line 2888
    iget-object v2, v2, Lior;->am:Ljava/lang/String;

    .line 604
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$2;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$100(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lior;

    move-result-object v2

    .line 3194
    iget-object v2, v2, Lior;->aF:Ljava/lang/String;

    .line 605
    return-void
.end method
