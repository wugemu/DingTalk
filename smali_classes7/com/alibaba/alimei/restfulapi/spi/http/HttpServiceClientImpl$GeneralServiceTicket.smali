.class Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$GeneralServiceTicket;
.super Ljava/lang/Object;
.source "HttpServiceClientImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GeneralServiceTicket"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;


# direct methods
.method private constructor <init>(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)V
    .locals 0

    .prologue
    .line 996
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$GeneralServiceTicket;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;
    .param p2, "x1"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$1;

    .prologue
    .line 996
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$GeneralServiceTicket;-><init>(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)V

    return-void
.end method


# virtual methods
.method public cancle()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 999
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$GeneralServiceTicket;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->cancel()V

    .line 1000
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$GeneralServiceTicket;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$1502(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;)Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    .line 1001
    return-void
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 1018
    const/4 v0, 0x1

    return v0
.end method

.method public redo()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$GeneralServiceTicket;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$1500(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$GeneralServiceTicket;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$1500(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;->redo()V

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$GeneralServiceTicket;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$1502(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;)Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    .line 1009
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$GeneralServiceTicket;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$900(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)V

    .line 1014
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .prologue
    .line 1024
    return-void
.end method
