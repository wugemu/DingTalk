.class Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer$1;
.super Ljava/lang/Object;
.source "DefaultFilterMailDisplayer.java"

# interfaces
.implements Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;

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
    .line 300
    .local p1, "addedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .local p2, "changedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .local p3, "deletedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;

    invoke-static {v1, p1, p2, p3}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->access$400(Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    .line 301
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 302
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->notifyDataChanged()V

    .line 304
    :cond_0
    return-void
.end method

.method public onLoadFinished()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 279
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;

    invoke-static {v3}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->access$000(Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v3

    if-nez v3, :cond_0

    .line 280
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;

    invoke-static {v3}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->access$100(Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-result-object v3

    iget-object v2, v3, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailMap:Ljava/util/Map;

    .line 285
    .local v2, "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :goto_0
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 286
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 287
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 288
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 289
    .local v1, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;

    invoke-static {v3, v1}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->access$200(Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    goto :goto_1

    .line 282
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v1    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v2    # "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_0
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;

    invoke-static {v3}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->access$100(Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mFolderMailMaps:Ljava/util/Map;

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;

    invoke-static {v4}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->access$000(Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;)Lcom/alibaba/alimei/sdk/model/FolderModel;

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

    .line 291
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;

    invoke-static {v3}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->access$300(Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;)V

    .line 295
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_2
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;

    invoke-virtual {v3}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->notifyLoadSuccess()V

    .line 297
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
    .line 257
    .local p1, "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;

    invoke-static {v3}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->access$000(Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v3

    if-nez v3, :cond_0

    .line 258
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;

    invoke-static {v3}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->access$100(Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-result-object v3

    iget-object v2, v3, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailMap:Ljava/util/Map;

    .line 263
    .local v2, "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :goto_0
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 264
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 265
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 267
    .local v1, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;

    invoke-static {v3, v1}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->access$200(Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    goto :goto_1

    .line 260
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v1    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v2    # "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_0
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;

    invoke-static {v3}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->access$100(Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mFolderMailMaps:Ljava/util/Map;

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;

    invoke-static {v4}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->access$000(Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;)Lcom/alibaba/alimei/sdk/model/FolderModel;

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

    .line 269
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;

    invoke-static {v3}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->access$300(Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;)V

    .line 273
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_2
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;

    invoke-virtual {v3}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->notifyPreLoadSuccess()V

    .line 275
    return-void
.end method
