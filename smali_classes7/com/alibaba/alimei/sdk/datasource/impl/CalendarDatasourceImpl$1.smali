.class Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl$1;
.super Ljava/lang/Object;
.source "CalendarDatasourceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->folderCanModify(Ljava/util/List;)Ljava/util/List;
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
        "Lcom/alibaba/alimei/restfulapi/response/data/FolderCanModifyResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;

.field final synthetic val$resultList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl$1;->this$0:Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl$1;->val$resultList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 0
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    .prologue
    .line 1192
    return-void
.end method

.method public onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/FolderCanModifyResult;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/FolderCanModifyResult;

    .prologue
    .line 1182
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1170
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/FolderCanModifyResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl$1;->onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/FolderCanModifyResult;)V

    return-void
.end method

.method public onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 0
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    .prologue
    .line 1187
    return-void
.end method

.method public onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/FolderCanModifyResult;)V
    .locals 2
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/FolderCanModifyResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1174
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/FolderCanModifyResult;->getCanModifyList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl$1;->val$resultList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/FolderCanModifyResult;->getCanModifyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1177
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1170
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/FolderCanModifyResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl$1;->onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/FolderCanModifyResult;)V

    return-void
.end method
