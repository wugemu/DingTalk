.class Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$5;
.super Ljava/lang/Object;
.source "DefaultMailLoader.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->loadFromDatabase(J)V
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
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$5;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 0
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 520
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 504
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$5;->onSuccess(Ljava/util/List;)V

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
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    const/4 v2, 0x0

    .line 507
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 508
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$5;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-static {v1, p1}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->access$700(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;Ljava/util/List;)Z

    move-result v0

    .line 510
    .local v0, "added":Z
    if-eqz v0, :cond_0

    .line 512
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$5;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-static {v1, p1, v2, v2}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->access$100(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 515
    .end local v0    # "added":Z
    :cond_0
    return-void
.end method
