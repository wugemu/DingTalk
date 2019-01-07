.class Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$1;
.super Ljava/lang/Object;
.source "MailTagMailDisplayer.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->loadMoreHistoryMail(Lxv;)V
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
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

.field final synthetic val$listener:Lxv;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;Lxv;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$1;->val$listener:Lxv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 230
    const-string/jumbo v0, "MailTagMailDisplayer"

    const-string/jumbo v1, "loadMoreHistoryMail fail"

    invoke-static {v0, v1, p1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$1;->val$listener:Lxv;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$1;->val$listener:Lxv;

    invoke-interface {v0, p1}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 234
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;)V
    .locals 14
    .param p1, "data"    # Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 197
    if-eqz p1, :cond_9

    .line 199
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-static {v6}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->access$000(Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;)Lcom/alibaba/alimei/sdk/model/MailTagModel;

    move-result-object v6

    if-nez v6, :cond_0

    .line 200
    const-string/jumbo v6, "MailTagMailDisplayer"

    const-string/jumbo v7, "loadMoreMailHistory result do not handle, for currentTag is null"

    invoke-static {v6, v7}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;->getMailList()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_5

    move v4, v7

    .line 204
    .local v4, "size":I
    :goto_1
    sget-object v6, Lagy;->a:Lagy;

    .line 1030
    iget v5, v6, Lagy;->b:I

    .line 205
    .local v5, "windowSize":I
    const/4 v0, 0x0

    .line 206
    .local v0, "hasMoreHistroyMails":Z
    if-lt v4, v5, :cond_1

    .line 207
    const/4 v0, 0x1

    .line 209
    :cond_1
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-static {v6}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->access$000(Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;)Lcom/alibaba/alimei/sdk/model/MailTagModel;

    move-result-object v6

    iget-boolean v6, v6, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mHasMoreMail:Z

    if-eq v6, v0, :cond_6

    move v1, v8

    .line 210
    .local v1, "isChanged":Z
    :goto_2
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-static {v6}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->access$000(Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;)Lcom/alibaba/alimei/sdk/model/MailTagModel;

    move-result-object v6

    iget-wide v2, v6, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mOldestTimeStamp:J

    .line 211
    .local v2, "historyEndTime":J
    if-lez v4, :cond_2

    .line 212
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;->getMailList()Ljava/util/List;

    move-result-object v6

    add-int/lit8 v9, v4, -0x1

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/restfulapi/data/Mail;

    invoke-virtual {v6}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getDate()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    sub-long v2, v10, v12

    .line 213
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-static {v6}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->access$000(Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;)Lcom/alibaba/alimei/sdk/model/MailTagModel;

    move-result-object v6

    iget-wide v10, v6, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mOldestTimeStamp:J

    cmp-long v6, v10, v2

    if-eqz v6, :cond_7

    :goto_3
    or-int/2addr v1, v8

    .line 214
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-static {v6}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->access$000(Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;)Lcom/alibaba/alimei/sdk/model/MailTagModel;

    move-result-object v6

    iput-wide v2, v6, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mOldestTimeStamp:J

    .line 216
    :cond_2
    if-eqz v1, :cond_3

    .line 217
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-static {v7}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->access$000(Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;)Lcom/alibaba/alimei/sdk/model/MailTagModel;

    move-result-object v7

    iget-object v7, v7, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    invoke-static {v6, v7, v2, v3, v0}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->access$100(Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;Ljava/lang/String;JZ)V

    .line 219
    :cond_3
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$1;->val$listener:Lxv;

    if-eqz v6, :cond_4

    .line 220
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$1;->val$listener:Lxv;

    if-eqz v0, :cond_8

    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v6

    :goto_4
    invoke-interface {v7, v6}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 222
    :cond_4
    const-string/jumbo v6, "MailTagMailDisplayer"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "loadMoreMailHistory has handle, isChanged="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", hasMoreHistoryMails="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 203
    .end local v0    # "hasMoreHistroyMails":Z
    .end local v1    # "isChanged":Z
    .end local v2    # "historyEndTime":J
    .end local v4    # "size":I
    .end local v5    # "windowSize":I
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;->getMailList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    goto/16 :goto_1

    .restart local v0    # "hasMoreHistroyMails":Z
    .restart local v4    # "size":I
    .restart local v5    # "windowSize":I
    :cond_6
    move v1, v7

    .line 209
    goto/16 :goto_2

    .restart local v1    # "isChanged":Z
    .restart local v2    # "historyEndTime":J
    :cond_7
    move v8, v7

    .line 213
    goto :goto_3

    .line 220
    :cond_8
    const/4 v6, 0x0

    goto :goto_4

    .line 224
    .end local v0    # "hasMoreHistroyMails":Z
    .end local v1    # "isChanged":Z
    .end local v2    # "historyEndTime":J
    .end local v4    # "size":I
    .end local v5    # "windowSize":I
    :cond_9
    const-string/jumbo v6, "MailTagMailDisplayer"

    const-string/jumbo v7, "loadMoreMailHistory result data is empty"

    invoke-static {v6, v7}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 194
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$1;->onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;)V

    return-void
.end method
