.class Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$4;
.super Ljava/lang/Object;
.source "AbsTiledMailDisplayer.java"

# interfaces
.implements Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$4;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

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
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 473
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    move v0, v2

    .line 474
    .local v0, "notEmpty":Z
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    :cond_0
    move v0, v2

    .line 475
    :goto_1
    if-nez v0, :cond_1

    if-eqz p3, :cond_5

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    :cond_1
    move v0, v2

    .line 476
    :goto_2
    if-eqz v0, :cond_2

    .line 477
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$4;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    invoke-static {v1}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->access$000(Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;)V

    .line 478
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$4;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->notifyDataChanged()V

    .line 480
    :cond_2
    return-void

    .end local v0    # "notEmpty":Z
    :cond_3
    move v0, v1

    .line 473
    goto :goto_0

    .restart local v0    # "notEmpty":Z
    :cond_4
    move v0, v1

    .line 474
    goto :goto_1

    :cond_5
    move v0, v1

    .line 475
    goto :goto_2
.end method

.method public onLoadFinished()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 464
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$4;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    invoke-static {v0}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->access$000(Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;)V

    .line 465
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$4;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->notifyLoadSuccess()V

    .line 466
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$4;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->access$102(Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;Z)Z

    .line 467
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$4;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    invoke-static {v0}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->access$200(Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$4;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->refreshMail()V

    .line 470
    :cond_0
    return-void
.end method

.method public onPreloadFinished(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 458
    .local p1, "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$4;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    invoke-static {v0}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->access$000(Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;)V

    .line 459
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$4;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->notifyPreLoadSuccess()V

    .line 460
    return-void
.end method
