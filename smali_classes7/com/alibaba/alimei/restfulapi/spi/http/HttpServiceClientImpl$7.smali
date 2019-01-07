.class Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$7;
.super Ljava/lang/Object;
.source "HttpServiceClientImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->doPostWebmailRequest(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

.field final synthetic val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

.field final synthetic val$request:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$7;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$7;->val$request:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    iput-object p3, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$7;->val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public redo()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 462
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$7;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$000(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$7;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$7;->val$request:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$7;->val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 467
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$7;->val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    new-instance v1, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    const-string/jumbo v2, "\u5df2\u7ecf\u8fbe\u5230\u6700\u5927\u7684\u91cd\u8bd5\u6b21\u6570"

    invoke-direct {v1, v2}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    goto :goto_0
.end method
