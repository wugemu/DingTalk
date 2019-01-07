.class final Leru$1;
.super Ljava/lang/Object;
.source "SuggestionGuidePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leru;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObjectList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Leru;


# direct methods
.method constructor <init>(Leru;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Leru;

    .prologue
    .line 78
    iput-object p1, p0, Leru$1;->b:Leru;

    iput-object p2, p0, Leru$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v8, 0x10

    const/4 v0, 0x0

    .line 78
    check-cast p1, Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObjectList;

    .line 3083
    iget-object v1, p0, Leru$1;->b:Leru;

    iget-object v1, v1, Leru;->c:Leoe;

    if-eqz v1, :cond_1

    .line 3084
    iget-object v1, p0, Leru$1;->b:Leru;

    iget-object v1, v1, Leru;->c:Leoe;

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->SUGGESTION_GUIDE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObjectList;->suggestionGuideModels:Ljava/util/List;

    if-nez v3, :cond_5

    :cond_0
    move v3, v0

    .line 3086
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Leru$1;->b:Leru;

    iget-object v6, v6, Leru;->c:Leoe;

    .line 3148
    iget-wide v6, v6, Leoe;->g:J

    .line 3086
    sub-long/2addr v4, v6

    const/4 v6, 0x1

    .line 3084
    invoke-static/range {v1 .. v6}, Letb;->a(Leoe;Ljava/lang/String;IJZ)V

    .line 3089
    :cond_1
    iget-object v1, p0, Leru$1;->b:Leru;

    iget-object v1, v1, Leru;->b:Leqp$b;

    invoke-interface {v1}, Leqp$b;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3093
    iget-object v1, p0, Leru$1;->a:Ljava/lang/String;

    iget-object v2, p0, Leru$1;->b:Leru;

    iget-object v2, v2, Leru;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3098
    if-eqz p1, :cond_2

    :try_start_0
    iget-object v1, p1, Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObjectList;->hasMore:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3099
    :cond_2
    iget-object v1, p0, Leru$1;->b:Leru;

    const-string/jumbo v2, "0"

    .line 4042
    iput-object v2, v1, Leru;->m:Ljava/lang/String;

    .line 3100
    iget-object v1, p0, Leru$1;->b:Leru;

    const/4 v2, 0x0

    iput-boolean v2, v1, Leru;->f:Z

    .line 3105
    :goto_1
    iget-object v1, p0, Leru$1;->b:Leru;

    iget-object v2, p0, Leru$1;->a:Ljava/lang/String;

    invoke-static {v1, p1, v2}, Leru;->a(Leru;Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObjectList;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3110
    iget-object v1, p0, Leru$1;->b:Leru;

    iget-boolean v1, v1, Leru;->f:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Leru$1;->b:Leru;

    iget v1, v1, Leru;->h:I

    if-le v1, v8, :cond_8

    .line 3111
    :cond_3
    iget-object v1, p0, Leru$1;->b:Leru;

    iput v0, v1, Leru;->h:I

    .line 3112
    iget-object v0, p0, Leru$1;->b:Leru;

    invoke-virtual {v0}, Leru;->o()V

    .line 3116
    :cond_4
    :goto_2
    return-void

    .line 3084
    :cond_5
    iget-object v3, p1, Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObjectList;->suggestionGuideModels:Ljava/util/List;

    .line 3085
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 3102
    :cond_6
    :try_start_1
    iget-object v1, p0, Leru$1;->b:Leru;

    iget-object v2, p1, Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObjectList;->nextCursor:Ljava/lang/String;

    .line 5042
    iput-object v2, v1, Leru;->m:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3107
    :catch_0
    move-exception v1

    .line 3108
    :try_start_2
    const-string/jumbo v2, "searchSuggestionGuide"

    invoke-static {v2, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3110
    iget-object v1, p0, Leru$1;->b:Leru;

    iget-boolean v1, v1, Leru;->f:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Leru$1;->b:Leru;

    iget v1, v1, Leru;->h:I

    if-le v1, v8, :cond_9

    .line 3111
    :cond_7
    iget-object v1, p0, Leru$1;->b:Leru;

    iput v0, v1, Leru;->h:I

    .line 3112
    iget-object v0, p0, Leru$1;->b:Leru;

    invoke-virtual {v0}, Leru;->o()V

    goto :goto_2

    .line 3114
    :cond_8
    iget-object v0, p0, Leru$1;->b:Leru;

    invoke-virtual {v0}, Leru;->a()V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Leru$1;->b:Leru;

    invoke-virtual {v0}, Leru;->a()V

    goto :goto_2

    .line 3110
    :catchall_0
    move-exception v1

    iget-object v2, p0, Leru$1;->b:Leru;

    iget-boolean v2, v2, Leru;->f:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Leru$1;->b:Leru;

    iget v2, v2, Leru;->h:I

    if-le v2, v8, :cond_b

    .line 3111
    :cond_a
    iget-object v2, p0, Leru$1;->b:Leru;

    iput v0, v2, Leru;->h:I

    .line 3112
    iget-object v0, p0, Leru$1;->b:Leru;

    invoke-virtual {v0}, Leru;->o()V

    .line 3114
    :goto_3
    throw v1

    :cond_b
    iget-object v0, p0, Leru$1;->b:Leru;

    invoke-virtual {v0}, Leru;->a()V

    goto :goto_3
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 128
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "code"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string/jumbo v1, "message"

    const-string/jumbo v2, "searchSuggestionGuide: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p2, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string/jumbo v1, "type"

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->SUGGESTION_GUIDE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-static {v0}, Letb;->a(Ljava/util/Map;)V

    .line 133
    const-string/jumbo v1, "[Contact]suggestion guide exception %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v6

    .line 1050
    const-string/jumbo v4, "search"

    invoke-static {v4, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v1, p0, Leru$1;->b:Leru;

    iget-object v1, v1, Leru;->c:Leoe;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Leru$1;->b:Leru;

    iget-object v1, v1, Leru;->c:Leoe;

    .line 1168
    iput-object p1, v1, Leoe;->i:Ljava/lang/String;

    .line 137
    iget-object v1, p0, Leru$1;->b:Leru;

    iget-object v1, v1, Leru;->c:Leoe;

    .line 1176
    iput-object p2, v1, Leoe;->j:Ljava/lang/String;

    .line 138
    iget-object v1, p0, Leru$1;->b:Leru;

    iget-object v1, v1, Leru;->c:Leoe;

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->SUGGESTION_GUIDE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v7, p0, Leru$1;->b:Leru;

    iget-object v7, v7, Leru;->c:Leoe;

    .line 2148
    iget-wide v8, v7, Leoe;->g:J

    .line 139
    sub-long/2addr v4, v8

    .line 138
    invoke-static/range {v1 .. v6}, Letb;->a(Leoe;Ljava/lang/String;IJZ)V

    .line 141
    :cond_0
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    const/16 v2, 0x34bf

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 142
    iget-object v1, p0, Leru$1;->b:Leru;

    iget-object v1, v1, Leru;->b:Leqp$b;

    invoke-interface {v1}, Leqp$b;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v1, p0, Leru$1;->b:Leru;

    invoke-virtual {v1}, Leru;->o()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 123
    return-void
.end method
