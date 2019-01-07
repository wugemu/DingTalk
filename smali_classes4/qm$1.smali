.class final Lqm$1;
.super Ljava/lang/Object;
.source "AbstractImapUpdateMailTask.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqm;->c()Z
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
.field final synthetic a:Lqm;


# direct methods
.method constructor <init>(Lqm;)V
    .locals 0
    .param p1, "this$0"    # Lqm;

    .prologue
    .line 100
    iput-object p1, p0, Lqm$1;->a:Lqm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 3
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 137
    iget-object v0, p0, Lqm$1;->a:Lqm;

    iget-object v0, v0, Lqm;->d:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    iget-object v1, p0, Lqm$1;->a:Lqm;

    invoke-static {v1}, Lqm;->a(Lqm;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v2, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->handleMessageSyncResult(Ljava/util/List;Ljava/util/List;Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;)V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lqm$1;->a:Lqm;

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

    invoke-static {v0}, Lyx;->a(Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 3
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-object v0, p0, Lqm$1;->a:Lqm;

    iget-object v0, v0, Lqm;->d:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    iget-object v1, p0, Lqm$1;->a:Lqm;

    invoke-static {v1}, Lqm;->a(Lqm;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v2, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->handleMessageSyncResult(Ljava/util/List;Ljava/util/List;Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lqm$1;->a:Lqm;

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

    invoke-static {v0}, Lyx;->a(Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 100
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;

    .line 1103
    iget-object v0, p0, Lqm$1;->a:Lqm;

    iget-object v1, p0, Lqm$1;->a:Lqm;

    iget v1, v1, Lqm;->f:I

    iget-object v2, p0, Lqm$1;->a:Lqm;

    invoke-static {v2}, Lqm;->a(Lqm;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lqm;->f:I

    .line 1104
    iget-object v0, p0, Lqm$1;->a:Lqm;

    iget-object v0, v0, Lqm;->d:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    iget-object v1, p0, Lqm$1;->a:Lqm;

    invoke-static {v1}, Lqm;->a(Lqm;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1, v3, p1}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->handleMessageSyncResult(Ljava/util/List;Ljava/util/List;Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;)V

    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mCurrentCount "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lqm$1;->a:Lqm;

    iget v1, v1, Lqm;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyx;->b(Ljava/lang/String;)I

    .line 1107
    iget-object v0, p0, Lqm$1;->a:Lqm;

    iget v0, v0, Lqm;->g:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lqm$1;->a:Lqm;

    invoke-static {v1}, Lqm;->b(Lqm;)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1110
    iget-object v0, p0, Lqm$1;->a:Lqm;

    iput-object v3, v0, Lqm;->d:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    .line 1111
    iget-object v0, p0, Lqm$1;->a:Lqm;

    invoke-static {v0, v3}, Lqm;->a(Lqm;Ljava/util/List;)Ljava/util/List;

    .line 1112
    iget-object v0, p0, Lqm$1;->a:Lqm;

    invoke-static {v0, v3}, Lqm;->a(Lqm;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1115
    iget-object v0, p0, Lqm$1;->a:Lqm;

    iget v0, v0, Lqm;->f:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lqm$1;->a:Lqm;

    invoke-static {v1}, Lqm;->b(Lqm;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1116
    iget-object v0, p0, Lqm$1;->a:Lqm;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lqm;->h:Z

    .line 1118
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lqm$1;->a:Lqm;

    iput-boolean v4, v0, Lqm;->h:Z

    goto :goto_0

    .line 1122
    :cond_1
    iget-object v0, p0, Lqm$1;->a:Lqm;

    iput-boolean v4, v0, Lqm;->h:Z

    .line 1123
    iget-object v0, p0, Lqm$1;->a:Lqm;

    invoke-static {v0, p0}, Lqm;->a(Lqm;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    goto :goto_0
.end method
