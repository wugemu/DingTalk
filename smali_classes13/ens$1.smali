.class final Lens$1;
.super Ljava/lang/Object;
.source "FTSSelfChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lens;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 96
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v3, "selfCheckResultsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/android/searchengine/models/SelfCheckResult;>;>;"
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->n()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 99
    .local v4, "startTime":J
    invoke-static {}, Leue;->a()Leue;

    move-result-object v6

    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->n()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v7}, Leue;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 100
    .local v2, "selfCheckResults":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/searchengine/models/SelfCheckResult;>;"
    if-eqz v2, :cond_0

    .line 101
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->n()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v4

    .line 104
    .local v0, "duration":J
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->n()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "start"

    if-nez v2, :cond_5

    move v6, v7

    :goto_0
    invoke-static {v8, v9, v0, v1, v6}, Lens;->a(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 108
    .end local v0    # "duration":J
    .end local v2    # "selfCheckResults":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/searchengine/models/SelfCheckResult;>;"
    .end local v4    # "startTime":J
    :cond_1
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->o()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 110
    .restart local v4    # "startTime":J
    invoke-static {}, Leue;->a()Leue;

    move-result-object v6

    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->o()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v7}, Leue;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 111
    .restart local v2    # "selfCheckResults":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/searchengine/models/SelfCheckResult;>;"
    if-eqz v2, :cond_2

    .line 112
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->o()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v4

    .line 115
    .restart local v0    # "duration":J
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->o()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "start"

    if-nez v2, :cond_6

    move v6, v7

    :goto_1
    invoke-static {v8, v9, v0, v1, v6}, Lens;->a(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 119
    .end local v0    # "duration":J
    .end local v2    # "selfCheckResults":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/searchengine/models/SelfCheckResult;>;"
    .end local v4    # "startTime":J
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 120
    .restart local v4    # "startTime":J
    invoke-static {}, Leue;->a()Leue;

    move-result-object v6

    const-string/jumbo v8, "0.db"

    invoke-virtual {v6, v8, v7}, Leue;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 121
    .restart local v2    # "selfCheckResults":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/searchengine/models/SelfCheckResult;>;"
    if-eqz v2, :cond_4

    .line 122
    const-string/jumbo v6, "0.db"

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v4

    .line 125
    .restart local v0    # "duration":J
    const-string/jumbo v6, "0.db"

    const-string/jumbo v8, "start"

    if-nez v2, :cond_7

    :goto_2
    invoke-static {v6, v8, v0, v1, v7}, Lens;->a(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 129
    invoke-static {v3}, Lens;->a(Ljava/util/Map;)V

    .line 130
    return-void

    .line 104
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_0

    .line 115
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_1

    .line 125
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_2
.end method
