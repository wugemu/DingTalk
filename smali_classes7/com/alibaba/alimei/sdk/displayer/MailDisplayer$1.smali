.class Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$1;
.super Ljava/lang/Object;
.source "MailDisplayer.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->executeLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;

    .prologue
    .line 653
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 676
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->notifyLoadError(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 677
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 653
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$1;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
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
    .line 656
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 658
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->access$000(Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;Ljava/util/List;Z)Z

    move-result v0

    .line 659
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 660
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->notifyDataChanged()V

    .line 662
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->notifyLoadSuccess()V

    .line 663
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;

    invoke-static {v1}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->access$100(Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;)V

    .line 672
    .end local v0    # "result":Z
    :goto_0
    return-void

    .line 666
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->canSyncable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 667
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;

    invoke-static {v1}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->access$200(Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;)V

    goto :goto_0

    .line 669
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->notifyLoadSuccess()V

    goto :goto_0
.end method
