.class Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;
.super Ljava/lang/Object;
.source "H5ContentProviderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getContentOnUi(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

.field final synthetic val$responseListen:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;

.field final synthetic val$time:J

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    .prologue
    .line 668
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;->this$0:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;->val$responseListen:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;

    iput-wide p4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;->val$time:J

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
    .line 672
    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;->this$0:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;->val$url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getContent(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    .line 673
    .local v2, "response":Landroid/webkit/WebResourceResponse;
    if-eqz v2, :cond_1

    .line 674
    new-instance v5, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4$1;

    invoke-direct {v5, p0, v2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4$1;-><init>(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;Landroid/webkit/WebResourceResponse;)V

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 707
    .end local v2    # "response":Landroid/webkit/WebResourceResponse;
    :cond_0
    :goto_0
    return-void

    .line 686
    .restart local v2    # "response":Landroid/webkit/WebResourceResponse;
    :cond_1
    new-instance v1, Lcom/alipay/mobile/nebulacore/web/H5InputStream;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;->val$url:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;->this$0:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-direct {v1, v5, v6}, Lcom/alipay/mobile/nebulacore/web/H5InputStream;-><init>(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;)V

    .line 687
    .local v1, "netInput":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->inputToByte(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 688
    .local v0, "bytes":[B
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 689
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 690
    .local v3, "stream":Ljava/io/InputStream;
    new-instance v5, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4$2;

    invoke-direct {v5, p0, v3}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4$2;-><init>(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;Ljava/io/InputStream;)V

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 701
    .end local v0    # "bytes":[B
    .end local v1    # "netInput":Ljava/io/InputStream;
    .end local v2    # "response":Landroid/webkit/WebResourceResponse;
    .end local v3    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .line 702
    .local v4, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v5, "H5ContentProviderImpl"

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 703
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;->val$responseListen:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;

    if-eqz v5, :cond_0

    .line 704
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;->val$responseListen:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;->onGetResponse(Landroid/webkit/WebResourceResponse;)V

    goto :goto_0
.end method
