.class Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$4;
.super Ljava/lang/Object;
.source "AbsDefaultMailDisplayer.java"

# interfaces
.implements Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$4;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "addedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .local p2, "changedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .local p3, "deletedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 497
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    move v0, v1

    .line 498
    .local v0, "notEmpty":Z
    :goto_0
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    if-eqz v0, :cond_6

    :cond_1
    move v0, v1

    .line 499
    :goto_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_3

    :cond_2
    if-eqz v0, :cond_7

    :cond_3
    move v0, v1

    .line 500
    :goto_2
    if-eqz v0, :cond_4

    .line 501
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$4;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    invoke-static {v1}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->access$300(Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;)V

    .line 502
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$4;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->notifyDataChanged()V

    .line 504
    :cond_4
    return-void

    .end local v0    # "notEmpty":Z
    :cond_5
    move v0, v2

    .line 497
    goto :goto_0

    .restart local v0    # "notEmpty":Z
    :cond_6
    move v0, v2

    .line 498
    goto :goto_1

    :cond_7
    move v0, v2

    .line 499
    goto :goto_2
.end method

.method public onLoadFinished()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 484
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$4;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    invoke-static {v1}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->access$100(Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v1

    if-nez v1, :cond_0

    .line 485
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v0

    .line 486
    .local v0, "ds":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$4;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$4;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    invoke-static {v2}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->access$200(Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountModel:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    const/4 v4, 0x5

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxIdAndTypeByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->access$102(Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 488
    .end local v0    # "ds":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$4;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    invoke-static {v1}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->access$300(Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;)V

    .line 489
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$4;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->notifyLoadSuccess()V

    .line 490
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$4;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->access$402(Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;Z)Z

    .line 491
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$4;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    invoke-static {v1}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->access$500(Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 492
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$4;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->refreshMail()V

    .line 494
    :cond_1
    return-void
.end method

.method public onPreloadFinished(Ljava/util/List;)V
    .locals 5
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

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 473
    .local p1, "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$4;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    invoke-static {v1}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->access$100(Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v1

    if-nez v1, :cond_0

    .line 474
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v0

    .line 475
    .local v0, "ds":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$4;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$4;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    invoke-static {v2}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->access$200(Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountModel:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    const/4 v4, 0x5

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxIdAndTypeByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->access$102(Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 477
    .end local v0    # "ds":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$4;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    invoke-static {v1}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->access$300(Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;)V

    .line 478
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$4;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->notifyPreLoadSuccess()V

    .line 479
    return-void
.end method
