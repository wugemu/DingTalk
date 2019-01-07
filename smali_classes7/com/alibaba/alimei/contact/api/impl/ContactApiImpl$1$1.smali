.class final Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$1$1;
.super Ljava/lang/Object;
.source "ContactApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$1;->handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
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
        "Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/contact/datasource/ContactDatasource;

.field final synthetic b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

.field final synthetic c:Lcom/alibaba/alimei/framework/api/ApiResult;

.field final synthetic d:Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$1;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$1;Lcom/alibaba/alimei/contact/datasource/ContactDatasource;Lcom/alibaba/alimei/framework/model/UserAccountModel;Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$1;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$1$1;->d:Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$1;

    iput-object p2, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$1$1;->a:Lcom/alibaba/alimei/contact/datasource/ContactDatasource;

    iput-object p3, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$1$1;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iput-object p4, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$1$1;->c:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$1$1;->c:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 134
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$1$1;->c:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 129
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 115
    check-cast p1, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;

    .line 1118
    iget-object v0, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$1$1;->a:Lcom/alibaba/alimei/contact/datasource/ContactDatasource;

    iget-object v1, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$1$1;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1}, Lcom/alibaba/alimei/contact/datasource/ContactDatasource;->handleSyncUserSelfContact(JLcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;)V

    .line 1119
    iget-object v0, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$1$1;->c:Lcom/alibaba/alimei/framework/api/ApiResult;

    iget-object v1, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$1$1;->a:Lcom/alibaba/alimei/contact/datasource/ContactDatasource;

    iget-object v2, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$1$1;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/alibaba/alimei/contact/datasource/ContactDatasource;->queryUserSelfContact(J)Lcom/alibaba/alimei/contact/model/UserSelfContactModel;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 115
    return-void
.end method
