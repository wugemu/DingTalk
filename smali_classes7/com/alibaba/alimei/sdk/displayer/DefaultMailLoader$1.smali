.class Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$1;
.super Ljava/lang/Object;
.source "DefaultMailLoader.java"

# interfaces
.implements Lyb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->executeLoading(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lyc;)V
    .locals 6
    .param p1, "eventMessage"    # Lyc;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 187
    const-string/jumbo v3, "basic_SendMail"

    iget-object v4, p1, Lyc;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "SendMail1202ErrorCode"

    iget-object v4, p1, Lyc;->a:Ljava/lang/String;

    .line 188
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountName:Ljava/lang/String;

    iget-object v4, p1, Lyc;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    iget-object v3, p1, Lyc;->g:Ljava/lang/Object;

    instance-of v3, v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    if-eqz v3, :cond_0

    .line 197
    iget-object v1, p1, Lyc;->g:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 198
    .local v1, "mm":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-static {v3, v1}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->access$000(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v2

    .line 199
    .local v2, "result":Z
    if-eqz v2, :cond_0

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    .local v0, "changedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-static {v3, v5, v0, v5}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->access$100(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method
