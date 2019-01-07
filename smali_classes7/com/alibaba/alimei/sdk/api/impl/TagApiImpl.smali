.class public Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;
.super Lcom/alibaba/alimei/sdk/api/impl/BaseTagApiImpl;
.source "TagApiImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TagApiImpl"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseTagApiImpl;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public addTag(Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "color"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailTagModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 125
    .local p3, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$6;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$6;-><init>(Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 159
    return-void
.end method

.method public hasMoreHistoryMail(JLjava/lang/String;Lxv;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "labelId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p4, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "accountName":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$2;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$2;-><init>(Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;Ljava/lang/String;)V

    .line 73
    .local v1, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v1, p4}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 74
    return-void
.end method

.method public hasMoreHistoryMail(JLjava/lang/String;)Z
    .locals 7
    .param p1, "id"    # J
    .param p3, "labelId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    const-string/jumbo v4, "EmailProvider.db"

    const-string/jumbo v5, "tags"

    invoke-direct {v0, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .local v0, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "has_more_mail"

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 55
    const-string/jumbo v3, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string/jumbo v3, "tag_id"

    invoke-virtual {v0, v3, p3}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    .line 58
    .local v1, "tag":Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
    if-nez v1, :cond_0

    .line 61
    :goto_0
    return v2

    :cond_0
    iget-boolean v2, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mHasMoreMail:Z

    goto :goto_0
.end method

.method public queryAllTags(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailTagModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 40
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;>;"
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "accountName":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$1;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$1;-><init>(Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;Ljava/lang/String;)V

    .line 48
    .local v1, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;>;"
    invoke-virtual {p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 49
    return-void
.end method

.method public queryTagModel(Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "tagId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailTagModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 96
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$4;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$4;-><init>(Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 104
    return-void
.end method

.method public queryTagNewMailCounts(Ljava/lang/String;ZLxv;)V
    .locals 2
    .param p1, "tag_id"    # Ljava/lang/String;
    .param p2, "isConversation"    # Z
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
    .line 256
    .local p3, "listener":Lxv;, "Lxv<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$10;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$10;-><init>(Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 265
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 266
    return-void
.end method

.method public removeTag(Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "tagId"    # Ljava/lang/String;
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
    .line 202
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$8;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$8;-><init>(Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 238
    return-void
.end method

.method public startSyncTags(Z)V
    .locals 2
    .param p1, "fullSync"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 78
    new-instance v0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncTagsCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncTagsCommand;-><init>(Ljava/lang/String;Z)V

    .line 79
    .local v0, "command":Lcom/alibaba/alimei/sdk/task/cmmd/SyncTagsCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncTagsCommand;->executeCommand()V

    .line 80
    return-void
.end method

.method public updateHistoryStatus(Ljava/lang/String;JZLxv;)V
    .locals 8
    .param p1, "tagId"    # Ljava/lang/String;
    .param p2, "timeStamp"    # J
    .param p4, "hasMore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JZ",
            "Lxv",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p5, "listener":Lxv;, "Lxv<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$3;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$3;-><init>(Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 91
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, p5}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 92
    return-void
.end method

.method public updateLastVisitTime(Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "tagId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 242
    .local p2, "listener":Lxv;, "Lxv<Lxv$a;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$9;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$9;-><init>(Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lxv$a;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 252
    return-void
.end method

.method public updateLastestSyncTime(Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "tagId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 112
    .local p2, "listener":Lxv;, "Lxv<Lxv$a;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$5;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$5;-><init>(Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lxv$a;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 121
    return-void
.end method

.method public updateTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .locals 6
    .param p1, "tagId"    # Ljava/lang/String;
    .param p2, "tagName"    # Ljava/lang/String;
    .param p3, "color"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 163
    .local p4, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7;-><init>(Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p4}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 199
    return-void
.end method
