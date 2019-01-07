.class final Ltc$1;
.super Ljava/lang/Object;
.source "UpdateSelfInfoTask.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltc;->c()Z
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
        "Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ltc;


# direct methods
.method constructor <init>(Ltc;)V
    .locals 0
    .param p1, "this$0"    # Ltc;

    .prologue
    .line 77
    iput-object p1, p0, Ltc$1;->a:Ltc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 96
    iget-object v0, p0, Ltc$1;->a:Ltc;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Ltc;->a(Ltc;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 97
    const-string/jumbo v0, "sync contact network error--->>"

    invoke-static {v0, p1}, Lzb;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 90
    iget-object v0, p0, Ltc$1;->a:Ltc;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Ltc;->a(Ltc;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 91
    const-string/jumbo v0, "sync contact service error--->>"

    invoke-static {v0, p1}, Lzb;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 77
    .line 1080
    invoke-static {}, Lcom/alibaba/alimei/contact/datasource/ContactDatasource$InstanceHolder;->getContactDatasource()Lcom/alibaba/alimei/contact/datasource/ContactDatasource;

    move-result-object v0

    .line 1081
    iget-object v1, p0, Ltc$1;->a:Ltc;

    invoke-static {v1}, Ltc;->a(Ltc;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v1, p0, Ltc$1;->a:Ltc;

    invoke-static {v1}, Ltc;->b(Ltc;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Ltc$1;->a:Ltc;

    invoke-static {v4}, Ltc;->c(Ltc;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/alibaba/alimei/contact/datasource/ContactDatasource;->updateSelfInfo(JLjava/lang/String;Ljava/lang/String;)Z

    .line 77
    return-void
.end method
