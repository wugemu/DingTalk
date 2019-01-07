.class Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$9;
.super Ljava/lang/Object;
.source "HttpServiceClientImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/RPCListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->readHttpResponseContent(Lorg/apache/http/HttpResponse;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/alimei/restfulapi/RPCListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    .prologue
    .line 740
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$9;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(ILjava/lang/String;)V
    .locals 5
    .param p1, "errCode"    # I
    .param p2, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x2

    .line 764
    const-string/jumbo v0, "Alimei.RPC"

    invoke-static {v0, p2}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$9;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-static {v0, v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$1202(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;I)I

    .line 766
    const-string/jumbo v0, "accessToken"

    const-string/jumbo v1, "accessToken invalide"

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "do refreshToken fail for accountName:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$9;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-static {v4}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$300(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/utils/StringUtils;->getAppendString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/alimei/restfulapi/robot/ARFRobotUtils;->coreAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 740
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$9;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "accessToken"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 744
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 745
    .local v0, "isTokenValid":Z
    :goto_0
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$9;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$1200(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)I

    move-result v2

    if-nez v2, :cond_3

    .line 747
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$9;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$1300(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$9;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$1400(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 748
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$9;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$1300(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->setAccessToken(Ljava/lang/String;)V

    .line 749
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$9;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$1500(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 750
    const-string/jumbo v2, "Alimei.RPC"

    const-string/jumbo v3, "redoing request..."

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$9;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$1500(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;->redo()V

    .line 753
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$9;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-static {v2, v1}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$1202(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;I)I

    .line 760
    :goto_1
    return-void

    .line 744
    .end local v0    # "isTokenValid":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 755
    .restart local v0    # "isTokenValid":Z
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$9;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$1202(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;I)I

    goto :goto_1

    .line 758
    :cond_3
    const-string/jumbo v1, "Alimei.RPC"

    const-string/jumbo v2, "has been redo request!!!"

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
