.class public final Leru;
.super Leqq;
.source "SuggestionGuidePresenter.java"

# interfaces
.implements Lerv$a;


# instance fields
.field m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lerv$b;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Lerv$b;

    .prologue
    .line 48
    invoke-direct {p0}, Leqq;-><init>()V

    .line 46
    const-string/jumbo v0, "0"

    iput-object v0, p0, Leru;->m:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Leru;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 50
    iput-object p2, p0, Leru;->b:Leqp$b;

    .line 51
    iget-object v0, p0, Leru;->b:Leqp$b;

    invoke-interface {v0, p0}, Leqp$b;->setPresenter(Lcjd;)V

    .line 52
    return-void
.end method

.method static synthetic a(Leru;Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObjectList;Ljava/lang/String;)V
    .locals 8
    .param p0, "x0"    # Leru;
    .param p1, "x1"    # Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObjectList;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 42
    .line 1153
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObjectList;->suggestionGuideModels:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObjectList;->suggestionGuideModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1154
    :cond_0
    iget-object v0, p0, Leru;->b:Leqp$b;

    iget-object v1, p0, Leru;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 1155
    :goto_0
    return-void

    .line 1158
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1160
    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObjectList;->suggestionGuideModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObject;

    .line 1161
    if-eqz v0, :cond_2

    .line 2055
    sget-object v1, Leoc$a;->a:Leoc;

    .line 1164
    sget-object v1, Lcom/alibaba/android/search/model/BaseModel$ModelType;->SuggestionGuide:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    .line 2344
    if-eqz v0, :cond_3

    sget-object v4, Lcom/alibaba/android/search/model/BaseModel$ModelType;->SuggestionGuide:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    if-eq v1, v4, :cond_5

    .line 2345
    :cond_3
    const/4 v1, 0x0

    .line 1165
    :goto_2
    iget-object v4, p0, Leru;->c:Leoe;

    if-eqz v4, :cond_4

    .line 1166
    iget-object v4, p0, Leru;->c:Leoe;

    .line 3084
    iget-object v4, v4, Leoe;->a:Ljava/lang/String;

    .line 1166
    invoke-virtual {v1, v4}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 1167
    iget-object v4, p0, Leru;->c:Leoe;

    .line 3092
    iget v4, v4, Leoe;->b:I

    .line 1167
    invoke-virtual {v1, v4}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 1169
    :cond_4
    sget-object v4, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->SUGGESTION_GUIDE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v4}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 1170
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, v0, Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObject;->id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "_"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v0, v0, Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObject;->jumpUrl:Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 1171
    iget v0, p0, Leru;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Leru;->h:I

    .line 1172
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2348
    :cond_5
    new-instance v1, Lcom/alibaba/android/search/model/SuggestionGuideModel;

    invoke-direct {v1, v0, p2}, Lcom/alibaba/android/search/model/SuggestionGuideModel;-><init>(Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObject;Ljava/lang/String;)V

    .line 2349
    invoke-virtual {v1, p2}, Lcom/alibaba/android/search/model/BaseModel;->setKeyword(Ljava/lang/String;)V

    goto :goto_2

    .line 1175
    :cond_6
    iget-object v0, p0, Leru;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1176
    iget-object v0, p0, Leru;->b:Leqp$b;

    iget-object v1, p0, Leru;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    invoke-virtual {p0}, Leru;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Leru;->o()V

    .line 150
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v6, p0, Leru;->e:Ljava/lang/String;

    .line 78
    .local v6, "searchingKey":Ljava/lang/String;
    new-instance v5, Leru$1;

    invoke-direct {v5, p0, v6}, Leru$1;-><init>(Leru;Ljava/lang/String;)V

    .line 148
    .local v5, "apiEventListener":Lcma;
    invoke-virtual {p0}, Leru;->n()V

    .line 149
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v0

    iget-object v1, p0, Leru;->c:Leoe;

    .line 1084
    iget-object v1, v1, Leoe;->a:Ljava/lang/String;

    .line 149
    iget-object v2, p0, Leru;->e:Ljava/lang/String;

    iget-object v3, p0, Leru;->m:Ljava/lang/String;

    const/16 v4, 0x14

    invoke-interface/range {v0 .. v5}, Lenb;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcma;)V

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
    iget-object v0, p0, Leru;->b:Leqp$b;

    iget-object v1, p0, Leru;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 59
    return-void
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Leqq;->m()V

    .line 64
    const-string/jumbo v0, "0"

    iput-object v0, p0, Leru;->m:Ljava/lang/String;

    .line 65
    return-void
.end method
