.class Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$10;
.super Ljava/lang/Object;
.source "H5WebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->onPageStarted(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .prologue
    .line 1651
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$10;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$10;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1654
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$10;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$000(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1655
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1656
    .local v0, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$10;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1657
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$10;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$000(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v1

    const-string/jumbo v2, "h5PageStarted"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1659
    .end local v0    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void
.end method
