.class public abstract Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;
.super Lcom/alibaba/alimei/framework/api/AbsApiImpl;
.source "BaseMailApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/sdk/api/MailApi;


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/api/AbsApiImpl;-><init>(Ljava/lang/String;)V

    .line 67
    iput-object p2, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->TAG:Ljava/lang/String;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;J)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;
    .param p1, "x1"    # J

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->hasMoreMails(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasMoreMails(J)Z
    .locals 7
    .param p1, "folderId"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "hasMoreMails"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lzb;->g(Ljava/lang/String;)I

    .line 82
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    const-string/jumbo v5, "EmailProvider.db"

    const-string/jumbo v6, "Mailbox"

    invoke-direct {v1, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v5, "hasMoreMessage"

    aput-object v5, v4, v3

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 84
    const-string/jumbo v4, "_id=?"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 87
    .local v0, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-eqz v0, :cond_1

    .line 88
    iget v4, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mHasMoreMessage:I

    if-eqz v4, :cond_0

    .line 90
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 88
    goto :goto_0

    :cond_1
    move v2, v3

    .line 90
    goto :goto_0
.end method


# virtual methods
.method public cancelOutgoingMail(JILxv;)V
    .locals 7
    .param p1, "messageId"    # J
    .param p3, "cancelType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 513
    .local p4, "listener":Lxv;, "Lxv<Lxv$a;>;"
    new-instance v1, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$20;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$20;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;JI)V

    .line 547
    .local v1, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lxv$a;>;"
    invoke-virtual {p0, v1, p4}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 548
    return-void
.end method

.method public changeMailReadTimestamp(Lxv;Ljava/lang/String;J)V
    .locals 7
    .param p2, "mailServerId"    # Ljava/lang/String;
    .param p3, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 590
    .local p1, "listener":Lxv;, "Lxv<Lxv$a;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$24;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$24;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;Ljava/lang/String;J)V

    .line 598
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lxv$a;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 599
    return-void
.end method

.method public varargs changeMailReminder(ZLxv;[Ljava/lang/String;)V
    .locals 2
    .param p1, "isReminder"    # Z
    .param p3, "mailServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 577
    .local p2, "listener":Lxv;, "Lxv<Lxv$a;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$23;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$23;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 585
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lxv$a;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 586
    return-void
.end method

.method public checkMailData(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 752
    .local p1, "listener":Lxv;, "Lxv<Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$33;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$33;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;)V

    .line 759
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 760
    return-void
.end method

.method public clearQuickReplyContent(Lcom/alibaba/alimei/sdk/model/MailDetailModel;Lxv;)V
    .locals 2
    .param p1, "mail"    # Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 721
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$32;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$32;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)V

    .line 729
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 730
    return-void
.end method

.method public deleteLocalMailDraft(Lagz;Lxv;)V
    .locals 2
    .param p1, "draft"    # Lagz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagz;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 564
    .local p2, "listener":Lxv;, "Lxv<Lxv$a;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$22;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$22;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;Lagz;)V

    .line 572
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lxv$a;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 573
    return-void
.end method

.method public hasLocalTagMail(Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 218
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, v1}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 235
    :goto_0
    return-void

    .line 222
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$10;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$10;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    goto :goto_0
.end method

.method public hasMoreHistoryMails(JILxv;)V
    .locals 3
    .param p1, "folderId"    # J
    .param p3, "folderType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p4, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "hasMoreHistoryMails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzb;->g(Ljava/lang/String;)I

    .line 96
    invoke-static {p3}, Laja;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p4, v1}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 108
    :goto_0
    return-void

    .line 100
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$1;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$1;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;J)V

    .line 107
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p4}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    goto :goto_0
.end method

.method public hasMoreHistoryMails(JI)Z
    .locals 3
    .param p1, "folderId"    # J
    .param p3, "folderType"    # I

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "hasMoreHistoryMails"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzb;->g(Ljava/lang/String;)I

    .line 74
    invoke-static {p3}, Laja;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->hasMoreMails(J)Z

    move-result v0

    goto :goto_0
.end method

.method public queryAllLocalFavoriteMails(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 161
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$6;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$6;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;)V

    .line 168
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 169
    return-void
.end method

.method public queryAllLocalMails(JLxv;)V
    .locals 3
    .param p1, "folderId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p3, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$2;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$2;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;J)V

    .line 119
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 120
    return-void
.end method

.method public queryAllLocalMails(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 148
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$5;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$5;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;)V

    .line 156
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 157
    return-void
.end method

.method public queryAllLocalMailsByTag(Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 186
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 198
    :goto_0
    return-void

    .line 190
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$8;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$8;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    goto :goto_0
.end method

.method public queryAllLocalRecentReadMails(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 173
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$7;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$7;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;)V

    .line 180
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 181
    return-void
.end method

.method public queryAllUnloadedMails(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 136
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$4;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$4;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;)V

    .line 143
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 144
    return-void
.end method

.method public queryAttachmentByContentUri(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .locals 6
    .param p1, "contentUri"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 400
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v0

    .line 401
    .local v0, "store":Lxz;
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v1

    .line 402
    .local v1, "userAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-nez v1, :cond_0

    .line 403
    const/4 v2, 0x0

    .line 405
    :goto_0
    return-object v2

    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getAttachmentDatasource()Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    invoke-interface {v2, v4, v5, p1}, Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;->queryAttachmentByConentUri(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    move-result-object v2

    goto :goto_0
.end method

.method public queryAttachmentByContentUri(Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "contentUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 415
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$18;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$18;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 422
    return-void
.end method

.method public queryLocalCommunicateEmails(Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "targetEmail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 683
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$29;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$29;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 691
    return-void
.end method

.method public queryLocalMails(ILxv;)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 124
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$3;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$3;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;I)V

    .line 131
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 132
    return-void
.end method

.method public queryLocalMailsByConversationId(JLjava/lang/String;Lxv;)V
    .locals 7
    .param p1, "folderId"    # J
    .param p3, "conversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p4, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    new-instance v1, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$11;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$11;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;JLjava/lang/String;)V

    .line 247
    .local v1, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-virtual {p0, v1, p4}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 248
    return-void
.end method

.method public queryLocalMailsByTag(JLjava/lang/String;Lxv;)V
    .locals 7
    .param p1, "folderId"    # J
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p4, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x0

    invoke-interface {p4, v0}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 214
    :goto_0
    return-void

    .line 206
    :cond_0
    new-instance v1, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$9;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$9;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;JLjava/lang/String;)V

    .line 213
    .local v1, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-virtual {p0, v1, p4}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    goto :goto_0
.end method

.method public queryMailAttachmentNumber(Ljava/lang/String;Z)I
    .locals 10
    .param p1, "mailServerId"    # Ljava/lang/String;
    .param p2, "includeResourceAttachment"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 376
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v8

    .line 377
    .local v8, "store":Lxz;
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v9

    .line 378
    .local v9, "userAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-nez v9, :cond_1

    .line 391
    :cond_0
    :goto_0
    return v2

    .line 381
    :cond_1
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v4, "EmailProvider.db"

    const-string/jumbo v5, "Message"

    invoke-direct {v0, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .local v0, "messageSelect":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    aput-object v4, v3, v2

    const/4 v4, 0x1

    const-string/jumbo v5, "flagAttachment"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "flagAttach"

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 383
    const-string/jumbo v3, "accountKey"

    invoke-virtual {v9}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string/jumbo v3, "syncServerId"

    invoke-virtual {v0, v3, p1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v7

    check-cast v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 387
    .local v7, "ms":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v7, :cond_0

    iget-boolean v3, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagAttachment:Z

    if-nez v3, :cond_2

    iget-boolean v3, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->hasResourceAttach:Z

    if-eqz v3, :cond_0

    .line 388
    :cond_2
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getAttachmentDatasource()Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;

    move-result-object v1

    .line 389
    .local v1, "ads":Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;
    invoke-virtual {v9}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-wide v4, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    move v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;->queryAttachmentNumber(JJZ)I

    move-result v2

    goto :goto_0
.end method

.method public queryMailAttachmentNumber(Ljava/lang/String;ZLxv;)V
    .locals 2
    .param p1, "mailServerId"    # Ljava/lang/String;
    .param p2, "includeResourceAttachment"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 355
    .local p3, "listener":Lxv;, "Lxv<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$17;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$17;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 369
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 370
    return-void
.end method

.method public queryMailAttachments(Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "mailServerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 289
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$14;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$14;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 306
    return-void
.end method

.method public queryMailById(J)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .locals 7
    .param p1, "mailId"    # J

    .prologue
    .line 265
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v2

    .line 266
    .local v2, "store":Lxz;
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v3

    .line 267
    .local v3, "userAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-nez v3, :cond_0

    .line 268
    const/4 v1, 0x0

    .line 272
    :goto_0
    return-object v1

    .line 270
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v0

    .line 271
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    invoke-interface {v0, v4, v5, p1, p2}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryMessageByMessageId(JJ)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v1

    .line 272
    .local v1, "result":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    goto :goto_0
.end method

.method public queryMailById(JLxv;)V
    .locals 3
    .param p1, "mailId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p3, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$13;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$13;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;J)V

    .line 284
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 285
    return-void
.end method

.method public queryMailDetail(Landroid/content/Context;Landroid/net/Uri;Lxv;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "emailUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 426
    .local p3, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 427
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 430
    :cond_1
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$19;

    invoke-direct {v0, p0, p2, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$19;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Landroid/net/Uri;Landroid/content/Context;)V

    .line 501
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 502
    return-void
.end method

.method public queryMailDetailById(JLxv;)V
    .locals 3
    .param p1, "mailId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p3, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$12;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$12;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;J)V

    .line 259
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 260
    return-void
.end method

.method public queryMailDraft(JLxv;)V
    .locals 3
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Lagz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 552
    .local p3, "listener":Lxv;, "Lxv<Lagz;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$21;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$21;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;J)V

    .line 559
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lagz;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 560
    return-void
.end method

.method public queryMailNormalAttachments(Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "mailServerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 311
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$15;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$15;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 328
    return-void
.end method

.method public queryMailResourceAttachments(Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "mailServerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 333
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$16;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$16;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 350
    return-void
.end method

.method public queryRelatedMails(Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "targetEmail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 696
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$30;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$30;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 704
    return-void
.end method

.method public reportOrTrustSpamMail(Ljava/lang/String;ZLxv;)V
    .locals 0
    .param p1, "serverId"    # Ljava/lang/String;
    .param p2, "report"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 748
    .local p3, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public reportSpam(Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 739
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public saveQuickReplyContent(Lcom/alibaba/alimei/sdk/model/MailDetailModel;Lxv;)V
    .locals 2
    .param p1, "mail"    # Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 708
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$31;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$31;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)V

    .line 716
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 717
    return-void
.end method

.method public searchLocalAttachmentByPage(Ljava/lang/String;IILxv;)V
    .locals 6
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lxv",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;",
            ">;>;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 647
    .local p4, "listener":Lxv;, "Lxv<Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;>;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$27;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$27;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;Ljava/lang/String;II)V

    .line 660
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;>;>;>;"
    invoke-virtual {p0, v0, p4}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 661
    return-void
.end method

.method public searchLocalContactsByPage(Ljava/lang/String;IIILxv;)V
    .locals 7
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "searchType"    # I
    .param p3, "offset"    # I
    .param p4, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lxv",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lagv;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 665
    .local p5, "listener":Lxv;, "Lxv<Ljava/util/Map<Ljava/lang/String;Lagv;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$28;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$28;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;Ljava/lang/String;III)V

    .line 678
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/Map<Ljava/lang/String;Lagv;>;>;"
    invoke-virtual {p0, v0, p5}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 679
    return-void
.end method

.method public searchLocalMail(Ljava/lang/String;ILxv;)V
    .locals 2
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "searchType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lxv",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 604
    .local p3, "listener":Lxv;, "Lxv<Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$25;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$25;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;Ljava/lang/String;I)V

    .line 615
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 616
    return-void
.end method

.method public searchLocalMailByPage(Ljava/lang/String;IIILxv;)V
    .locals 7
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "searchType"    # I
    .param p3, "offset"    # I
    .param p4, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lxv",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 625
    .local p5, "listener":Lxv;, "Lxv<Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$26;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p4

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$26;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;Ljava/lang/String;III)V

    .line 642
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;>;"
    invoke-virtual {p0, v0, p5}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 643
    return-void
.end method

.method public searchLocalMailByPage(Ljava/lang/String;IILxv;)V
    .locals 6
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "searchType"    # I
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lxv",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 620
    .local p4, "listener":Lxv;, "Lxv<Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;>;"
    const/16 v4, 0x50

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->searchLocalMailByPage(Ljava/lang/String;IIILxv;)V

    .line 621
    return-void
.end method
