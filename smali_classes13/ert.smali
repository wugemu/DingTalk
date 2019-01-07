.class public final Lert;
.super Leqq;
.source "SpaceSearchPresenter.java"

# interfaces
.implements Lers$a;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lers$b;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Lers$b;

    .prologue
    .line 44
    invoke-direct {p0}, Leqq;-><init>()V

    .line 45
    iput-object p1, p0, Lert;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 46
    iput-object p2, p0, Lert;->b:Leqp$b;

    .line 47
    iget-object v0, p0, Lert;->b:Leqp$b;

    invoke-interface {v0, p0}, Leqp$b;->setPresenter(Lcjd;)V

    .line 48
    return-void
.end method

.method static synthetic a(Lert;Lchr;Ljava/lang/String;)V
    .locals 8
    .param p0, "x0"    # Lert;
    .param p1, "x1"    # Lchr;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 38
    .line 1135
    if-eqz p1, :cond_0

    iget-object v0, p1, Lchr;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lchr;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1136
    :cond_0
    iget-object v0, p0, Lert;->b:Leqp$b;

    iget-object v1, p0, Lert;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 1137
    :goto_0
    return-void

    .line 1140
    :cond_1
    iget-object v0, p1, Lchr;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchq;

    .line 1141
    if-eqz v0, :cond_2

    .line 1144
    iget v2, p0, Lert;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lert;->h:I

    .line 2055
    sget-object v2, Leoc$a;->a:Leoc;

    .line 1145
    sget-object v2, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Space:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-static {v2, v0, p2}, Leoc;->a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Lchq;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v2

    .line 1146
    iget-object v3, p0, Lert;->c:Leoe;

    if-eqz v3, :cond_3

    .line 1147
    iget-object v3, p0, Lert;->c:Leoe;

    .line 2084
    iget-object v3, v3, Leoe;->a:Ljava/lang/String;

    .line 1147
    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 1148
    iget-object v3, p0, Lert;->c:Leoe;

    .line 2092
    iget v3, v3, Leoe;->b:I

    .line 1148
    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 1150
    :cond_3
    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->SPACE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 1151
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v6, v0, Lchq;->f:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "_"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v0, v0, Lchq;->g:Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 1152
    iget-object v0, p0, Lert;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1155
    :cond_4
    iget-object v0, p0, Lert;->b:Leqp$b;

    iget-object v1, p0, Lert;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    invoke-virtual {p0}, Lert;->p()Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lert;->o()V

    .line 131
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v6, p0, Lert;->e:Ljava/lang/String;

    .line 64
    .local v6, "searchingKey":Ljava/lang/String;
    new-instance v5, Lert$1;

    invoke-direct {v5, p0, v6}, Lert$1;-><init>(Lert;Ljava/lang/String;)V

    .line 126
    .local v5, "apiEventListener":Lcma;
    iget-object v1, p0, Lert;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_1

    .line 127
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcma;

    iget-object v3, p0, Lert;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v1, v5, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "apiEventListener":Lcma;
    check-cast v5, Lcma;

    .line 129
    .restart local v5    # "apiEventListener":Lcma;
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    .line 130
    .local v0, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    iget-object v1, p0, Lert;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lert;->e:Ljava/lang/String;

    iget v3, p0, Lert;->g:I

    const/16 v4, 0x14

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;Ljava/lang/String;IILcma;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    invoke-super {p0}, Leqq;->d()V

    .line 53
    iget-object v0, p0, Lert;->b:Leqp$b;

    iget-object v1, p0, Lert;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 54
    return-void
.end method
