.class Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$5;
.super Ljava/lang/Object;
.source "AbsTiledMailDisplayer.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->getFavoriteList()Ljava/util/List;
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
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$5;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 0
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 512
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 497
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$5;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
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
    .line 500
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$5;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    invoke-static {v0}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->access$300(Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$5;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    invoke-static {v0}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->access$300(Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isAllFavoriteFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$5;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->access$400(Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;Ljava/util/List;)V

    .line 503
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$5;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->notifyDataChanged()V

    .line 504
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 507
    :cond_0
    return-void
.end method
