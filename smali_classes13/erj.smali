.class public final Lerj;
.super Leqq;
.source "MailSearchPresenter.java"

# interfaces
.implements Leri$a;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Leri$b;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Leri$b;

    .prologue
    .line 43
    invoke-direct {p0}, Leqq;-><init>()V

    .line 44
    iput-object p1, p0, Lerj;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 45
    iput-object p2, p0, Lerj;->b:Leqp$b;

    .line 46
    iget-object v0, p0, Lerj;->b:Leqp$b;

    invoke-interface {v0, p0}, Leqp$b;->setPresenter(Lcjd;)V

    .line 47
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    invoke-virtual {p0}, Lerj;->p()Z

    move-result v3

    if-nez v3, :cond_0

    .line 58
    invoke-virtual {p0}, Lerj;->o()V

    .line 131
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v2, p0, Lerj;->e:Ljava/lang/String;

    .line 63
    .local v2, "searchingKey":Ljava/lang/String;
    new-instance v0, Lerj$1;

    invoke-direct {v0, p0, v2}, Lerj$1;-><init>(Lerj;Ljava/lang/String;)V

    .line 126
    .local v0, "apiEventListener":Lcma;
    iget-object v3, p0, Lerj;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v3, :cond_1

    .line 127
    const-string/jumbo v3, "EVENTBUTLER"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v4, Lcma;

    iget-object v5, p0, Lerj;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v3, v0, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;
    check-cast v0, Lcma;

    .line 129
    .restart local v0    # "apiEventListener":Lcma;
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v1

    .line 130
    .local v1, "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    iget-object v3, p0, Lerj;->e:Ljava/lang/String;

    iget v4, p0, Lerj;->g:I

    const/16 v5, 0x14

    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Ljava/lang/String;IILcma;)V

    goto :goto_0
.end method

.method public final a(Lchr;Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Lchr;
    .param p2, "keyword"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 135
    if-eqz p1, :cond_0

    iget-object v2, p1, Lchr;->d:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lchr;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 136
    :cond_0
    iget-object v2, p0, Lerj;->b:Leqp$b;

    iget-object v3, p0, Lerj;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Leqp$b;->a(Ljava/util/List;)V

    .line 155
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v2, p1, Lchr;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchq;

    .line 141
    .local v1, "searchRecord":Lchq;
    if-eqz v1, :cond_2

    .line 144
    iget v3, p0, Lerj;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lerj;->h:I

    .line 1055
    sget-object v3, Leoc$a;->a:Leoc;

    .line 145
    sget-object v3, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Mail:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-static {v3, v1, p2}, Leoc;->a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Lchq;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v0

    .line 146
    .local v0, "model":Lcom/alibaba/android/search/model/BaseModel;
    iget-object v3, p0, Lerj;->c:Leoe;

    if-eqz v3, :cond_3

    .line 147
    iget-object v3, p0, Lerj;->c:Leoe;

    .line 1084
    iget-object v3, v3, Leoe;->a:Ljava/lang/String;

    .line 147
    invoke-virtual {v0, v3}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 148
    iget-object v3, p0, Lerj;->c:Leoe;

    .line 1092
    iget v3, v3, Leoe;->b:I

    .line 148
    invoke-virtual {v0, v3}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 150
    :cond_3
    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MAIL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 151
    iget-object v3, v1, Lchq;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 152
    iget-object v3, p0, Lerj;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 154
    .end local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    .end local v1    # "searchRecord":Lchq;
    :cond_4
    iget-object v2, p0, Lerj;->b:Leqp$b;

    iget-object v3, p0, Lerj;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Leqp$b;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    invoke-super {p0}, Leqq;->d()V

    .line 52
    iget-object v0, p0, Lerj;->b:Leqp$b;

    iget-object v1, p0, Lerj;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 53
    return-void
.end method
