.class Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$4;
.super Ljava/lang/Object;
.source "OKHttpServiceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->doPostWithFile(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

.field final synthetic val$_callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

.field final synthetic val$files:Ljava/util/Map;

.field final synthetic val$serviceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$4;->this$0:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$4;->val$serviceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    iput-object p3, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$4;->val$files:Ljava/util/Map;

    iput-object p4, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$4;->val$_callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public redo()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 336
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$4;->this$0:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->access$000(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$4;->this$0:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$4;->val$serviceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$4;->val$files:Ljava/util/Map;

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$4;->val$_callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->doPostWithFile(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$4;->val$_callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$4;->val$_callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    new-instance v1, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    const-string/jumbo v2, "already max redo times"

    invoke-direct {v1, v2}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    goto :goto_0
.end method
