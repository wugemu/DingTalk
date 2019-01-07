.class final Lacc$1$1$1;
.super Ljava/lang/Object;
.source "AlimeiSearchFacede.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacc$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;

.field final synthetic b:Lacc$1$1;


# direct methods
.method constructor <init>(Lacc$1$1;Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;)V
    .locals 0
    .param p1, "this$1"    # Lacc$1$1;

    .prologue
    .line 55
    iput-object p1, p0, Lacc$1$1$1;->b:Lacc$1$1;

    iput-object p2, p0, Lacc$1$1$1;->a:Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 58
    new-instance v3, Lchr;

    invoke-direct {v3}, Lchr;-><init>()V

    .line 59
    .local v3, "searchResult":Lchr;
    iget-object v4, p0, Lacc$1$1$1;->b:Lacc$1$1;

    iget-object v4, v4, Lacc$1$1;->a:Lacc$1;

    iget-object v4, v4, Lacc$1;->b:Ljava/lang/String;

    iput-object v4, v3, Lchr;->b:Ljava/lang/String;

    .line 60
    iget-object v4, p0, Lacc$1$1$1;->b:Lacc$1$1;

    iget-object v4, v4, Lacc$1$1;->a:Lacc$1;

    iget v4, v4, Lacc$1;->d:I

    iget-object v5, p0, Lacc$1$1$1;->a:Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;

    iget-object v5, v5, Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;->mails:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    int-to-long v4, v4

    iput-wide v4, v3, Lchr;->c:J

    .line 62
    const/16 v4, 0x100

    iput v4, v3, Lchr;->a:I

    .line 63
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lchr;->d:Ljava/util/List;

    .line 64
    iget-object v4, p0, Lacc$1$1$1;->a:Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;

    iget-object v4, v4, Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;->mails:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailSearchModel;

    .line 65
    .local v1, "mailSearchModel":Lcom/alibaba/alimei/sdk/model/MailSearchModel;
    if-eqz v1, :cond_0

    .line 68
    new-instance v2, Lchq;

    invoke-direct {v2}, Lchq;-><init>()V

    .line 69
    .local v2, "searchRecord":Lchq;
    const/4 v0, 0x0

    .line 70
    .local v0, "isImportant":Z
    iget-object v5, v1, Lcom/alibaba/alimei/sdk/model/MailSearchModel;->tags:Ljava/util/List;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/alibaba/alimei/sdk/model/MailSearchModel;->tags:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_1

    .line 71
    iget-object v5, v1, Lcom/alibaba/alimei/sdk/model/MailSearchModel;->tags:Ljava/util/List;

    const-string/jumbo v6, "6"

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 73
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lchq;->a:Ljava/lang/String;

    .line 74
    iget-object v5, v1, Lcom/alibaba/alimei/sdk/model/MailSearchModel;->subject:Ljava/lang/String;

    iput-object v5, v2, Lchq;->b:Ljava/lang/String;

    .line 75
    iget-object v5, v1, Lcom/alibaba/alimei/sdk/model/MailSearchModel;->snippet:Ljava/lang/String;

    iput-object v5, v2, Lchq;->c:Ljava/lang/String;

    .line 76
    iget-object v5, v1, Lcom/alibaba/alimei/sdk/model/MailSearchModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v5, v5, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    iput-object v5, v2, Lchq;->d:Ljava/lang/String;

    .line 77
    iget-wide v6, v1, Lcom/alibaba/alimei/sdk/model/MailSearchModel;->timeStamp:J

    iput-wide v6, v2, Lchq;->e:J

    .line 78
    iget-object v5, v1, Lcom/alibaba/alimei/sdk/model/MailSearchModel;->serverId:Ljava/lang/String;

    iput-object v5, v2, Lchq;->g:Ljava/lang/String;

    .line 79
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v2, Lchq;->h:Ljava/util/Map;

    .line 80
    iget-object v5, v2, Lchq;->h:Ljava/util/Map;

    const-string/jumbo v6, "mail_related_count"

    iget v7, v1, Lcom/alibaba/alimei/sdk/model/MailSearchModel;->itemCount:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v5, v2, Lchq;->h:Ljava/util/Map;

    const-string/jumbo v6, "mail_have_read"

    iget-boolean v7, v1, Lcom/alibaba/alimei/sdk/model/MailSearchModel;->isRead:Z

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v5, v2, Lchq;->h:Ljava/util/Map;

    const-string/jumbo v6, "mail_have_attachment"

    iget-boolean v7, v1, Lcom/alibaba/alimei/sdk/model/MailSearchModel;->hasAttachment:Z

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v5, v3, Lchr;->d:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    .end local v0    # "isImportant":Z
    .end local v1    # "mailSearchModel":Lcom/alibaba/alimei/sdk/model/MailSearchModel;
    .end local v2    # "searchRecord":Lchq;
    :cond_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lacc$1$1$1$1;

    invoke-direct {v5, p0, v3}, Lacc$1$1$1$1;-><init>(Lacc$1$1$1;Lchr;)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 94
    return-void
.end method
