.class final Lahj$1;
.super Ljava/lang/Object;
.source "SyncMailByTagTask.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahj;->c()Z
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
        "Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lyc;

.field final synthetic b:Lya;

.field final synthetic c:Lahj;


# direct methods
.method constructor <init>(Lahj;Lyc;Lya;)V
    .locals 0
    .param p1, "this$0"    # Lahj;

    .prologue
    .line 76
    iput-object p1, p0, Lahj$1;->c:Lahj;

    iput-object p2, p0, Lahj$1;->a:Lyc;

    iput-object p3, p0, Lahj$1;->b:Lya;

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
    .line 107
    iget-object v0, p0, Lahj$1;->c:Lahj;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Lahj;->a(Lahj;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 108
    const-string/jumbo v0, "SyncMailByTag"

    const-string/jumbo v1, "searchMailByTag network error--->>"

    invoke-static {v0, v1}, Lzb;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lahj$1;->a:Lyc;

    const/4 v1, 0x2

    iput v1, v0, Lyc;->c:I

    .line 110
    iget-object v0, p0, Lahj$1;->b:Lya;

    iget-object v1, p0, Lahj$1;->a:Lyc;

    invoke-interface {v0, v1}, Lya;->a(Lyc;)V

    .line 111
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 3
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 97
    iget-object v1, p0, Lahj$1;->c:Lahj;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v2

    invoke-static {v1, v2}, Lahj;->a(Lahj;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lahj$1;->c:Lahj;

    invoke-static {v2}, Lahj;->b(Lahj;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "searchMailByTag error-->>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lahj$1;->c:Lahj;

    invoke-static {v2}, Lahj;->d(Lahj;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "errorMsg":Ljava/lang/String;
    const-string/jumbo v1, "SyncMailByTag"

    invoke-static {v1, v0}, Lzd;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string/jumbo v1, "SyncMailByTag"

    invoke-static {v1, v0}, Lzb;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lahj$1;->a:Lyc;

    const/4 v2, 0x2

    iput v2, v1, Lyc;->c:I

    .line 103
    iget-object v1, p0, Lahj$1;->b:Lya;

    iget-object v2, p0, Lahj$1;->a:Lyc;

    invoke-interface {v1, v2}, Lya;->a(Lyc;)V

    .line 104
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 76
    move-object v6, p1

    check-cast v6, Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;

    .line 1079
    const/4 v0, 0x0

    .line 1080
    if-eqz v6, :cond_0

    .line 1081
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v1

    .line 1082
    iget-object v2, p0, Lahj$1;->c:Lahj;

    invoke-static {v2}, Lahj;->a(Lahj;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lahj$1;->c:Lahj;

    invoke-static {v4}, Lahj;->b(Lahj;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lahj$1;->c:Lahj;

    invoke-static {v5}, Lahj;->c(Lahj;)Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->handleSearchMailResult(JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;)V

    .line 1083
    invoke-virtual {v6}, Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;->getMailList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v6}, Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;->getMailList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v0, v7

    .line 1087
    :cond_0
    iget-object v1, p0, Lahj$1;->a:Lyc;

    iput v7, v1, Lyc;->c:I

    .line 1088
    iget-object v1, p0, Lahj$1;->b:Lya;

    iget-object v2, p0, Lahj$1;->a:Lyc;

    invoke-interface {v1, v2}, Lya;->a(Lyc;)V

    .line 1089
    const-string/jumbo v1, "SyncMailByTag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sync mail by tag hasNewMail: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method
