.class final Lahh$1;
.super Ljava/lang/Object;
.source "SyncCareOrdersTask.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahh;->c()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/framework/model/UserAccountModel;

.field final synthetic b:Lahh;


# direct methods
.method constructor <init>(Lahh;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 0
    .param p1, "this$0"    # Lahh;

    .prologue
    .line 40
    iput-object p1, p0, Lahh$1;->b:Lahh;

    iput-object p2, p0, Lahh$1;->a:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 64
    const-string/jumbo v0, "SyncCareOrdersTask"

    const-string/jumbo v1, "getCareOrderResult fail===>"

    invoke-static {v0, v1, p1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 59
    const-string/jumbo v0, "SyncCareOrdersTask"

    const-string/jumbo v1, "getCareOrderResult fail===>"

    invoke-static {v0, v1, p1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 40
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult;

    .line 1044
    const-string/jumbo v0, "SyncCareOrdersTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getCareOrderResult success: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v0

    .line 1046
    iget-object v1, p0, Lahh$1;->a:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lahh$1;->a:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iget-object v1, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1, p1}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->handleCareOrdersResult(JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult;)V

    .line 1048
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getTagDatasource()Lcom/alibaba/alimei/sdk/datasource/TagDatasource;

    move-result-object v0

    .line 1049
    iget-object v1, p0, Lahh$1;->a:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lahh$1;->a:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iget-object v1, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1, p1}, Lcom/alibaba/alimei/sdk/datasource/TagDatasource;->handleCareOrdersResult(JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult;)V

    .line 40
    return-void
.end method
