.class public abstract Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;
.super Lcom/alibaba/alimei/sdk/displayer/Displayer;
.source "AbsMailDisplayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/sdk/displayer/Displayer",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
        ">;"
    }
.end annotation


# instance fields
.field protected mContentObserver:Lxm;

.field protected mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

.field protected mDisplayerType:Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/Displayer;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method public varargs abstract addMailTag(ZLjava/lang/String;Lxv;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract changeCalendarStatus(Ljava/lang/String;Ljava/lang/String;ILxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation
.end method

.method public varargs abstract changeMailFavorite(ZZLxv;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public varargs abstract changeMailReadStatus(ZZLxv;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public varargs abstract changeMailReminder(ZZLxv;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public varargs abstract deleteMailByServerId(ZLxv;[Ljava/lang/String;)V
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
.end method

.method protected declared-synchronized downloadMailContent(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 79
    .local p1, "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 80
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 81
    .local v0, "mailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 79
    .end local v0    # "mailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 84
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public abstract getConversation(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
.end method

.method public abstract getConversationMailList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end method

.method public getCurrentFolder()Lcom/alibaba/alimei/sdk/model/FolderModel;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    return-object v0
.end method

.method public abstract getNextMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
.end method

.method protected getObserver()Lxm;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$1;-><init>(Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;)V

    .line 56
    .local v0, "observer":Lxm;
    return-object v0
.end method

.method public abstract getPreviousMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
.end method

.method public abstract getUnreadMailList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract handleMailGroup(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V
.end method

.method public loadFolderFromLocal(Ljava/lang/String;Lxv;)V
    .locals 1
    .param p1, "mailServerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Lafv;->d(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alibaba/alimei/sdk/api/FolderApi;->queryFolderByMailServerId(Ljava/lang/String;Lxv;)V

    .line 122
    return-void
.end method

.method public loadMailDetailFromLocal(Landroid/content/Context;Landroid/net/Uri;Lxv;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileUri"    # Landroid/net/Uri;
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

    .prologue
    .line 117
    .local p3, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryMailDetail(Landroid/content/Context;Landroid/net/Uri;Lxv;)V

    .line 118
    return-void
.end method

.method public loadMailDetailFromLocal(Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 110
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryMailDetail(Ljava/lang/String;ZLxv;)V

    .line 111
    return-void
.end method

.method public abstract loadMailsWithTag(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadMoreHistoryMail(Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation
.end method

.method public varargs abstract moveMailToNewFolder(ZLcom/alibaba/alimei/sdk/model/FolderModel;Lxv;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public queryAllUnloadedMails(Lxv;)V
    .locals 1
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

    .prologue
    .line 91
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryAllUnloadedMails(Lxv;)V

    .line 92
    return-void
.end method

.method public queryAttchmentByContentUri(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .locals 1
    .param p1, "contentUri"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryAttachmentByContentUri(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    move-result-object v0

    return-object v0
.end method

.method public queryLocalMail(ILxv;)V
    .locals 1
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

    .prologue
    .line 147
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryLocalMails(ILxv;)V

    .line 148
    return-void
.end method

.method public queryMailHtmlBodyFromServer(Ljava/lang/String;Lxv;)V
    .locals 1
    .param p1, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alibaba/alimei/sdk/api/MailApi;->loadMailHtmlBodyFromServer(Ljava/lang/String;Lxv;)V

    .line 101
    return-void
.end method

.method public querySearchMailFromServer(Ljava/lang/String;Lxv;)V
    .locals 1
    .param p1, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alibaba/alimei/sdk/api/MailApi;->loadSearchMailFromServer(Ljava/lang/String;Lxv;)V

    .line 126
    return-void
.end method

.method public abstract refreshMail()V
.end method

.method public varargs abstract removeMailTag(ZLjava/lang/String;Lxv;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public setMailDisplayerType(Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;)V
    .locals 0
    .param p1, "type"    # Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;->mDisplayerType:Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;

    .line 61
    return-void
.end method

.method public abstract setSessionFilter(Lcom/alibaba/alimei/sdk/displayer/filter/ISessionFilter;)V
.end method

.method public abstract switchToFolder(Lcom/alibaba/alimei/sdk/model/FolderModel;Z)V
.end method

.method public updateMailReadTimestamp(Lxv;Ljava/lang/String;)V
    .locals 4
    .param p2, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 138
    .local p1, "listener":Lxv;, "Lxv<Lxv$a;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, p1, p2, v2, v3}, Lcom/alibaba/alimei/sdk/api/MailApi;->changeMailReadTimestamp(Lxv;Ljava/lang/String;J)V

    .line 139
    return-void
.end method
