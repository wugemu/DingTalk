.class final Lsz$1;
.super Ljava/lang/Object;
.source "SyncRecentedContactsTask.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsz;->c()Z
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
        "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/contact/datasource/ContactDatasource;

.field final synthetic b:Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

.field final synthetic c:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

.field final synthetic d:Lcom/alibaba/alimei/restfulapi/service/RpcContactService;

.field final synthetic e:Lsz;


# direct methods
.method constructor <init>(Lsz;Lcom/alibaba/alimei/contact/datasource/ContactDatasource;Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;Lcom/alibaba/alimei/restfulapi/service/RpcContactService;)V
    .locals 0
    .param p1, "this$0"    # Lsz;

    .prologue
    .line 94
    iput-object p1, p0, Lsz$1;->e:Lsz;

    iput-object p2, p0, Lsz$1;->a:Lcom/alibaba/alimei/contact/datasource/ContactDatasource;

    iput-object p3, p0, Lsz$1;->b:Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    iput-object p4, p0, Lsz$1;->c:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iput-object p5, p0, Lsz$1;->d:Lcom/alibaba/alimei/restfulapi/service/RpcContactService;

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
    .line 128
    iget-object v0, p0, Lsz$1;->e:Lsz;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Lsz;->a(Lsz;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 129
    const-string/jumbo v0, "sync contact network error--->>"

    invoke-static {v0, p1}, Lzb;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 122
    iget-object v0, p0, Lsz$1;->e:Lsz;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Lsz;->a(Lsz;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 123
    const-string/jumbo v0, "sync contact service error--->>"

    invoke-static {v0, p1}, Lzb;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 94
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;

    .line 1098
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;->getCount()I

    move-result v0

    .line 1099
    if-lez v0, :cond_0

    .line 1101
    iget-object v1, p0, Lsz$1;->e:Lsz;

    iget-object v2, p0, Lsz$1;->e:Lsz;

    invoke-static {v2}, Lsz;->a(Lsz;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Lsz;->a(Lsz;I)I

    .line 1102
    iget-object v0, p0, Lsz$1;->a:Lcom/alibaba/alimei/contact/datasource/ContactDatasource;

    iget-object v1, p0, Lsz$1;->e:Lsz;

    invoke-static {v1}, Lsz;->b(Lsz;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1}, Lcom/alibaba/alimei/contact/datasource/ContactDatasource;->handleSyncRecentedContactResult(JLcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;)V

    .line 1105
    :cond_0
    iget-object v1, p0, Lsz$1;->b:Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    iget-object v0, p0, Lsz$1;->e:Lsz;

    invoke-static {v0}, Lsz;->b(Lsz;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v0, p0, Lsz$1;->c:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;->getSyncKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-interface/range {v1 .. v8}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->updateSyncKey(JJLjava/lang/String;J)I

    .line 1108
    iget-object v0, p0, Lsz$1;->e:Lsz;

    invoke-static {v0, p1}, Lsz;->a(Lsz;Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1110
    iget-object v0, p0, Lsz$1;->e:Lsz;

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;->getSyncKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsz;->a(Lsz;Ljava/lang/String;)Ljava/lang/String;

    .line 1112
    iget-object v0, p0, Lsz$1;->e:Lsz;

    iget-object v1, p0, Lsz$1;->d:Lcom/alibaba/alimei/restfulapi/service/RpcContactService;

    invoke-static {v0, v1}, Lsz;->a(Lsz;Lcom/alibaba/alimei/restfulapi/service/RpcContactService;)V

    .line 94
    :cond_1
    return-void
.end method
