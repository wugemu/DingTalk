.class Lcom/alibaba/alimei/sdk/displayer/TagDisplayer$1;
.super Ljava/lang/Object;
.source "TagDisplayer.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->loadTagsFromLocal(Z)V
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
        "Lcom/alibaba/alimei/sdk/model/MailTagModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;

.field final synthetic val$fromServer:Z

.field final synthetic val$tagApi:Lcom/alibaba/alimei/sdk/api/TagApi;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;ZLcom/alibaba/alimei/sdk/api/TagApi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;

    iput-boolean p2, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer$1;->val$fromServer:Z

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer$1;->val$tagApi:Lcom/alibaba/alimei/sdk/api/TagApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 85
    const-string/jumbo v0, "TagDisplayer"

    invoke-static {v0, p1}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 61
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer$1;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailTagModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 65
    .local p1, "tagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;

    invoke-static {v1}, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->access$000(Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 66
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;

    invoke-static {v1}, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->access$100(Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 67
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .line 69
    .local v0, "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;

    invoke-static {v2}, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->access$000(Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;

    invoke-static {v2}, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->access$000(Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;

    invoke-static {v2}, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->access$100(Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    .end local v0    # "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;

    invoke-static {v1}, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->access$200(Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;)V

    .line 75
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->notifyLoadSuccess()V

    .line 78
    :cond_2
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer$1;->val$fromServer:Z

    if-eqz v1, :cond_3

    .line 79
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer$1;->val$tagApi:Lcom/alibaba/alimei/sdk/api/TagApi;

    invoke-static {v1, v2}, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->access$300(Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;Lcom/alibaba/alimei/sdk/api/TagApi;)V

    .line 81
    :cond_3
    return-void
.end method
