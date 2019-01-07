.class Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4$2;
.super Ljava/lang/Object;
.source "H5ContentProviderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;

.field final synthetic val$stream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;

    .prologue
    .line 690
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4$2;->this$1:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4$2;->val$stream:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 693
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4$2;->this$1:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;->val$responseListen:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;

    if-eqz v0, :cond_0

    .line 694
    const-string/jumbo v0, "H5ContentProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getContentOnUi form getContent 2:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4$2;->this$1:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;

    iget-wide v4, v4, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;->val$time:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4$2;->this$1:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4$2;->this$1:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;->val$responseListen:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4$2;->this$1:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;->this$0:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4$2;->this$1:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4$2;->val$stream:Ljava/io/InputStream;

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->access$200(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;->onGetResponse(Landroid/webkit/WebResourceResponse;)V

    .line 697
    :cond_0
    return-void
.end method
