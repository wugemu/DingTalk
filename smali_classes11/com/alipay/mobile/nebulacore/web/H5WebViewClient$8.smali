.class Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;
.super Ljava/lang/Object;
.source "H5WebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

.field final synthetic val$hasResponse:Z

.field final synthetic val$isMainDoc:Z

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .prologue
    .line 1304
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;->val$method:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;->val$isMainDoc:Z

    iput-boolean p6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;->val$hasResponse:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 1307
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$000(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1308
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "page ==null not log"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    :cond_0
    :goto_0
    return-void

    .line 1312
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;->val$uri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$800(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Landroid/net/Uri;)V

    .line 1314
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$100(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lior;

    move-result-object v2

    .line 1474
    iget-object v2, v2, Lior;->w:Ljava/lang/String;

    .line 1314
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;->val$url:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;->val$method:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;->val$isMainDoc:Z

    invoke-static {v1, v2, v4, v5, v7}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$900(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1315
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 1316
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProviderUseCache(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 1317
    .local v6, "h5DevDebugProvider":Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;->val$hasResponse:Z

    if-eqz v1, :cond_2

    .line 1318
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;->val$url:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;->val$method:Ljava/lang/String;

    invoke-static {v1, v6, v2, v4, v8}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$1000(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1321
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$1100(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$1100(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1322
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    .line 1323
    .local v0, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v0, :cond_0

    .line 1326
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;->val$hasResponse:Z

    if-eqz v1, :cond_3

    .line 1327
    const-string/jumbo v1, "h5_goto_fallback"

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;->val$url:Ljava/lang/String;

    const-string/jumbo v5, "goto_fallback=false"

    move-object v4, v3

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1329
    :cond_3
    const-string/jumbo v1, "h5_goto_fallback"

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;->val$url:Ljava/lang/String;

    const-string/jumbo v5, "goto_fallback=true"

    move-object v4, v3

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
