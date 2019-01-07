.class public final Lerp;
.super Leqq;
.source "OrgHomepageSearchPresenter.java"

# interfaces
.implements Lero$a;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lero$b;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Lero$b;

    .prologue
    .line 38
    invoke-direct {p0}, Leqq;-><init>()V

    .line 39
    iput-object p1, p0, Lerp;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 40
    iput-object p2, p0, Lerp;->b:Leqp$b;

    .line 41
    iget-object v0, p0, Lerp;->b:Leqp$b;

    invoke-interface {v0, p0}, Leqp$b;->setPresenter(Lcjd;)V

    .line 42
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 52
    invoke-virtual {p0}, Lerp;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lerp;->o()V

    .line 123
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v9, p0, Lerp;->e:Ljava/lang/String;

    .line 58
    .local v9, "searchingKey":Ljava/lang/String;
    new-instance v8, Lerp$1;

    invoke-direct {v8, p0, v9}, Lerp$1;-><init>(Lerp;Ljava/lang/String;)V

    .line 119
    .local v8, "apiEventListener":Lcma;
    iget-object v0, p0, Lerp;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_1

    .line 120
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v1, Lcma;

    iget-object v4, p0, Lerp;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v0, v8, v1, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "apiEventListener":Lcma;
    check-cast v8, Lcma;

    .line 122
    .restart local v8    # "apiEventListener":Lcma;
    :cond_1
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v0

    iget-object v1, p0, Lerp;->e:Ljava/lang/String;

    iget v6, p0, Lerp;->g:I

    const/16 v7, 0x64

    move-object v4, v3

    move v5, v2

    invoke-interface/range {v0 .. v8}, Lenb;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIILcma;)V

    goto :goto_0
.end method

.method public final a(Lepq;Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Lepq;
    .param p2, "keyword"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    if-eqz p1, :cond_0

    iget-object v2, p1, Lepq;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lepq;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 128
    :cond_0
    iget-object v2, p0, Lerp;->b:Leqp$b;

    iget-object v3, p0, Lerp;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Leqp$b;->a(Ljava/util/List;)V

    .line 147
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v2, p1, Lepq;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lepp;

    .line 133
    .local v0, "channelOrgPageSimpleObject":Lepp;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lepp;->a:Lepo;

    if-eqz v3, :cond_2

    .line 136
    iget v3, p0, Lerp;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lerp;->h:I

    .line 1055
    sget-object v3, Leoc$a;->a:Leoc;

    .line 1358
    new-instance v1, Lcom/alibaba/android/search/model/OrgHomepageModel;

    invoke-direct {v1, v0, p2}, Lcom/alibaba/android/search/model/OrgHomepageModel;-><init>(Lepp;Ljava/lang/String;)V

    .line 138
    .local v1, "model":Lcom/alibaba/android/search/model/BaseModel;
    iget-object v3, p0, Lerp;->c:Leoe;

    if-eqz v3, :cond_3

    .line 139
    iget-object v3, p0, Lerp;->c:Leoe;

    .line 2084
    iget-object v3, v3, Leoe;->a:Ljava/lang/String;

    .line 139
    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 140
    iget-object v3, p0, Lerp;->c:Leoe;

    .line 2092
    iget v3, v3, Leoe;->b:I

    .line 140
    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 142
    :cond_3
    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ORG_HOMEPAGE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 143
    iget-object v3, v0, Lepp;->a:Lepo;

    iget-object v3, v3, Lepo;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 144
    iget-object v3, p0, Lerp;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 146
    .end local v0    # "channelOrgPageSimpleObject":Lepp;
    .end local v1    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :cond_4
    iget-object v2, p0, Lerp;->b:Leqp$b;

    iget-object v3, p0, Lerp;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Leqp$b;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    invoke-super {p0}, Leqq;->d()V

    .line 47
    iget-object v0, p0, Lerp;->b:Leqp$b;

    iget-object v1, p0, Lerp;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 48
    return-void
.end method
