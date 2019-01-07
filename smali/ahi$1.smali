.class final Lahi$1;
.super Ljava/lang/Object;
.source "SyncFoldersTask.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahi;->c()Z
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
        "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lahi;


# direct methods
.method constructor <init>(Lahi;JZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lahi;

    .prologue
    .line 84
    iput-object p1, p0, Lahi$1;->d:Lahi;

    iput-wide p2, p0, Lahi$1;->a:J

    iput-boolean p4, p0, Lahi$1;->b:Z

    iput-object p5, p0, Lahi$1;->c:Ljava/lang/String;

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
    .line 144
    iget-object v0, p0, Lahi$1;->d:Lahi;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Lahi;->a(Lahi;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SyncFolder NetworkException: syncKey: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lahi$1;->d:Lahi;

    invoke-static {v1}, Lahi;->b(Lahi;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    return-void
.end method

.method public final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 84
    .line 1121
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v0

    const-string/jumbo v1, "basic_SyncFolder"

    iget-object v2, p0, Lahi$1;->d:Lahi;

    invoke-static {v2}, Lahi;->a(Lahi;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lya;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 4
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 126
    iget-object v0, p0, Lahi$1;->d:Lahi;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Lahi;->a(Lahi;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 128
    const-string/jumbo v0, "SyncFoldersTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lahi$1;->d:Lahi;

    invoke-static {v2}, Lahi;->a(Lahi;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " sync folders error: code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->getResultCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 129
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->getResultMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",syncKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lahi$1;->d:Lahi;

    invoke-static {v2}, Lahi;->b(Lahi;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {v0, v1}, Lzd;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SyncFolder ServiceException: syncKey: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lahi$1;->d:Lahi;

    invoke-static {v1}, Lahi;->b(Lahi;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->getResultCode()I

    move-result v0

    const/16 v1, 0x3ec

    if-ne v0, v1, :cond_0

    .line 136
    const-string/jumbo v0, "SyncFoldersTask"

    const-string/jumbo v1, "1004"

    .line 137
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->getResultMsg()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "account perhaps recreate, contact user to relogin"

    .line 136
    invoke-static {v0, v1, v2, v3}, Lyo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 84
    move-object v5, p1

    check-cast v5, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;

    .line 2088
    if-nez v5, :cond_1

    .line 2089
    const-string/jumbo v0, "SyncFoldersTask"

    const-string/jumbo v1, "sync folder fail for result is null"

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    :cond_0
    :goto_0
    return-void

    .line 2093
    :cond_1
    const-string/jumbo v0, "SyncFoldersTask"

    const-string/jumbo v1, "end syncFoldersTask"

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    invoke-virtual {v5}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;->getFolders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2095
    const-string/jumbo v0, "SyncFoldersTask"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "end syncFoldersTask,"

    aput-object v2, v1, v7

    const-string/jumbo v2, " return size: "

    aput-object v2, v1, v6

    .line 2096
    invoke-virtual {v5}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;->getFolders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ", newSyncKey: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2097
    invoke-virtual {v5}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;->getSyncKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2095
    invoke-static {v1}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    :cond_2
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v1

    .line 2101
    iget-wide v2, p0, Lahi$1;->a:J

    iget-object v0, p0, Lahi$1;->d:Lahi;

    invoke-static {v0}, Lahi;->a(Lahi;)Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->handleSyncFoldersResult(JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;Z)Lcom/alibaba/alimei/sdk/model/FolderGroupModel;

    .line 2103
    iget-boolean v0, p0, Lahi$1;->b:Z

    if-eqz v0, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;->getFolders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;->getFolders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v6

    .line 2105
    :goto_1
    invoke-static {}, Lafv;->c()Lafy;

    move-result-object v2

    .line 3110
    iget-boolean v2, v2, Lafy;->c:Z

    .line 2106
    if-eqz v2, :cond_0

    if-nez v0, :cond_3

    const-string/jumbo v0, "0"

    iget-object v2, p0, Lahi$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2107
    :cond_3
    const-string/jumbo v0, "Auto sync inbox mail will start"

    invoke-static {v0}, Lyx;->a(Ljava/lang/String;)I

    .line 2108
    iget-wide v2, p0, Lahi$1;->a:J

    invoke-interface {v1, v2, v3, v7}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v0

    .line 2109
    if-eqz v0, :cond_5

    .line 2110
    iget-object v1, p0, Lahi$1;->d:Lahi;

    invoke-static {v1}, Lahi;->a(Lahi;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    iget-wide v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    iget v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    invoke-interface {v1, v2, v3, v0, v6}, Lcom/alibaba/alimei/sdk/api/MailApi;->startSyncMails(JIZ)V

    goto/16 :goto_0

    :cond_4
    move v0, v7

    .line 2103
    goto :goto_1

    .line 2113
    :cond_5
    new-instance v0, Lyc;

    const-string/jumbo v1, "basic_SyncMail"

    iget-object v2, p0, Lahi$1;->d:Lahi;

    invoke-static {v2}, Lahi;->a(Lahi;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v8}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2114
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v1

    invoke-interface {v1, v0}, Lya;->a(Lyc;)V

    goto/16 :goto_0
.end method
