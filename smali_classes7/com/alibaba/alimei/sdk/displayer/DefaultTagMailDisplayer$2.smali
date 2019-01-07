.class Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$2;
.super Ljava/lang/Object;
.source "DefaultTagMailDisplayer.java"

# interfaces
.implements Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
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

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 438
    .local p1, "addedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .local p2, "changedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .local p3, "deletedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    invoke-static {v1, p1, p2, p3}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->access$800(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    .line 439
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 440
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->notifyDataChanged()V

    .line 442
    :cond_0
    return-void
.end method

.method public onLoadFinished()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 407
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    invoke-static {v4}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->access$300(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v4

    if-nez v4, :cond_0

    .line 408
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    invoke-static {v4}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->access$400(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-result-object v4

    iget-object v2, v4, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailMap:Ljava/util/Map;

    .line 413
    .local v2, "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :goto_0
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 414
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 415
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 416
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 417
    .local v1, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    invoke-static {v4, v1}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->access$500(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    goto :goto_1

    .line 410
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v1    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v2    # "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_0
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    invoke-static {v4}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->access$400(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mFolderMailMaps:Ljava/util/Map;

    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    invoke-static {v5}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->access$300(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .restart local v2    # "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    goto :goto_0

    .line 419
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_1
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    invoke-static {v4}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->access$600(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;)V

    .line 423
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_2
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    invoke-virtual {v4}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->notifyLoadSuccess()V

    .line 427
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    invoke-static {v4, v8}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->access$200(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;I)V

    .line 430
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    iget-object v4, v4, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 431
    .local v3, "size":I
    sget v4, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->DEFAULT_TAG_MAIL_SIZE:I

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    invoke-static {v4}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->access$700(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 432
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->loadMoreHistoryMail(Lxv;)V

    .line 434
    :cond_3
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    invoke-static {v4, v8}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->access$702(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;Z)Z

    .line 435
    return-void
.end method

.method public onPreloadFinished(Ljava/util/List;)V
    .locals 6
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

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 385
    .local p1, "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    invoke-static {v3}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->access$300(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v3

    if-nez v3, :cond_0

    .line 386
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    invoke-static {v3}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->access$400(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-result-object v3

    iget-object v2, v3, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailMap:Ljava/util/Map;

    .line 391
    .local v2, "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :goto_0
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 392
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 393
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 394
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 395
    .local v1, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    invoke-static {v3, v1}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->access$500(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    goto :goto_1

    .line 388
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v1    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v2    # "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_0
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    invoke-static {v3}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->access$400(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mFolderMailMaps:Ljava/util/Map;

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    invoke-static {v4}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->access$300(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .restart local v2    # "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    goto :goto_0

    .line 397
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    invoke-static {v3}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->access$600(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;)V

    .line 401
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_2
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    invoke-virtual {v3}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->notifyPreLoadSuccess()V

    .line 403
    return-void
.end method
