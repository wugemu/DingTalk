.class Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$2;
.super Ljava/lang/Object;
.source "OKHttpServiceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->doGetChunked(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;JJ)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

.field final synthetic val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

.field final synthetic val$end:J

.field final synthetic val$serviceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$2;->this$0:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$2;->val$serviceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    iput-object p3, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$2;->val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    iput-wide p4, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$2;->val$start:J

    iput-wide p6, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$2;->val$end:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public redo()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$2;->this$0:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->access$000(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$2;->this$0:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$2;->val$serviceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$2;->val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    iget-wide v4, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$2;->val$start:J

    iget-wide v6, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$2;->val$end:J

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->doGetChunked(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;JJ)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$2;->val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$2;->val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    new-instance v1, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    const-string/jumbo v2, "already max redo times"

    invoke-direct {v1, v2}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    goto :goto_0
.end method
