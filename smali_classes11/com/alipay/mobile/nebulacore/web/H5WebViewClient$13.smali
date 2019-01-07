.class Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$13;
.super Ljava/lang/Object;
.source "H5WebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->onRelease()V
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
    .line 1953
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$13;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1957
    invoke-static {}, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils;->getAllThreadsTraces()Ljava/util/List;

    move-result-object v1

    .line 1958
    .local v1, "traces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 1959
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$13;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "All Threads Traces: ###"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1961
    .local v0, "trace":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$13;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iget-object v3, v3, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1964
    .end local v0    # "trace":Ljava/lang/String;
    :cond_0
    return-void
.end method
