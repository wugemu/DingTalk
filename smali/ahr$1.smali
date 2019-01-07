.class final Lahr$1;
.super Ljava/lang/Object;
.source "AbstractUpdateMailTask.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahr;->c()Z
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
        "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lahr;


# direct methods
.method constructor <init>(Lahr;)V
    .locals 0
    .param p1, "this$0"    # Lahr;

    .prologue
    .line 93
    iput-object p1, p0, Lahr$1;->a:Lahr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 3
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lahr$1;->a:Lahr;

    iget-object v0, v0, Lahr;->a:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    iget-object v1, p0, Lahr$1;->a:Lahr;

    invoke-static {v1}, Lahr;->a(Lahr;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v2, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->handleMessageSyncResult(Ljava/util/List;Ljava/util/List;Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lahr$1;->a:Lahr;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " error--->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzb;->d(Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 3
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Lahr$1;->a:Lahr;

    iget-object v0, v0, Lahr;->a:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    iget-object v1, p0, Lahr$1;->a:Lahr;

    invoke-static {v1}, Lahr;->a(Lahr;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v2, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->handleMessageSyncResult(Ljava/util/List;Ljava/util/List;Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lahr$1;->a:Lahr;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " error--->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzb;->d(Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 93
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;

    .line 1096
    iget-object v0, p0, Lahr$1;->a:Lahr;

    iget-object v1, p0, Lahr$1;->a:Lahr;

    iget v1, v1, Lahr;->b:I

    iget-object v2, p0, Lahr$1;->a:Lahr;

    invoke-static {v2}, Lahr;->a(Lahr;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lahr;->b:I

    .line 1097
    iget-object v0, p0, Lahr$1;->a:Lahr;

    iget-object v0, v0, Lahr;->a:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    iget-object v1, p0, Lahr$1;->a:Lahr;

    invoke-static {v1}, Lahr;->a(Lahr;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->handleMessageSyncResult(Ljava/util/List;Ljava/util/List;Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;)V

    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mCurrentCount "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lahr$1;->a:Lahr;

    iget v1, v1, Lahr;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzb;->i(Ljava/lang/String;)I

    .line 1100
    iget-object v0, p0, Lahr$1;->a:Lahr;

    iget v0, v0, Lahr;->c:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lahr$1;->a:Lahr;

    invoke-static {v1}, Lahr;->b(Lahr;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1103
    iget-object v0, p0, Lahr$1;->a:Lahr;

    invoke-static {v0, p0}, Lahr;->a(Lahr;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    .line 93
    :cond_0
    return-void
.end method
