.class final Lahv$1;
.super Ljava/lang/Object;
.source "MailChangeTagsTask.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahv;->c()Z
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
.field final synthetic a:Lahv;


# direct methods
.method constructor <init>(Lahv;)V
    .locals 0
    .param p1, "this$0"    # Lahv;

    .prologue
    .line 81
    iput-object p1, p0, Lahv$1;->a:Lahv;

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

    .line 99
    iget-object v0, p0, Lahv$1;->a:Lahv;

    iget-object v0, v0, Lahv;->a:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    iget-object v1, p0, Lahv$1;->a:Lahv;

    invoke-static {v1}, Lahv;->a(Lahv;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v2, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->handleMessageSyncResult(Ljava/util/List;Ljava/util/List;Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;)V

    .line 100
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
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

    .line 94
    iget-object v0, p0, Lahv$1;->a:Lahv;

    iget-object v0, v0, Lahv;->a:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    iget-object v1, p0, Lahv$1;->a:Lahv;

    invoke-static {v1}, Lahv;->a(Lahv;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v2, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->handleMessageSyncResult(Ljava/util/List;Ljava/util/List;Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;)V

    .line 96
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 81
    .line 1084
    iget-object v0, p0, Lahv$1;->a:Lahv;

    iget-object v0, v0, Lahv;->a:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    iget-object v1, p0, Lahv$1;->a:Lahv;

    invoke-static {v1}, Lahv;->a(Lahv;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1, v2, v2}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->handleMessageSyncResult(Ljava/util/List;Ljava/util/List;Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;)V

    .line 1087
    iget-object v0, p0, Lahv$1;->a:Lahv;

    invoke-static {v0, p0}, Lahv;->a(Lahv;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    .line 81
    return-void
.end method
