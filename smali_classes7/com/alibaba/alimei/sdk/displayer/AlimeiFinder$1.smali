.class Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$1;
.super Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;
.source "AlimeiFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;->startLookup(Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$FinderCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private inboxFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

.field private mUserAccount:Lcom/alibaba/alimei/framework/model/UserAccountModel;

.field final synthetic this$0:Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;

.field final synthetic val$callback:Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$FinderCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;Landroid/os/Handler;Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$FinderCallback;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 51
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$1;->val$callback:Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$FinderCallback;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;-><init>(Landroid/os/Handler;)V

    .line 52
    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$1;->mUserAccount:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 53
    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$1;->inboxFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    return-void
.end method


# virtual methods
.method public doInBackground()Lcom/alibaba/alimei/framework/api/ApiResult;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 73
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;

    invoke-static {v1}, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;->access$100(Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;

    invoke-static {v1}, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;->access$100(Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 74
    :cond_0
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v1

    invoke-virtual {v1}, Lxz;->a()Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$1;->mUserAccount:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 80
    :goto_0
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$1;->mUserAccount:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    if-eqz v1, :cond_1

    .line 81
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$1;->mUserAccount:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v0

    .line 82
    .local v0, "inbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-eqz v0, :cond_1

    .line 83
    invoke-static {v0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->buildAlimeiFolder(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$1;->inboxFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 86
    .end local v0    # "inbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 77
    :cond_2
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;

    invoke-static {v2}, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;->access$100(Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$1;->mUserAccount:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    goto :goto_0
.end method

.method protected getThreadPriority()Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->IMMEDIATE:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    return-object v0
.end method

.method public onPostExecute(Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 3
    .param p1, "result"    # Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;->access$002(Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;Z)Z

    .line 58
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$1;->mUserAccount:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$1;->val$callback:Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$FinderCallback;

    invoke-interface {v0}, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$FinderCallback;->onAccountNotFound()V

    .line 68
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$1;->inboxFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$1;->val$callback:Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$FinderCallback;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$1;->mUserAccount:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$FinderCallback;->onInboxNotFound(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V

    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$1;->val$callback:Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$FinderCallback;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$1;->mUserAccount:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$1;->inboxFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$FinderCallback;->onFoundFinisehd(Lcom/alibaba/alimei/framework/model/UserAccountModel;Lcom/alibaba/alimei/sdk/model/FolderModel;)V

    goto :goto_0
.end method
