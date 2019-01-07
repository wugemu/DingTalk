.class Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$3;
.super Ljava/lang/Object;
.source "MailTagMailDisplayer.java"

# interfaces
.implements Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    .prologue
    .line 674
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

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
    .line 723
    .local p1, "addedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .local p2, "changedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .local p3, "deletedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-static {v1, p1, p2, p3}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->access$400(Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    .line 724
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 725
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->notifyDataChanged()V

    .line 727
    :cond_0
    return-void
.end method

.method public onLoadFinished()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 697
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    iget-object v4, v4, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v2, v4, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailMap:Ljava/util/Map;

    .line 698
    .local v2, "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 699
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    iget-object v5, v4, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    monitor-enter v5

    .line 700
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 701
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 702
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 703
    .local v1, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-static {v4, v1}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->access$200(Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    goto :goto_0

    .line 705
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v1    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 706
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-virtual {v4}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->fillTagMails()V

    .line 710
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_1
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-virtual {v4}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->notifyLoadSuccess()V

    .line 714
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    iget-object v4, v4, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 715
    .local v3, "size":I
    sget v4, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->DEFAULT_TAG_MAIL_SIZE:I

    if-ge v3, v4, :cond_2

    .line 716
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-virtual {v4}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->refreshMail()V

    .line 718
    :cond_2
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->access$302(Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;Z)Z

    .line 719
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
    .line 678
    .local p1, "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v2, v3, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailMap:Ljava/util/Map;

    .line 679
    .local v2, "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 680
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    iget-object v4, v3, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    monitor-enter v4

    .line 681
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 682
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 683
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 684
    .local v1, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-static {v3, v1}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->access$200(Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    goto :goto_0

    .line 686
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v1    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 687
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-virtual {v3}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->fillTagMails()V

    .line 691
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-virtual {v3}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->notifyPreLoadSuccess()V

    .line 693
    return-void
.end method
