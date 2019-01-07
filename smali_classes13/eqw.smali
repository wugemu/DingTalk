.class public final Leqw;
.super Leqq;
.source "DingSearchPresenter.java"

# interfaces
.implements Leqv$a;


# instance fields
.field m:I

.field n:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Leqv$b;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Leqv$b;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Leqq;-><init>()V

    .line 45
    iput v0, p0, Leqw;->m:I

    .line 47
    iput-boolean v0, p0, Leqw;->n:Z

    .line 50
    iput-object p1, p0, Leqw;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 51
    iput-object p2, p0, Leqw;->b:Leqp$b;

    .line 52
    iget-object v0, p0, Leqw;->b:Leqp$b;

    invoke-interface {v0, p0}, Leqp$b;->setPresenter(Lcjd;)V

    .line 53
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v5, 0x14

    const/4 v2, 0x0

    .line 71
    iget-object v1, p0, Leqw;->e:Ljava/lang/String;

    .line 72
    .local v1, "searchingKey":Ljava/lang/String;
    iput v2, p0, Leqw;->m:I

    .line 73
    iput-boolean v2, p0, Leqw;->n:Z

    .line 74
    new-instance v0, Leqw$1;

    invoke-direct {v0, p0, v1}, Leqw$1;-><init>(Leqw;Ljava/lang/String;)V

    .line 128
    .local v0, "searchTaskListener":Lcca;
    iget-object v2, p0, Leqw;->d:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 129
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v3, Lcca;

    iget-object v4, p0, Leqw;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v2, v0, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "searchTaskListener":Lcca;
    check-cast v0, Lcca;

    .line 131
    .restart local v0    # "searchTaskListener":Lcca;
    :cond_0
    iget v2, p0, Leqw;->g:I

    iget-object v3, p0, Leqw;->e:Ljava/lang/String;

    invoke-static {v2, v5, v3, v0}, Lenu;->a(IILjava/lang/String;Lcca;)V

    .line 132
    iget v2, p0, Leqw;->g:I

    iget-object v3, p0, Leqw;->e:Ljava/lang/String;

    invoke-static {v2, v5, v3, v0}, Lenu;->d(IILjava/lang/String;Lcca;)V

    .line 133
    return-void
.end method

.method protected final a(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .param p2, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 137
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 138
    :cond_0
    iget-object v3, p0, Leqw;->b:Leqp$b;

    iget-object v4, p0, Leqw;->d:Ljava/util/List;

    invoke-interface {v3, v4}, Leqp$b;->a(Ljava/util/List;)V

    .line 163
    :goto_0
    return-void

    .line 142
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1055
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v4, Leoc$a;->a:Leoc;

    .line 144
    sget-object v4, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Ding:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-static {v4, v0, p2}, Leoc;->a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v2

    .line 145
    .local v2, "dingModel":Lcom/alibaba/android/search/model/BaseModel;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/android/search/model/BaseModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 149
    iget-object v4, p0, Leqw;->c:Leoe;

    if-eqz v4, :cond_3

    .line 150
    iget-object v4, p0, Leqw;->c:Leoe;

    .line 1084
    iget-object v4, v4, Leoe;->a:Ljava/lang/String;

    .line 150
    invoke-virtual {v2, v4}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 151
    iget-object v4, p0, Leqw;->c:Leoe;

    .line 1092
    iget v4, v4, Leoe;->b:I

    .line 151
    invoke-virtual {v2, v4}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 153
    :cond_3
    sget-object v4, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->DING:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v4}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 154
    instance-of v4, v2, Lcom/alibaba/android/search/model/DingModel;

    if-eqz v4, :cond_4

    .line 155
    invoke-virtual {v2}, Lcom/alibaba/android/search/model/BaseModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 158
    :cond_4
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 161
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "dingModel":Lcom/alibaba/android/search/model/BaseModel;
    :cond_5
    iget-object v3, p0, Leqw;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 162
    iget-object v3, p0, Leqw;->b:Leqp$b;

    iget-object v4, p0, Leqw;->d:Ljava/util/List;

    invoke-interface {v3, v4}, Leqp$b;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    invoke-super {p0}, Leqq;->d()V

    .line 58
    iget-object v0, p0, Leqw;->b:Leqp$b;

    iget-object v1, p0, Leqw;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 59
    return-void
.end method

.method public final m()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-super {p0}, Leqq;->m()V

    .line 64
    iput v0, p0, Leqw;->m:I

    .line 65
    iput-boolean v0, p0, Leqw;->n:Z

    .line 66
    return-void
.end method
