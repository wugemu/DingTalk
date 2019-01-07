.class Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$1;
.super Ljava/lang/Object;
.source "DefaultTagMailDisplayer.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->loadMoreHistoryMailBackup(Lxv;)V
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
        "Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

.field final synthetic val$listener:Lxv;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;Lxv;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$1;->val$listener:Lxv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$1;->val$listener:Lxv;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$1;->val$listener:Lxv;

    invoke-interface {v0, p1}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 158
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;)V
    .locals 9
    .param p1, "data"    # Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 135
    if-eqz p1, :cond_1

    .line 137
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;->getMailList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v1

    .line 138
    .local v0, "size":I
    :goto_0
    if-gtz v0, :cond_3

    .line 139
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    invoke-static {v2, v1}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->access$002(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;Z)Z

    .line 143
    :goto_1
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$1;->val$listener:Lxv;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$1;->val$listener:Lxv;

    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v2

    invoke-interface {v1, v2}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 146
    :cond_0
    if-lez v0, :cond_1

    .line 147
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;->getMailList()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/restfulapi/data/Mail;

    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getDate()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    sub-long/2addr v4, v6

    invoke-static {v2, v4, v5}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->access$102(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;J)J

    .line 148
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    invoke-static {v1, v8}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->access$200(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;I)V

    .line 151
    .end local v0    # "size":I
    :cond_1
    return-void

    .line 137
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;->getMailList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 141
    .restart local v0    # "size":I
    :cond_3
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    invoke-static {v1, v8}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->access$002(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;Z)Z

    goto :goto_1
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 132
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$1;->onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;)V

    return-void
.end method
