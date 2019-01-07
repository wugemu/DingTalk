.class final Lcom/alibaba/alimei/lwp/LWPServiceClientImpl$4;
.super Ljava/lang/Object;
.source "LWPServiceClientImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/RPCListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->readHttpResponseContent(Lgtj;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Ljava/lang/Object;
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
.field final synthetic a:Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl$4;->a:Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(ILjava/lang/String;)V
    .locals 5
    .param p1, "errCode"    # I
    .param p2, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x2

    .line 475
    const-string/jumbo v0, "LWPServiceClientImpl"

    invoke-static {v0, p2}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl$4;->a:Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;

    invoke-static {v0, v2}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->access$302(Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;I)I

    .line 477
    const-string/jumbo v0, "accessToken"

    const-string/jumbo v1, "accessToken invalide"

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "do refreshToken fail for accountName:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl$4;->a:Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;

    invoke-static {v4}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->access$600(Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/utils/StringUtils;->getAppendString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/alimei/restfulapi/robot/ARFRobotUtils;->coreAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 451
    check-cast p1, Ljava/lang/String;

    .line 1455
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1456
    :goto_0
    iget-object v2, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl$4;->a:Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->access$300(Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;)I

    move-result v2

    if-nez v2, :cond_3

    .line 1458
    iget-object v2, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl$4;->a:Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->access$100(Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl$4;->a:Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;

    invoke-static {v0}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->access$400(Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1459
    iget-object v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl$4;->a:Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;

    invoke-static {v0}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->access$100(Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->setAccessToken(Ljava/lang/String;)V

    .line 1460
    iget-object v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl$4;->a:Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;

    invoke-static {v0}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->access$500(Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;)Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1461
    const-string/jumbo v0, "LWPServiceClientImpl"

    const-string/jumbo v2, "redoing request..."

    invoke-static {v0, v2}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    iget-object v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl$4;->a:Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;

    invoke-static {v0}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->access$500(Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;)Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;->redo()V

    .line 1464
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl$4;->a:Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->access$302(Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;I)I

    .line 1466
    :goto_1
    return-void

    .line 1455
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1466
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl$4;->a:Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->access$302(Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;I)I

    goto :goto_1

    .line 1469
    :cond_3
    const-string/jumbo v0, "LWPServiceClientImpl"

    const-string/jumbo v1, "has been redo request!!!"

    invoke-static {v0, v1}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
