.class final Lahs$1;
.super Ljava/lang/Object;
.source "MailChangeAllReadStatusTask.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahs;->c()Z
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
        "Lcom/alibaba/alimei/restfulapi/response/data/TokenAllReadResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

.field final synthetic e:Lahs;


# direct methods
.method constructor <init>(Lahs;JJLjava/lang/String;Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)V
    .locals 0
    .param p1, "this$0"    # Lahs;

    .prologue
    .line 165
    iput-object p1, p0, Lahs$1;->e:Lahs;

    iput-wide p2, p0, Lahs$1;->a:J

    iput-wide p4, p0, Lahs$1;->b:J

    iput-object p6, p0, Lahs$1;->c:Ljava/lang/String;

    iput-object p7, p0, Lahs$1;->d:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

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
    .line 212
    const-string/jumbo v0, "MailChangeAllReadStatusTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "accountName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lahs$1;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mailbox serverId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lahs$1;->d:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", displayName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lahs$1;->d:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", leftCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lahs$1;->e:Lahs;

    .line 215
    invoke-static {v2}, Lahs;->c(Lahs;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", last = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lahs$1;->e:Lahs;

    .line 216
    invoke-static {v2}, Lahs;->a(Lahs;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", sync error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-static {v0, v1, p1}, Lzb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    iget-object v0, p0, Lahs$1;->e:Lahs;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lahs;->a(Lahs;I)I

    .line 219
    iget-object v0, p0, Lahs$1;->e:Lahs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lahs;->a(Lahs;Z)Z

    .line 220
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 3
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 200
    const-string/jumbo v0, "MailChangeAllReadStatusTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "accountName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lahs$1;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mailbox serverId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lahs$1;->d:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", displayName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lahs$1;->d:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", leftCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lahs$1;->e:Lahs;

    .line 203
    invoke-static {v2}, Lahs;->c(Lahs;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", last = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lahs$1;->e:Lahs;

    .line 204
    invoke-static {v2}, Lahs;->a(Lahs;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", sync error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-static {v0, v1, p1}, Lzb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    iget-object v0, p0, Lahs$1;->e:Lahs;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lahs;->a(Lahs;I)I

    .line 207
    iget-object v0, p0, Lahs$1;->e:Lahs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lahs;->a(Lahs;Z)Z

    .line 208
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/16 v4, 0x9

    .line 165
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/TokenAllReadResult;

    .line 1168
    iget-object v0, p0, Lahs$1;->e:Lahs;

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/TokenAllReadResult;->getRemaining()I

    move-result v1

    invoke-static {v0, v1}, Lahs;->a(Lahs;I)I

    .line 1169
    iget-object v0, p0, Lahs$1;->e:Lahs;

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/TokenAllReadResult;->getLast()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lahs;->a(Lahs;Ljava/lang/String;)Ljava/lang/String;

    .line 1170
    iget-object v1, p0, Lahs$1;->e:Lahs;

    iget-object v0, p0, Lahs$1;->e:Lahs;

    invoke-static {v0}, Lahs;->a(Lahs;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-static {v1, v0}, Lahs;->a(Lahs;Ljava/lang/String;)Ljava/lang/String;

    .line 1171
    iget-object v0, p0, Lahs$1;->e:Lahs;

    invoke-static {v0}, Lahs;->b(Lahs;)Lahs$a;

    move-result-object v0

    iget-object v1, p0, Lahs$1;->e:Lahs;

    invoke-static {v1}, Lahs;->a(Lahs;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lahs$a;->e:Ljava/lang/String;

    .line 1172
    iget-object v0, p0, Lahs$1;->e:Lahs;

    invoke-static {v0}, Lahs;->c(Lahs;)I

    move-result v0

    if-lez v0, :cond_1

    .line 1173
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    const-string/jumbo v2, "EmailProvider.db"

    const-string/jumbo v3, "SyncMsg"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    const-string/jumbo v1, "data"

    iget-object v2, p0, Lahs$1;->e:Lahs;

    invoke-static {v2}, Lahs;->c(Lahs;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1175
    const-string/jumbo v1, "accountId"

    iget-wide v2, p0, Lahs$1;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    const-string/jumbo v1, "type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    const-string/jumbo v1, "extend_data"

    iget-wide v2, p0, Lahs$1;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 1179
    :goto_1
    return-void

    .line 1170
    :cond_0
    iget-object v0, p0, Lahs$1;->e:Lahs;

    invoke-static {v0}, Lahs;->a(Lahs;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1180
    :cond_1
    new-instance v0, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    const-string/jumbo v2, "EmailProvider.db"

    const-string/jumbo v3, "SyncMsg"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    const-string/jumbo v1, "accountId"

    iget-wide v2, p0, Lahs$1;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    const-string/jumbo v1, "type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    const-string/jumbo v1, "extend_data"

    iget-wide v2, p0, Lahs$1;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 1185
    const-string/jumbo v0, "MailChangeAllReadStatusTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "accountName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lahs$1;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mailbox serverId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lahs$1;->d:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", displayName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lahs$1;->d:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", leftCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lahs$1;->e:Lahs;

    .line 1188
    invoke-static {v2}, Lahs;->c(Lahs;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", last = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lahs$1;->e:Lahs;

    .line 1189
    invoke-static {v2}, Lahs;->a(Lahs;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", sync success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1185
    invoke-static {v0, v1}, Lzb;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
