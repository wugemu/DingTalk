.class public final Lerh;
.super Leqq;
.source "LightAppSearchPresenter.java"

# interfaces
.implements Lerg$a;


# instance fields
.field m:Ljava/lang/String;

.field n:Z

.field private o:Z

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lerg$b;)V
    .locals 2
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Lerg$b;

    .prologue
    const/4 v1, 0x1

    .line 58
    invoke-direct {p0}, Leqq;-><init>()V

    .line 49
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lerh;->m:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lerh;->o:Z

    .line 53
    iput-boolean v1, p0, Lerh;->n:Z

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lerh;->p:Ljava/util/List;

    .line 59
    iput-object p1, p0, Lerh;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 60
    iput-object p2, p0, Lerh;->b:Leqp$b;

    .line 61
    iget-object v0, p0, Lerh;->b:Leqp$b;

    invoke-interface {v0, p0}, Leqp$b;->setPresenter(Lcjd;)V

    .line 1078
    iget-object v0, p0, Lerh;->p:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1079
    iget-object v0, p0, Lerh;->p:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lerh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lerh;"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "searchTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lerh;->p:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lerh;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    iget-object v0, p0, Lerh;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    :cond_0
    return-object p0
.end method

.method public final a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    invoke-virtual {p0}, Lerh;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lerh;->o()V

    .line 211
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v7, p0, Lerh;->e:Ljava/lang/String;

    .line 133
    .local v7, "searchingKey":Ljava/lang/String;
    new-instance v6, Lerh$1;

    invoke-direct {v6, p0, v7}, Lerh$1;-><init>(Lerh;Ljava/lang/String;)V

    .line 206
    .local v6, "apiEventListener":Lcma;
    iget-object v0, p0, Lerh;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_1

    .line 207
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v1, Lcma;

    iget-object v2, p0, Lerh;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v0, v6, v1, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "apiEventListener":Lcma;
    check-cast v6, Lcma;

    .line 210
    .restart local v6    # "apiEventListener":Lcma;
    :cond_1
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v0

    iget-object v1, p0, Lerh;->c:Leoe;

    .line 2084
    iget-object v1, v1, Leoe;->a:Ljava/lang/String;

    .line 210
    iget-object v2, p0, Lerh;->e:Ljava/lang/String;

    iget-object v3, p0, Lerh;->p:Ljava/util/List;

    iget-object v4, p0, Lerh;->m:Ljava/lang/String;

    const/16 v5, 0x14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface/range {v0 .. v6}, Lenb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Lcma;)V

    goto :goto_0
.end method

.method public final a(Lepy;Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Lepy;
    .param p2, "keyword"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 215
    if-eqz p1, :cond_0

    iget-object v2, p1, Lepy;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lepy;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 216
    :cond_0
    iget-object v2, p0, Lerh;->b:Leqp$b;

    iget-object v3, p0, Lerh;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Leqp$b;->a(Ljava/util/List;)V

    .line 235
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v2, p1, Lepy;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lepx;

    .line 221
    .local v1, "searchMicroAppObject":Lepx;
    if-eqz v1, :cond_2

    .line 224
    iget v3, p0, Lerh;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lerh;->h:I

    .line 3055
    sget-object v3, Leoc$a;->a:Leoc;

    .line 3354
    new-instance v0, Lcom/alibaba/android/search/model/LightAppModel;

    invoke-direct {v0, v1, p2}, Lcom/alibaba/android/search/model/LightAppModel;-><init>(Lepx;Ljava/lang/String;)V

    .line 226
    .local v0, "model":Lcom/alibaba/android/search/model/BaseModel;
    iget-object v3, p0, Lerh;->c:Leoe;

    if-eqz v3, :cond_3

    .line 227
    iget-object v3, p0, Lerh;->c:Leoe;

    .line 4084
    iget-object v3, v3, Leoe;->a:Ljava/lang/String;

    .line 227
    invoke-virtual {v0, v3}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 228
    iget-object v3, p0, Lerh;->c:Leoe;

    .line 4092
    iget v3, v3, Leoe;->b:I

    .line 228
    invoke-virtual {v0, v3}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 230
    :cond_3
    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->LIGHT_APP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 231
    iget-object v3, v1, Lepx;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 232
    iget-object v3, p0, Lerh;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 234
    .end local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    .end local v1    # "searchMicroAppObject":Lepx;
    :cond_4
    iget-object v2, p0, Lerh;->b:Leqp$b;

    iget-object v3, p0, Lerh;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Leqp$b;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "isMore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    if-eqz p2, :cond_4

    .line 85
    iget-object v0, p0, Lerh;->c:Leoe;

    .line 1148
    iget-wide v0, v0, Leoe;->g:J

    .line 85
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lerh;->c:Leoe;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1152
    iput-wide v2, v0, Leoe;->g:J

    .line 89
    :cond_0
    iget-boolean v0, p0, Lerh;->o:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lerh;->n:Z

    if-eqz v0, :cond_2

    .line 1238
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lerh;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 89
    :goto_0
    if-eqz v0, :cond_2

    .line 90
    :cond_1
    invoke-virtual {p0}, Lerh;->n()V

    .line 92
    :cond_2
    invoke-virtual {p0}, Lerh;->a()V

    .line 105
    :goto_1
    return-void

    .line 1238
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 96
    :cond_4
    iput-object p1, p0, Lerh;->e:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lerh;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 98
    invoke-virtual {p0}, Lerh;->m()V

    .line 99
    invoke-virtual {p0}, Lerh;->n()V

    .line 100
    invoke-virtual {p0}, Lerh;->a()V

    goto :goto_1

    .line 102
    :cond_5
    invoke-virtual {p0}, Lerh;->d()V

    .line 103
    invoke-virtual {p0}, Lerh;->o()V

    goto :goto_1
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 110
    invoke-super {p0}, Leqq;->d()V

    .line 111
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lerh;->m:Ljava/lang/String;

    .line 112
    iput-boolean v1, p0, Lerh;->o:Z

    .line 113
    iput-boolean v1, p0, Lerh;->n:Z

    .line 114
    iget-object v0, p0, Lerh;->b:Leqp$b;

    iget-object v1, p0, Lerh;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 115
    return-void
.end method

.method public final m()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 119
    invoke-super {p0}, Leqq;->m()V

    .line 120
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lerh;->m:Ljava/lang/String;

    .line 121
    iput-boolean v1, p0, Lerh;->o:Z

    .line 122
    iput-boolean v1, p0, Lerh;->n:Z

    .line 123
    return-void
.end method
