.class Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$3;
.super Ljava/lang/Object;
.source "OKHttpServiceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

.field final synthetic val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

.field final synthetic val$serviceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$3;->this$0:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$3;->val$serviceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    iput-object p3, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$3;->val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

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
    .line 306
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$3;->this$0:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->access$000(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$3;->this$0:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$3;->val$serviceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$3;->val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$3;->val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$3;->val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    new-instance v1, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    const-string/jumbo v2, "already max redo times"

    invoke-direct {v1, v2}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    goto :goto_0
.end method
