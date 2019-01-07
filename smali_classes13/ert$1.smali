.class final Lert$1;
.super Ljava/lang/Object;
.source "SpaceSearchPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lert;->a()V
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
        "Lchr;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lert;


# direct methods
.method constructor <init>(Lert;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lert;

    .prologue
    .line 64
    iput-object p1, p0, Lert$1;->b:Lert;

    iput-object p2, p0, Lert$1;->a:Ljava/lang/String;

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

    .line 64
    check-cast p1, Lchr;

    .line 3069
    iget-object v1, p0, Lert$1;->b:Lert;

    iget-object v1, v1, Lert;->c:Leoe;

    if-eqz v1, :cond_1

    .line 3070
    iget-object v1, p0, Lert$1;->b:Lert;

    iget-object v1, v1, Lert;->c:Leoe;

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->SPACE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    iget-object v3, p1, Lchr;->d:Ljava/util/List;

    if-nez v3, :cond_5

    :cond_0
    move v3, v0

    .line 3071
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lert$1;->b:Lert;

    iget-object v6, v6, Lert;->c:Leoe;

    .line 3148
    iget-wide v6, v6, Leoe;->g:J

    .line 3071
    sub-long/2addr v4, v6

    const/4 v6, 0x1

    .line 3070
    invoke-static/range {v1 .. v6}, Letb;->a(Leoe;Ljava/lang/String;IJZ)V

    .line 3074
    :cond_1
    iget-object v1, p0, Lert$1;->b:Lert;

    iget-object v1, v1, Lert;->b:Leqp$b;

    invoke-interface {v1}, Leqp$b;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3078
    iget-object v1, p0, Lert$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lert$1;->b:Lert;

    iget-object v2, v2, Lert;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3083
    if-eqz p1, :cond_2

    :try_start_0
    iget-wide v2, p1, Lchr;->c:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_6

    .line 3084
    :cond_2
    iget-object v1, p0, Lert$1;->b:Lert;

    const/4 v2, 0x0

    iput v2, v1, Lert;->g:I

    .line 3085
    iget-object v1, p0, Lert$1;->b:Lert;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lert;->f:Z

    .line 3090
    :goto_1
    iget-object v1, p0, Lert$1;->b:Lert;

    iget-object v2, p0, Lert$1;->a:Ljava/lang/String;

    invoke-static {v1, p1, v2}, Lert;->a(Lert;Lchr;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3095
    iget-object v1, p0, Lert$1;->b:Lert;

    iget-boolean v1, v1, Lert;->f:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lert$1;->b:Lert;

    iget v1, v1, Lert;->h:I

    if-le v1, v8, :cond_8

    .line 3096
    :cond_3
    iget-object v1, p0, Lert$1;->b:Lert;

    iput v0, v1, Lert;->h:I

    .line 3097
    iget-object v0, p0, Lert$1;->b:Lert;

    invoke-virtual {v0}, Lert;->o()V

    .line 3101
    :cond_4
    :goto_2
    return-void

    .line 3070
    :cond_5
    iget-object v3, p1, Lchr;->d:Ljava/util/List;

    .line 3071
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 3087
    :cond_6
    :try_start_1
    iget-object v1, p0, Lert$1;->b:Lert;

    iget-wide v2, p1, Lchr;->c:J

    long-to-int v2, v2

    iput v2, v1, Lert;->g:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3092
    :catch_0
    move-exception v1

    .line 3093
    :try_start_2
    const-string/jumbo v2, "searchSpaceFile"

    invoke-static {v2, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3095
    iget-object v1, p0, Lert$1;->b:Lert;

    iget-boolean v1, v1, Lert;->f:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lert$1;->b:Lert;

    iget v1, v1, Lert;->h:I

    if-le v1, v8, :cond_9

    .line 3096
    :cond_7
    iget-object v1, p0, Lert$1;->b:Lert;

    iput v0, v1, Lert;->h:I

    .line 3097
    iget-object v0, p0, Lert$1;->b:Lert;

    invoke-virtual {v0}, Lert;->o()V

    goto :goto_2

    .line 3099
    :cond_8
    iget-object v0, p0, Lert$1;->b:Lert;

    invoke-virtual {v0}, Lert;->a()V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lert$1;->b:Lert;

    invoke-virtual {v0}, Lert;->a()V

    goto :goto_2

    .line 3095
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lert$1;->b:Lert;

    iget-boolean v2, v2, Lert;->f:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lert$1;->b:Lert;

    iget v2, v2, Lert;->h:I

    if-le v2, v8, :cond_b

    .line 3096
    :cond_a
    iget-object v2, p0, Lert$1;->b:Lert;

    iput v0, v2, Lert;->h:I

    .line 3097
    iget-object v0, p0, Lert$1;->b:Lert;

    invoke-virtual {v0}, Lert;->o()V

    .line 3099
    :goto_3
    throw v1

    :cond_b
    iget-object v0, p0, Lert$1;->b:Lert;

    invoke-virtual {v0}, Lert;->a()V

    goto :goto_3
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    iget-object v0, p0, Lert$1;->b:Lert;

    iget-object v0, v0, Lert;->c:Leoe;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lert$1;->b:Lert;

    iget-object v0, v0, Lert;->c:Leoe;

    .line 1168
    iput-object p1, v0, Leoe;->i:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lert$1;->b:Lert;

    iget-object v0, v0, Lert;->c:Leoe;

    .line 1176
    iput-object p2, v0, Leoe;->j:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lert$1;->b:Lert;

    iget-object v1, v0, Lert;->c:Leoe;

    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->SPACE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lert$1;->b:Lert;

    iget-object v0, v0, Lert;->c:Leoe;

    .line 2148
    iget-wide v6, v0, Leoe;->g:J

    .line 110
    sub-long/2addr v4, v6

    const/4 v6, 0x1

    .line 109
    invoke-static/range {v1 .. v6}, Letb;->a(Leoe;Ljava/lang/String;IJZ)V

    .line 112
    :cond_0
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const/16 v1, 0x34bf

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 114
    iget-object v0, p0, Lert$1;->b:Lert;

    iget-object v0, v0, Lert;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lert$1;->b:Lert;

    invoke-virtual {v0}, Lert;->o()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "i"    # Ljava/lang/Object;
    .param p2, "i2"    # I

    .prologue
    .line 124
    return-void
.end method
